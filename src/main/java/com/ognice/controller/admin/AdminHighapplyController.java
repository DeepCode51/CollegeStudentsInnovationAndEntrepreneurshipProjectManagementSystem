package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.controller.common.WriteWord;
import com.ognice.domain.*;
import com.ognice.service.ICostService;
import com.ognice.service.IHighapplyService;
import com.ognice.service.IPreuserService;
import com.ognice.service.IProjectService;
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
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;

/**
 * @author ..(952396697 @ qq.com)<br>
 * @version 1.0
 * @date 2019-03-17
 * 省级申请书 controller
 */
@Controller
@RequestMapping(value = "/admin/highapply")
public class AdminHighapplyController {
    @Resource
    private IHighapplyService highapplyService;
    @Resource
    private ICostService costService;
    @Resource
    private IProjectService projectService;
    @Resource
    private IPreuserService preuserService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Highapply searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = highapplyService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        return "admin/highapply/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Highapply record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            String msg = highapplyService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/highapply";
            }
            model.addAttribute("msg", msg);
        }
        if (record.getProjectid() != null) {
            Project project = projectService.getProjectById(record.getProjectid());
            record.setProjectname(project.getName());
            record.setProtype(project.getType() + "");
            record.setProlevel(project.getType() + "");
            record.setPreusername(project.getUsername());
        }
        model.addAttribute("projects", projectService.all());
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        model.addAttribute("preusers", preuserService.all());
        model.addAttribute("record", record);
        return "admin/highapply/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Highapply record, int status) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {

            if (record.getProjectid() != null) {
                Project projectById = projectService.getProjectById(record.getProjectid());
                record.setProjectname(projectById.getName());
                if (status == 1) {
                    projectById.setProcess(1);
                    projectById.setStatus(1);
                    if (projectById.getTeaid() == null) {
                        projectById.setStatus(2);
                    }
                    projectService.update(projectById);
                }
            }
            if (record.getPreuserid() != null) {
                record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
            }
            String msg = highapplyService.save(record);
            if (msg.equals("添加成功")) {
                Preuser preuser = (Preuser) request.getSession().getAttribute("loginUser");
                if (preuser.getType() == 0) {
                    return "redirect:/admin/project";

                }
                if (preuser.getType() == 1) {
                    return "redirect:/admin/project?xueyuanid=" + preuser.getXueyuanid();
                }
                if (preuser.getType() == 2) {
                    return "redirect:/admin/project?userid=" + preuser.getId();
                }
                if (preuser.getType() == 3) {
                    return "redirect:/admin/project?teaid=" + preuser.getId();

                }
                if (preuser.getType() == 4) {
                    return "redirect:/admin/project?preuserid=" + preuser.getId();

                }
                return "redirect:/admin/project";
            }
            request.setAttribute("msg", msg);
        }
        return "admin/highapply/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Highapply record = highapplyService.getHighapplyById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("preusers", preuserService.all());
        return "admin/highapply/form";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Highapply record = highapplyService.getHighapplyById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("preusers", preuserService.all());
        return "admin/highapply/form";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Highapply record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {

        }
        if (record.getProjectid() != null) {
            record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
        }
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        highapplyService.update(record);
        return "redirect:/admin/highapply";
    }

    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request, ModelMap model, Integer id) {
        Highapply highapply = highapplyService.getHighapplyById(id);
        highapplyService.delete(id);
        return "redirect:/admin/highapply";
    }


    @RequestMapping(value = "/download")
    public ResponseEntity<byte[]> download(HttpServletRequest request, ModelMap model, Integer projectid) throws IOException {
        Highapply record = highapplyService.getHighapplyByProId(projectid);
        String url = "";

        String staticPath =
                request.getSession().getServletContext().getRealPath("files/highapply.doc");
        String filename = record.getProjectid() + "_" + System.currentTimeMillis() + ".doc";
        String fileurl = request.getSession().getServletContext().getRealPath("files/" + filename);
        PageSearchParam pageSearchParam = new PageSearchParam();
        pageSearchParam.setPage(1);
        pageSearchParam.setPagesize(20);
        Cost cost = new Cost();
        cost.setProjectid(record.getProjectid());
        cost.setStatus(1);
        pageSearchParam.setParams(cost);
        PageResult pages = costService.getPages(pageSearchParam);
        List<?> data = pages.getData();
        int size = data.size();
        Class cls = record.getClass();


        for (int i = 1; i <= size; i++) {
            Cost c = (Cost) data.get(i);
            String yszckm = "yszckm" + i;
            String zc = "zc" + i;
            String zcyy = "zcyy" + i;
            try {
                Field yszckmField = cls.getDeclaredField(yszckm);
                yszckmField.set(record, c.getCate());
                Field zcField = cls.getDeclaredField(zc);
                zcField.set(record, c.getAmount());
                Field zcyyField = cls.getDeclaredField(zcyy);
                zcyyField.set(record, c.getName());
            } catch (Exception x) {
                x.printStackTrace();
            }
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
        HWPFDocument doc = new WriteWord().replaceDoc(staticPath, map);
        try {
            FileOutputStream out = new FileOutputStream(fileurl);
            doc.write(out);
            out.close();


        } catch (FileNotFoundException e) {
// TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
// TODO Auto-generated catch block
            e.printStackTrace();
        }
        HttpHeaders headers = new HttpHeaders();
        //下载显示的文件名，解决中文名称乱码问题
        //通知浏览器以attachment（下载方式）打开图片
        headers.setContentDispositionFormData("attachment", filename);
        //application/octet-stream ： 二进制流数据（最常见的文件下载）。
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        File file = new File(fileurl);

        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),
                headers, HttpStatus.CREATED);


    }


}
