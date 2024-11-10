package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Endapply;
import com.ognice.domain.Preuser;
import com.ognice.domain.Project;
import com.ognice.service.IEndapplyService;
import com.ognice.service.IPreuserService;
import com.ognice.service.IProjectService;
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
 * @date 2019-03-17
 * controller
 */
@Controller
@RequestMapping(value = "/admin/endapply")
public class AdminEndapplyController {
    @Resource
    private IEndapplyService endapplyService;
    @Resource
    private IProjectService projectService;
    @Resource
    private IPreuserService preuserService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Endapply searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = endapplyService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        return "admin/endapply/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Endapply record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            record.setCreated(new Date());
            String msg = endapplyService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/endapply";
            }
            model.addAttribute("msg", msg);
        }
        if (record.getProjectid() != null) {
            record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
        }
        model.addAttribute("projects", projectService.all());
        Preuser preuser = (Preuser) request.getSession().getAttribute("loginUser");
        record.setPreuserid(preuser.getId());
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        model.addAttribute("preusers", preuserService.all());
        model.addAttribute("record", record);
        return "admin/endapply/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Endapply record) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {

            record.setCreated(new Date());
            if (record.getProjectid() != null) {
                Project project = projectService.getProjectById(record.getProjectid());
                record.setProjectname(project.getName());
                project.setOgstatus(project.getStatus());
                project.setOgprocess(project.getProcess());
                project.setProcess(5);
                project.setStatus(1);
                projectService.update(project);
            }
            if (record.getPreuserid() != null) {
                record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
            }
            String msg = endapplyService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/endapply";
            }
            request.setAttribute("msg", msg);
        }
        return "admin/endapply/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Endapply record = endapplyService.getEndapplyById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("preusers", preuserService.all());
        return "admin/endapply/form";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Endapply record = endapplyService.getEndapplyById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("preusers", preuserService.all());
        return "admin/endapply/form";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Endapply record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {

        }
        if (record.getProjectid() != null) {
            record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
        }
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        endapplyService.update(record);
        return "redirect:/admin/endapply";
    }

    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request, ModelMap model, Integer id) {
        Endapply endapply = endapplyService.getEndapplyById(id);
        endapplyService.delete(id);
        return "redirect:/admin/endapply";
    }
}
