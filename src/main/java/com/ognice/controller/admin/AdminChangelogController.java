package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Changelog;
import com.ognice.domain.Preuser;
import com.ognice.domain.Project;
import com.ognice.domain.Projectapply;
import com.ognice.service.IChangelogService;
import com.ognice.service.IPreuserService;
import com.ognice.service.IProjectService;
import com.ognice.service.IProjectapplyService;
import org.apache.commons.lang.StringUtils;
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
 * 变更记录 controller
 */
@Controller
@RequestMapping(value = "/admin/changelog")
public class AdminChangelogController {
    @Resource
    private IChangelogService changelogService;
    @Resource
    private IProjectService projectService;

    @Resource
    private IProjectapplyService projectapplyService;
    @Resource
    private IPreuserService preuserService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Changelog searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = changelogService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        return "admin/changelog/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Changelog record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            record.setCreated(new Date());
            String msg = changelogService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/changelog";
            }
            model.addAttribute("msg", msg);
        }
        if (record.getProjectid() != null) {
            Project project = projectService.getProjectById(record.getProjectid());
            record.setProjectname(project.getName());
            Projectapply projectapply = projectapplyService.getProjectapplyByProjectId(project.getId());
            String ogmeb = "";
            if (!StringUtils.isBlank(projectapply.getPreusername())) {
                ogmeb += projectapply.getPreusername() + ",";
            }
            if (!StringUtils.isBlank(projectapply.getUser2())) {
                ogmeb += projectapply.getUser2() + ",";
            }
            if (!StringUtils.isBlank(projectapply.getUser3())) {
                ogmeb += projectapply.getUser3() + ",";
            }
            if (!StringUtils.isBlank(projectapply.getUser4())) {
                ogmeb += projectapply.getUser4() + ",";
            }
            if (!StringUtils.isBlank(projectapply.getUser5())) {
                ogmeb += projectapply.getUser5() + ",";
            }
            record.setOgmeb(ogmeb);
            model.addAttribute("pronum", project.getId());

        }
        model.addAttribute("projects", projectService.all());
        Preuser preuser = (Preuser) request.getSession().getAttribute("loginUser");
        record.setPreuserid(preuser.getId());
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        model.addAttribute("users", preuserService.all());
        model.addAttribute("record", record);
        return "admin/changelog/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Changelog record) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {

            record.setCreated(new Date());
            if (record.getProjectid() != null) {
                Project project = projectService.getProjectById(record.getProjectid());
                record.setProjectname(project.getName());

                project.setOgprocess(project.getProcess());
                project.setOgstatus(project.getStatus());
                project.setStatus(1);
                project.setProcess(4);
                projectService.update(project);
            }
            if (record.getPreuserid() != null) {
                record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
            }
            String msg = changelogService.save(record);
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
        return "admin/changelog/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Changelog record = changelogService.getChangelogById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("users", preuserService.all());
        return "admin/changelog/form";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Changelog record = changelogService.getChangelogById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("users", preuserService.all());
        return "admin/changelog/form";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Changelog record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {

        }
        if (record.getProjectid() != null) {
            record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
        }
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        changelogService.update(record);
        return "redirect:/admin/changelog";
    }

    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request, ModelMap model, Integer id) {
        Changelog changelog = changelogService.getChangelogById(id);
        changelogService.delete(id);
        return "redirect:/admin/changelog";
    }
}
