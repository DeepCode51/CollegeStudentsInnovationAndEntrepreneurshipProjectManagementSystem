package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Plan;
import com.ognice.domain.Preuser;
import com.ognice.domain.Project;
import com.ognice.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;

/**
 * @author ..(952396697@qq.com)<br>
 * @version 1.0
 * @date 2019-03-16
 * 项目管理 controller
 */
@Controller
@RequestMapping(value = "/admin/project")
public class AdminProjectController {
    @Resource
    private IProjectService projectService;
    @Resource
    private IPreuserService preuserService;
    @Resource
    private IPlanService planService;
    @Resource
    private IReportService reportService;
    @Resource
    private IProjectapplyService projectapplyService;
    @Resource
    private IHighapplyService highapplyService;
    @Resource
    private IMidapplyService midapplyService;
    @Resource
    private IChangelogService changelogService;
    @Resource
    private IEndapplyService endapplyService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Project searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = projectService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        model.addAttribute("plans", planService.all());
        return "admin/project/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Project record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            record.setCreated(new Date());
            String msg = projectService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/project";
            }
            model.addAttribute("msg", msg);
        }
        if (record.getUserid() != null) {
            record.setUsername(preuserService.getPreuserById(record.getUserid()).getName());
        }
        model.addAttribute("users", preuserService.all());
        if (record.getPlanid() != null) {
            record.setPlanname(planService.getPlanById(record.getPlanid()).getName());
        }
        model.addAttribute("plans", planService.all());
        if (record.getTeaid() != null) {
            record.setTeaname(preuserService.getPreuserById(record.getTeaid()).getName());
        }
        List<Preuser> preusers = preuserService.allByType(2);
        preusers.addAll(preuserService.allByType(3));
        model.addAttribute("teas", preusers);
        model.addAttribute("record", record);
        return "admin/project/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Project record) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {

            record.setCreated(new Date());
            if (record.getUserid() != null) {
                record.setUsername(preuserService.getPreuserById(record.getUserid()).getName());
            }
            if (record.getPlanid() != null) {
                Plan plan = planService.getPlanById(record.getPlanid());
                record.setPlanname(plan.getName());
                record.setType(plan.getType());
            }
            if (record.getTeaid() != null) {
                record.setTeaname(preuserService.getPreuserById(record.getTeaid()).getName());
            }
            if (record.getParentid() != null) {
                record.setParentname(projectService.getProjectById(record.getParentid()).getName());
            }
            Preuser preuser = (Preuser) request.getSession().getAttribute("loginUser");
            if (preuser != null) {
                record.setUserid(preuser.getId());
                record.setUsername(preuser.getName());
            }
            record.setXueyuanid(preuser.getXueyuanid());
            record.setXueyuanname(preuser.getXueyuanname());
            String msg = projectService.save(record);
            if (msg.equals("添加成功")) {
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
        return "admin/project/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Project record = projectService.getProjectById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("users", preuserService.all());
        model.addAttribute("plans", planService.all());
        List<Preuser> preusers = preuserService.allByType(2);
        preusers.addAll(preuserService.allByType(3));
        model.addAttribute("teas", preusers);
        if (record.getType() == 0) {
            model.addAttribute("apply", projectapplyService.getProjectapplyByProjectId(id));
        } else {
            model.addAttribute("apply", highapplyService.getHighapplyByProId(id));

        }
        model.addAttribute("midapply", midapplyService.getMidapplyByProId(id));
        model.addAttribute("endapply", endapplyService.getEndapplyByProId(id));
        model.addAttribute("changelog", changelogService.getChangelogByProId(id));
        model.addAttribute("plan", planService.getPlanById(record.getPlanid()));
        model.addAttribute("report", reportService.getReportByProId(id));

        model.addAttribute("now", new Date());
        return "admin/project/form";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Project record = projectService.getProjectById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        model.addAttribute("users", preuserService.all());
        model.addAttribute("plans", planService.all());
        List<Preuser> preusers = preuserService.allByType(2);
        preusers.addAll(preuserService.allByType(3));
        model.addAttribute("teas", preusers);
        return "admin/project/form";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Project record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {

        }
        if (record.getUserid() != null) {
            record.setUsername(preuserService.getPreuserById(record.getUserid()).getName());
        }
        if (record.getPlanid() != null) {
            record.setPlanname(planService.getPlanById(record.getPlanid()).getName());
        }
        if (record.getTeaid() != null) {
            record.setTeaname(preuserService.getPreuserById(record.getTeaid()).getName());
        }
        projectService.update(record);
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

    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request, ModelMap model, Integer id) {
        Project project = projectService.getProjectById(id);
        projectService.delete(id);
        return "redirect:/admin/project";
    }
}
