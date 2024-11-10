package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Cost;
import com.ognice.domain.Preuser;
import com.ognice.domain.Project;
import com.ognice.service.ICostService;
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
 * @date 2019-03-20
 * controller
 */
@Controller
@RequestMapping(value = "/admin/cost")
public class AdminCostController {
    @Resource
    private ICostService costService;
    @Resource
    private IPreuserService preuserService;
    @Resource
    private IProjectService projectService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Cost searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = costService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        try {
            Project projectById = projectService.getProjectById(searchParam.getProjectid());
            model.addAttribute("record", searchParam);
            model.addAttribute("pro", projectById);

            model.addAttribute("teaid", projectById.getTeaid() == null ? projectById.getUserid() : projectById.getTeaid());
        } catch (Exception e) {

        }

        return "admin/cost/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Cost record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            record.setCreated(new Date());
            String msg = costService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/cost?projectid=" + record.getProjectid();
            }
            model.addAttribute("msg", msg);
        }
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        model.addAttribute("preusers", preuserService.all());
        model.addAttribute("record", record);
        return "admin/cost/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Cost record) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {

            record.setCreated(new Date());
            Preuser preuser = (Preuser) request.getSession().getAttribute("loginUser");
            record.setPreuserid(preuser.getId());
            if (record.getPreuserid() != null) {
                record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
            }
            if (record.getProjectid() != null) {
                record.setProjectname(projectService.getProjectById(record.getProjectid()).getName());
            }
            String msg = costService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/cost?projectid=" + record.getProjectid();
            }
            request.setAttribute("msg", msg);
        }
        return "admin/cost/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Cost record = costService.getCostById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("preusers", preuserService.all());
        return "admin/cost/form";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Cost record = costService.getCostById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        model.addAttribute("preusers", preuserService.all());
        return "admin/cost/form";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Cost record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {

        }
        if (record.getPreuserid() != null) {
            record.setPreusername(preuserService.getPreuserById(record.getPreuserid()).getName());
        }
        costService.update(record);
        return "redirect:/admin/cost";
    }

    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request, ModelMap model, Integer id) {
        Cost cost = costService.getCostById(id);
        costService.delete(id);
        return "redirect:/admin/cost?projectid=" + cost.getProjectid();
    }
}
