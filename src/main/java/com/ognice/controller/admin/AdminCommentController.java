package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.*;
import com.ognice.service.*;
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
 * @date 2019-03-16
 * 反馈管理 controller
 */
@Controller
@RequestMapping(value = "/admin/comment")
public class AdminCommentController {
    @Resource
    private ICommentService commentService;
    @Resource
    private IProjectService projectService;

    @Resource
    private IProjectapplyService projectapplyService;

    @Resource
    private IMidapplyService midapplyService;
    @Resource
    private IEndapplyService endapplyService;
    @Resource
    private IChangelogService changelogService;
    @Resource
    private IPreuserService preuserService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Comment searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = commentService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        return "admin/comment/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Comment record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            record.setCreated(new Date());
            String msg = commentService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/comment";
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
        model.addAttribute("users", preuserService.all());
        model.addAttribute("record", record);
        return "admin/comment/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Comment record) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {
            record.setComment(record.getComment().replaceAll("</?[^>]+>", ""));
            record.setCreated(new Date());
            if (record.getProjectid() != null) {

                Project project = projectService.getProjectById(record.getProjectid());
                if (project.getProcess() == 2) {
                    Midapply midapplyByProId = midapplyService.getMidapplyByProId(project.getId());
                    if (project.getStatus() == 1) {
                        midapplyByProId.setTeacoment(record.getComment());
                    }
                    if (project.getStatus() == 2) {
                        midapplyByProId.setProcoment(record.getComment());
                    }
                    if (project.getStatus() == 3) {
                        midapplyByProId.setSchoolcoment(record.getComment());
                    }
                    midapplyService.update(midapplyByProId);
                }
                if (project.getProcess() == 1 && project.getStatus() == 2) {
                    Projectapply projectapply = projectapplyService.getProjectapplyByProjectId(project.getId());
                    projectapply.setYuancomment(record.getComment());
                    projectapplyService.update(projectapply);
                }
                if (project.getProcess() == 1 && project.getStatus() == 3) {
                    Projectapply projectapply = projectapplyService.getProjectapplyByProjectId(project.getId());
                    projectapply.setXiaocomment(record.getComment());
                    projectapplyService.update(projectapply);
                }
                if (project.getProcess() == 3) {
                    // Endapply endapply = endapplyService.getEndapplyById(project.getId());
                    // endapplyService.update(endapply);
                    Projectapply projectapply = projectapplyService.getProjectapplyByProjectId(project.getId());
                    if (project.getStatus() == 2) {
                        projectapply.setYuancomment(record.getComment());
                    }

                    if (project.getStatus() == 3) {
                        projectapply.setXiaocomment(record.getComment());
                    }
                    projectapplyService.update(projectapply);
                }


                if (project.getProcess() == 4) {
                    if (project.getStatus() == 3) {
                        project.setStatus(project.getOgstatus());
                        project.setProcess(project.getOgprocess());
                    } else {
                        Changelog changelog = changelogService.getChangelogByProId(project.getId());
                        if (project.getStatus() == 1) {
                            changelog.setRecomment(record.getComment());
                        }
                        if (project.getStatus() == 2) {
                            changelog.setXycomment(record.getComment());
                        }

                        changelogService.update(changelog);
                    }
                }
                if (project.getProcess() == 5) {
                    if (project.getStatus() == 3) {
                        project.setStatus(project.getOgstatus());
                        project.setProcess(project.getOgprocess());
                    } else {
                        Endapply endapply = endapplyService.getEndapplyByProId(project.getId());
                        if (project.getStatus() == 1) {
                            endapply.setTeacomment(record.getComment());
                        }
                        if (project.getStatus() == 2) {
                            endapply.setXycomment(record.getComment());
                        }
                        if (project.getStatus() == 3) {
                            endapply.setXxcomment(record.getComment());
                        }

                        endapplyService.update(endapply);
                    }
                }
                if (project.getStatus() < 4) {
                    project.setStatus(project.getStatus() + 1);
                }
                if (project.getStatus() == 4) {
                    if (project.getProcess() < 3) {
                        project.setStatus(0);
                        project.setProcess(project.getProcess() + 1);
                    }
                }
                projectService.update(project);
                record.setProjectname(project.getName());
            }
            if (record.getPreuserid() != null) {
                record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
            }
            String msg = commentService.save(record);
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
        return "admin/comment/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Comment record = commentService.getCommentById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("users", preuserService.all());
        return "admin/comment/form";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Comment record = commentService.getCommentById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("users", preuserService.all());
        return "admin/comment/form";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Comment record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {

        }
        if (record.getProjectid() != null) {
            record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
        }
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        commentService.update(record);
        return "redirect:/admin/comment";
    }

    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request, ModelMap model, Integer id) {
        Comment comment = commentService.getCommentById(id);
        commentService.delete(id);
        return "redirect:/admin/comment";
    }
}
