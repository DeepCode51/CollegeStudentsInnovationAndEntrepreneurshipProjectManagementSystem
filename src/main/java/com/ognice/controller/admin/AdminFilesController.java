package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Files;
import com.ognice.service.IFilesService;
import com.ognice.service.IProjectService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author ..(952396697@qq.com)<br>
 * @version 1.0
 * @date 2019-03-20
 * controller
 */
@Controller
@RequestMapping(value = "/admin/files")
public class AdminFilesController {
    @Resource
    private IFilesService filesService;
    @Resource
    private IProjectService projectService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Files searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = filesService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        try {
            model.addAttribute("userid", projectService.getProjectById(searchParam.getProjectid()).getUserid());

        } catch (Exception e) {

        }
        return "admin/files/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Files record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            String msg = filesService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/files";
            }
            model.addAttribute("msg", msg);
        }
        if (record.getProjectid() != null) {
            record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
        }
        model.addAttribute("projects", projectService.all());
        model.addAttribute("record", record);
        return "admin/files/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Files record, @RequestParam(value = "file", required = false) MultipartFile file) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {
            if (file != null) {
                if (file.getSize() != 0) {
                    String url = "";

                    try {
                        String staticPath =
                                request.getSession().getServletContext().getRealPath("static/admin/images/");
                        String fileName = file.getOriginalFilename();
                        String[] filestr = fileName.split("\\.");
                        String fileurl = System.currentTimeMillis() + "." + filestr[1];
                        java.io.File targetFile = new java.io.File(staticPath, fileurl);
                        file.transferTo(targetFile);
                        url = "http://localhost:" + request.getLocalPort() +
                                request.getSession().getServletContext().getContextPath() +
                                "/static/admin/images/" + fileurl;
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                    record.setFileurl(url);
                }
            }

            if (record.getProjectid() != null) {
                record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
            }
            String msg = filesService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/files?projectid=" + record.getProjectid();
            }
            request.setAttribute("msg", msg);
        }
        return "admin/files/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Files record = filesService.getFilesById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("projects", projectService.all());
        return "admin/files/form";
    }
    //查看
    @RequestMapping(value = "/view2")
    public String view2(HttpServletRequest request, ModelMap model, Integer id) {
        Files record = filesService.getFilesById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("projects", projectService.all());
        return "admin/files/view";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Files record = filesService.getFilesById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        model.addAttribute("projects", projectService.all());
        return "admin/files/form";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Files record, ModelMap model, @RequestParam(value = "file", required = false) MultipartFile file) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            if (file != null) {
                if (file.getSize() != 0) {
                    String url = "";
                    try {
                        String staticPath =
                                request.getSession().getServletContext().getRealPath("static/admin/images/");
                        String fileName = file.getOriginalFilename();
                        String[] filestr = fileName.split("\\.");
                        String fileurl = System.currentTimeMillis() + "." + filestr[1];
                        java.io.File targetFile = new java.io.File(staticPath, fileurl);
                        file.transferTo(targetFile);
                        url = "http://localhost:" + request.getLocalPort() +
                                request.getSession().getServletContext().getContextPath() +
                                "/static/admin/images/" + fileurl;
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                    record.setFileurl(url);
                }
            }

        }
        if (record.getProjectid() != null) {
            record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
        }
        filesService.update(record);
        return "redirect:/admin/files";
    }

    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request, ModelMap model, Integer id) {
        Files files = filesService.getFilesById(id);
        filesService.delete(id);
        return "redirect:/admin/files?projectid=" + files.getProjectid();
    }
}
