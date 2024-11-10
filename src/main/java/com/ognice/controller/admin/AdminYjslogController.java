package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Yjslog;
import com.ognice.service.IPreuserService;
import com.ognice.service.IProjectService;
import com.ognice.service.IYjslogService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 * @author ..(952396697@qq.com)<br>
 * @version 1.0
 * @date 2019-03-22
 * controller
 */
@Controller
@RequestMapping(value = "/admin/yjslog")
public class AdminYjslogController {
    @Resource
    private IYjslogService yjslogService;
    @Resource
    private IProjectService projectService;
    @Resource
    private IPreuserService preuserService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Yjslog searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = yjslogService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        model.addAttribute("project", projectService.getProjectById(searchParam.getProjectid()));
        return "admin/yjslog/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Yjslog record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            record.setCreated(new Date());
            String msg = yjslogService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/yjslog";
            }
            model.addAttribute("msg", msg);
        }
        if (record.getProjectid() != null) {
            record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
        }
        model.addAttribute("projects", projectService.all());
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        model.addAttribute("preusers", preuserService.all());
        model.addAttribute("record", record);
        return "admin/yjslog/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Yjslog record) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {

            record.setCreated(new Date());
            if (record.getProjectid() != null) {
                record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
            }
            if (record.getPreuserid() != null) {
                record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
            }
            String msg = yjslogService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/yjslog?projectid=" + record.getProjectid();
            }
            request.setAttribute("msg", msg);
        }
        return "admin/yjslog/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Yjslog record = yjslogService.getYjslogById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("preusers", preuserService.all());
        return "admin/yjslog/form";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Yjslog record = yjslogService.getYjslogById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("preusers", preuserService.all());
        return "admin/yjslog/form";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Yjslog record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {

        }
        if (record.getProjectid() != null) {
            record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
        }
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        yjslogService.update(record);
        return "redirect:/admin/yjslog";
    }

    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request, ModelMap model, Integer id) {
        Yjslog yjslog = yjslogService.getYjslogById(id);
        yjslogService.delete(id);
        return "redirect:/admin/yjslog?projectid=" + yjslog.getProjectid();
    }
}
