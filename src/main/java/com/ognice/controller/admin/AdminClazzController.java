package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Clazz;
import com.ognice.service.IClazzService;
import com.ognice.service.IProService;
import com.ognice.service.IXueyuanService;
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
 * 班级管理 controller
 */
@Controller
@RequestMapping(value = "/admin/clazz")
public class AdminClazzController {
    @Resource
    private IClazzService clazzService;
    @Resource
    private IProService proService;
    @Resource
    private IXueyuanService xueyuanService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Clazz searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = clazzService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        model.addAttribute("pros", proService.all());
        model.addAttribute("xueyuans", xueyuanService.all());
        return "admin/clazz/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Clazz record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            String msg = clazzService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/clazz";
            }
            model.addAttribute("msg", msg);
        }
        if (record.getProid() != null) {
            record.setProname(proService.getProById(record.getProid()).getName());
        }
        model.addAttribute("pros", proService.all());
        model.addAttribute("xueyuans", xueyuanService.all());

        model.addAttribute("record", record);
        return "admin/clazz/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Clazz record) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {

            if (record.getProid() != null) {
                record.setProname(proService.getProById(record.getProid()).getName());
            }
            String msg = clazzService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/clazz";
            }
            request.setAttribute("msg", msg);
        }
        return "admin/clazz/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Clazz record = clazzService.getClazzById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("pros", proService.all());
        model.addAttribute("xueyuans", xueyuanService.all());
        model.addAttribute("pro", proService.getProById(record.getProid()));

        return "admin/clazz/form";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Clazz record = clazzService.getClazzById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        model.addAttribute("pros", proService.all());
        model.addAttribute("xueyuans", xueyuanService.all());

        return "admin/clazz/form";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Clazz record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {

        }
        if (record.getProid() != null) {
            record.setProname(proService.getProById(record.getProid()).getName());
        }
        clazzService.update(record);
        return "redirect:/admin/clazz";
    }

    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request, ModelMap model, Integer id) {
        Clazz clazz = clazzService.getClazzById(id);
        clazzService.delete(id);
        return "redirect:/admin/clazz";
    }
}
