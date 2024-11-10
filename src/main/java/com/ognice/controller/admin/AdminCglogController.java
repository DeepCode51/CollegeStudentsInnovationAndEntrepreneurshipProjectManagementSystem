package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Cglog;
import com.ognice.domain.Preuser;
import com.ognice.service.ICglogService;
import com.ognice.service.IProjectService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author ..(952396697@qq.com)<br>
 * @version 1.0
 * @date 2019-03-22
 * controller
 */
@Controller
@RequestMapping(value = "/admin/cglog")
public class AdminCglogController {
    @Resource
    private ICglogService cglogService;
    @Resource
    private IProjectService projectService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Cglog searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = cglogService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        try {
            model.addAttribute("userid", projectService.getProjectById(searchParam.getProjectid()).getUserid());

        } catch (Exception e) {

        }
        return "admin/cglog/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Cglog record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            String msg = cglogService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/cglog";
            }
            model.addAttribute("msg", msg);
        }
        if (record.getProjectid() != null) {
            record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
        }
        model.addAttribute("projects", projectService.all());
        model.addAttribute("record", record);
        return "admin/cglog/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Cglog record) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {

            if (record.getProjectid() != null) {
                record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
                try {
                    request.setAttribute("userid", projectService.getProjectById(record.getProjectid()).getUserid());

                } catch (Exception e) {

                }
            }
            Preuser preuser = (Preuser) request.getSession().getAttribute("loginUser");
            record.setPreuserid(preuser.getId());
            if (record.getPreuserid() != null) {
                record.setPreusername(preuser.getName());
            }
            String msg = cglogService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/cglog?projectid=" + record.getProjectid();
            }
            request.setAttribute("msg", msg);
        }
        return "admin/cglog/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Cglog record = cglogService.getCglogById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("projects", projectService.all());
        return "admin/cglog/form";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Cglog record = cglogService.getCglogById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        model.addAttribute("projects", projectService.all());
        return "admin/cglog/form";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Cglog record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {

        }
        if (record.getProjectid() != null) {
            record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
        }
        cglogService.update(record);
        return "redirect:/admin/cglog";
    }

    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request, ModelMap model, Integer id) {
        Cglog cglog = cglogService.getCglogById(id);
        cglogService.delete(id);
        return "redirect:/admin/cglog?projectid=" + cglog.getProjectid();
    }
}
