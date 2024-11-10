package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.controller.common.WriteWord;
import com.ognice.domain.*;
import com.ognice.service.*;
import org.apache.commons.io.FileUtils;
import org.apache.poi.hwpf.HWPFDocument;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/**
 * @author ..(952396697 @ qq.com)<br>
 * @version 1.0
 * @date 2019-03-16
 * 申请书 controller
 */
@Controller
@RequestMapping(value = "/admin/projectapply")
public class AdminProjectapplyController {
    @Resource
    private IProjectapplyService projectapplyService;
    @Resource
    private IHighapplyService highapplyService;

    @Resource
    private IMidapplyService midapplyService;
    @Resource
    private IEndapplyService endapplyService;

    @Resource
    private IChangelogService changelogService;

    @Resource
    private IYjslogService yjslogService;
    @Resource
    private ICglogService cglogService;

    @Resource
    private IReportService reportService;
    @Resource
    private IProjectService projectService;
    @Resource
    private IPreuserService preuserService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Projectapply searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = projectapplyService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        return "admin/projectapply/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Projectapply record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            String msg = projectapplyService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/projectapply";
            }
            model.addAttribute("msg", msg);
        }
        if (record.getProjectid() != null) {
            Project project = projectService.getProjectById(record.getProjectid());
            record.setProjectname(project.getName());

            record.setTea(project.getTeaname());
        }
        model.addAttribute("projects", projectService.all());
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        Preuser preuser = (Preuser) request.getSession().getAttribute("loginUser");
        if (preuser != null) {
            record.setPreuserid(preuser.getId());
            record.setPreusername(preuser.getName());
            record.setClazz1(preuser.getClazzname());
            record.setGrade1(preuser.getGrade());
            record.setPro1(preuser.getProname());

        }
        model.addAttribute("preusers", preuserService.all());
        model.addAttribute("record", record);
        return "admin/projectapply/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Projectapply record) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {

            Project projectById = projectService.getProjectById(record.getProjectid());
            if (record.getProjectid() != null) {
                record.setProjectname(projectById.getName());

            }
            if (record.getPreuserid() != null) {
                record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
            }
            if (record.getStatus() == 1) {
                projectById.setProcess(1);
                projectById.setStatus(1);
                if (projectById.getTeaid() == null) {
                    projectById.setStatus(2);
                }
                projectService.update(projectById);
            }
            String msg = projectapplyService.save(record);

            if (msg.equals("添加成功")) {
                return "redirect:/admin/project";
            }
            request.setAttribute("msg", msg);
        }
        return "admin/projectapply/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Projectapply record = projectapplyService.getProjectapplyById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("preusers", preuserService.all());
        return "admin/projectapply/form";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Projectapply record = projectapplyService.getProjectapplyById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("preusers", preuserService.all());
        return "admin/projectapply/form";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Projectapply record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {

        }
        Project projectById = projectService.getProjectById(record.getProjectid());
        if (record.getProjectid() != null) {
            record.setProjectname(projectById.getName());
        }
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        if (record.getStatus() == 1) {
            projectById.setProcess(1);
            projectById.setStatus(1);
            if (projectById.getTeaid() == null) {
                projectById.setStatus(2);
            }
            projectService.update(projectById);
        }
        projectapplyService.update(record);
        return "redirect:/admin/project";
    }


    @RequestMapping(value = "/download")
    public ResponseEntity<byte[]> download(HttpServletRequest request, ModelMap model, Integer projectid) throws IOException {
        String filePath = projectid + "_" + System.currentTimeMillis();
        createdFileOne(request.getSession().getServletContext().getRealPath("files/" + filePath), filePath, request, projectid);


        try {
            File file = new File(request.getSession().getServletContext().getRealPath("files/" + filePath) + "2");
            if (!file.exists()) {
                file.mkdir();
            }
            zip(request.getSession().getServletContext().getRealPath("files/" + filePath), request.getSession().getServletContext().getRealPath("files/" + filePath) + "2/" + filePath + ".zip");
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        HttpHeaders headers = new HttpHeaders();
        //下载显示的文件名，解决中文名称乱码问题
        //通知浏览器以attachment（下载方式）打开图片
        headers.setContentDispositionFormData("attachment", filePath + ".zip");
        //application/octet-stream ： 二进制流数据（最常见的文件下载）。
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        File file = new File(request.getSession().getServletContext().getRealPath("files/" + filePath) + "2/" + filePath + ".zip");

        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),
                headers, HttpStatus.CREATED);


    }

    @RequestMapping(value = "/downloadBatch")
    public ResponseEntity<byte[]> downloadBatch(HttpServletRequest request, ModelMap model, String ids) throws IOException {
        String filePath2 = System.currentTimeMillis() + "";
        String allPath = request.getSession().getServletContext().getRealPath("files/" + filePath2);
        File file2 = new File(allPath);
        if (!file2.exists()) {
            file2.mkdir();
        }
        for (String id : ids.split(",")) {
            try {


                Integer projectid = Integer.valueOf(id);
                String filePath = projectid + "_" + filePath2;

                createdFileOne(allPath + "/" + filePath, filePath, request, projectid);


                File file = new File(allPath + "2");
                if (!file.exists()) {
                    file.mkdir();
                }
                zip(allPath, allPath + "2/" + filePath2 + ".zip");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }


        HttpHeaders headers = new HttpHeaders();
        //下载显示的文件名，解决中文名称乱码问题
        //通知浏览器以attachment（下载方式）打开图片
        headers.setContentDispositionFormData("attachment", filePath2 + ".zip");
        //application/octet-stream ： 二进制流数据（最常见的文件下载）。
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        File file = new File(allPath + "2/" + filePath2 + ".zip");

        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),
                headers, HttpStatus.CREATED);


    }


    public static void zip(String inputFileName, String zipFileName) throws Exception {
        zip(zipFileName, new File(inputFileName));
    }

    private static void zip(String zipFileName, File inputFile) throws Exception {
        ZipOutputStream out = new ZipOutputStream(new FileOutputStream(zipFileName));
        zip(out, inputFile, "");
        out.close();
    }

    private static void zip(ZipOutputStream out, File f, String base) throws Exception {
        if (f.isDirectory()) { // 判断是否为目录
            File[] fl = f.listFiles();
            out.putNextEntry(new ZipEntry(base + "/"));
            base = base.length() == 0 ? "" : base + "/";
            for (int i = 0; i < fl.length; i++) {
                zip(out, fl[i], base + fl[i].getName());
            }
        } else { // 压缩目录中的所有文件
            out.putNextEntry(new ZipEntry(base));
            FileInputStream in = new FileInputStream(f);
            int b;
            while ((b = in.read()) != -1) {
                out.write(b);
            }
            in.close();
        }
    }


    private void createdFileOne(String dir, String filePath, HttpServletRequest request, Integer projectid) {
        Project project = projectService.getProjectById(projectid);
        if (project.getType() > 0) {
            Highapply record = highapplyService.getHighapplyByProId(projectid);
            if (record != null) {
                String url = "";

                String staticPath =
                        request.getSession().getServletContext().getRealPath("files/highapply.doc");
                String filename = "apply" + filePath + ".doc";
                String fileurl = dir + "/" + filename;

                createFile(staticPath, fileurl, dir, record.getClass(), record);
            }
        } else {
            Projectapply record = projectapplyService.getProjectapplyByProjectId(projectid);
            if (record != null) {
                String url = "";

                String staticPath =
                        request.getSession().getServletContext().getRealPath("files/projectapply.doc");
                String filename = "apply" + filePath + ".doc";
                String fileurl = dir + "/" + filename;

                createFile(staticPath, fileurl, dir, record.getClass(), record);
            }
        }


        Midapply midapplyByProId = midapplyService.getMidapplyByProId(projectid);
        if (midapplyByProId != null) {

            String filename2 = "mid" + filePath + ".doc";
            String fileurl2 = dir + "/" + filename2;
            createFile(request.getSession().getServletContext().getRealPath("files/midapply.doc"),
                    fileurl2,
                    dir, midapplyByProId.getClass(), midapplyByProId);
        }
        Endapply endapply = endapplyService.getEndapplyByProId(projectid);
        if (endapply != null) {
            String filename3 = "end" + filePath + ".doc";
            String fileurl3 = dir + "/" + filename3;
            createFile(request.getSession().getServletContext().getRealPath("files/endapply.doc"),
                    fileurl3,
                    dir, endapply.getClass(), endapply);
        }
        Changelog changelog = changelogService.getChangelogByProId(projectid);
        if (changelog != null) {
            String filename4 = "change" + filePath + ".doc";
            String fileurl4 = dir + "/" + filename4;
            createFile(request.getSession().getServletContext().getRealPath("files/changelog.doc"),
                    fileurl4,
                    dir, changelog.getClass(), changelog);
        }
        Cglog cglog = new Cglog();

        cglog.setProjectid(projectid);
        PageSearchParam searchParam = new PageSearchParam();
        searchParam.setParams(cglog);
        searchParam.setPage(1);
        searchParam.setPagesize(100);
        PageResult pages = cglogService.getPages(searchParam);
        for (Object object : pages.getData()) {
            Cglog cglog1 = (Cglog) object;
            String filename5 = "cglog" + filePath + ".doc";
            String fileurl5 = dir + "/" + filename5;
            createFile(request.getSession().getServletContext().getRealPath("files/cglog.doc"),
                    fileurl5,
                    dir, cglog1.getClass(), cglog1);
        }

        Yjslog yjslog = new Yjslog();
        yjslog.setProjectid(projectid);
        PageSearchParam searchParam2 = new PageSearchParam();
        searchParam2.setParams(yjslog);
        searchParam2.setPage(1);
        searchParam2.setPagesize(100);
        PageResult pages2 = yjslogService.getPages(searchParam2);
        for (Object object : pages2.getData()) {
            Yjslog yjslog1 = (Yjslog) object;
            String filename5 = "cglog" + filePath + ".doc";
            String fileurl5 = dir + "/" + filename5;
            createFile(request.getSession().getServletContext().getRealPath("files/yjslog.doc"),
                    fileurl5,
                    dir, yjslog1.getClass(), yjslog1);
        }
    }

    private void createFile(String srcFile, String tofile, String filePath, Class cls, Object record) {
        File path = new File(filePath);
        if (!path.exists()) {
            path.mkdir();
        }
        Field[] fields = cls.getDeclaredFields();
        HashMap<String, String> map = new HashMap<>();
        for (int i = 0; i < fields.length; i++) {
            Field f = fields[i];
            f.setAccessible(true);
            try {
                map.put(f.getName(), String.valueOf(f.get(record)));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        HWPFDocument doc = new WriteWord().replaceDoc(srcFile, map);
        try {
            FileOutputStream out = new FileOutputStream(tofile);
            doc.write(out);
            out.close();


        } catch (FileNotFoundException e) {
// TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
// TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
