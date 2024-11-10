package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Midapply;
import com.ognice.domain.Preuser;
import com.ognice.domain.Project;
import com.ognice.service.IMidapplyService;
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
 * @date 2019-03-16
 * controller
 */
@Controller
@RequestMapping(value = "/admin/midapply")
public class AdminMidapplyController {
    @Resource
    private IMidapplyService midapplyService;

    @Resource
    private IProjectService projectService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Midapply searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = midapplyService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        return "admin/midapply/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Midapply record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            String msg = midapplyService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/midapply";
            }
            model.addAttribute("msg", msg);
        }
        if (record.getProjectid() != null) {
            Project project = projectService.getProjectById(record.getProjectid());
            record.setProjectname(project.getName());
            record.setProtype(project.getType() + "");
            record.setProlevel(project.getType() + "");
        }
        model.addAttribute("record", record);
        return "admin/midapply/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Midapply record) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {
            Project project = projectService.getProjectById(record.getProjectid());
            project.setStatus(1);
            projectService.update(project);
            String msg = midapplyService.save(record);
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
        return "admin/midapply/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Midapply record = midapplyService.getMidapplyById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        return "admin/midapply/form";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Midapply record = midapplyService.getMidapplyById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        return "admin/midapply/form";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Midapply record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {

        }
        midapplyService.update(record);
        return "redirect:/admin/midapply";
    }

    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request, ModelMap model, Integer id) {
        Midapply midapply = midapplyService.getMidapplyById(id);
        midapplyService.delete(id);
        return "redirect:/admin/midapply";
    }
}
