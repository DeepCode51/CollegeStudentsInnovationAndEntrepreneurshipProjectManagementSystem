package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Project;
import com.ognice.domain.Scorelog;
import com.ognice.service.IPreuserService;
import com.ognice.service.IProjectService;
import com.ognice.service.IScorelogService;
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
 * @date 2019-03-17
 * controller
 */
@Controller
@RequestMapping(value = "/admin/scorelog")
public class AdminScorelogController {
    @Resource
    private IScorelogService scorelogService;
    @Resource
    private IProjectService projectService;
    @Resource
    private IPreuserService preuserService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Scorelog searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = scorelogService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        return "admin/scorelog/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Scorelog record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            String msg = scorelogService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/scorelog";
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
        model.addAttribute("preusers", preuserService.allByType(2));
        model.addAttribute("record", record);
        return "admin/scorelog/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Scorelog record, Integer user1, Integer user2, Integer user3) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {

            if (record.getProjectid() != null) {
                Project project = projectService.getProjectById(record.getProjectid());
                record.setProjectname(project.getName());
                project.setStatus(4);
                projectService.update(project);
            }
            if (record.getPreuserid() != null) {
                record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
            }
            Scorelog scorelog1 = new Scorelog();
            scorelog1.setPreuserid(user1);
            scorelog1.setPreusername(preuserService.getPreuserById(user1).getName());
            scorelog1.setProjectid(record.getProjectid());
            scorelog1.setProjectname(record.getProjectname());
            Scorelog scorelog12 = new Scorelog();
            scorelog12.setPreuserid(user2);
            scorelog12.setPreusername(preuserService.getPreuserById(user2).getName());
            scorelog12.setProjectid(record.getProjectid());
            scorelog12.setProjectname(record.getProjectname());
            Scorelog scorelog3 = new Scorelog();
            scorelog3.setPreuserid(user3);
            scorelog3.setPreusername(preuserService.getPreuserById(user3).getName());
            scorelog3.setProjectid(record.getProjectid());
            scorelog3.setProjectname(record.getProjectname());
            String msg = scorelogService.save(scorelog1);
            msg = scorelogService.save(scorelog12);
            msg = scorelogService.save(scorelog3);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/scorelog";
            }
            request.setAttribute("msg", msg);
        }
        return "admin/scorelog/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Scorelog record = scorelogService.getScorelogById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("preusers", preuserService.allByType(2));
        return "admin/scorelog/form";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Scorelog record = scorelogService.getScorelogById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        model.addAttribute("projects", projectService.all());
        model.addAttribute("preusers", preuserService.allByType(2));
        return "admin/scorelog/score";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Scorelog record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {

        }
        if (record.getProjectid() != null) {
            record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
        }
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        scorelogService.update(record);
        return "redirect:/admin/scorelog";
    }

    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request, ModelMap model, Integer id) {
        Scorelog scorelog = scorelogService.getScorelogById(id);
        scorelogService.delete(id);
        return "redirect:/admin/scorelog";
    }
}
