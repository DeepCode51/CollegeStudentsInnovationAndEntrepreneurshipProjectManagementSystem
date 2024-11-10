package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Clazz;
import com.ognice.domain.Preuser;
import com.ognice.service.IClazzService;
import com.ognice.service.IPreuserService;
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
 * 用户管理 controller
 */
@Controller
@RequestMapping(value = "/admin/preuser")
public class AdminPreuserController {
    @Resource
    private IPreuserService preuserService;
    @Resource
    private IXueyuanService xueyuanService;
    @Resource
    private IClazzService clazzService;
    @Resource
    private IProService proService;

    /**
     * 列表
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest request, ModelMap model, Preuser searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = preuserService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        model.addAttribute("xueyuans", xueyuanService.all());
        model.addAttribute("pros", proService.all());
        model.addAttribute("clazzs", clazzService.all());
        return "admin/preuser/page";
    }

    //新增
    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, Preuser record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            String msg = preuserService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/preuser";
            }
            model.addAttribute("msg", msg);
        }
        if (record.getXueyuanid() != null) {
            record.setXueyuanname(xueyuanService.getXueyuanById(record.getXueyuanid()).getName());
        }
        model.addAttribute("xueyuans", xueyuanService.all());
        if (record.getClazzid() != null) {
            record.setClazzname(clazzService.getClazzById(record.getClazzid()).getName());
        }
        model.addAttribute("clazzs", clazzService.all());
        if (record.getProid() != null) {
            record.setProname(proService.getProById(record.getProid()).getName());
        }
        model.addAttribute("pros", proService.all());
        model.addAttribute("record", record);
        return "admin/preuser/form";
    }

    @RequestMapping(value = "/save", method = {RequestMethod.GET, RequestMethod.POST})
    public String save(HttpServletRequest request, HttpServletResponse response, Preuser record) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {
            Preuser preuser = new Preuser();
            preuser.setUsername(record.getUsername());
            PageSearchParam pageSearch = new PageSearchParam();
            pageSearch.setPage(1);
            pageSearch.setPagesize(11);
            pageSearch.setParams(preuser);
            PageResult pageResult = preuserService.getPages(pageSearch);
            String msg = "";
            if (pageResult.getData().size() > 0) {
                msg = "用户名已存在";
            } else {
                if (record.getXueyuanid() != null) {
                    record.setXueyuanname(xueyuanService.getXueyuanById(record.getXueyuanid()).getName());
                }
                if (record.getClazzid() != null) {
                    Clazz clazzById = clazzService.getClazzById(record.getClazzid());
                    record.setClazzname(clazzById.getName());
                }
                if (record.getProid() != null) {
                    record.setProname(proService.getProById(record.getProid()).getName());
                }

                msg = preuserService.save(record);
                if (msg.equals("添加成功")) {
                    return "redirect:/admin/preuser";
                }
            }
            request.setAttribute("xueyuans", xueyuanService.all());
            request.setAttribute("clazzs", clazzService.all());
            request.setAttribute("pros", proService.all());
            request.setAttribute("msg", msg);
        }
        return "admin/preuser/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        Preuser record = preuserService.getPreuserById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        model.addAttribute("xueyuans", xueyuanService.all());
        model.addAttribute("clazzs", clazzService.all());
        model.addAttribute("pros", proService.all());
        return "admin/preuser/form";
    }

    //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        Preuser record = preuserService.getPreuserById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        model.addAttribute("xueyuans", xueyuanService.all());
        model.addAttribute("clazzs", clazzService.all());
        model.addAttribute("pros", proService.all());
        return "admin/preuser/form";
    }

    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, Preuser record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            Preuser preuser = new Preuser();
            PageSearchParam pageSearch = new PageSearchParam();
            pageSearch.setPage(1);
            pageSearch.setPagesize(11);
            pageSearch.setParams(preuser);
            PageResult pageResult = preuserService.getPages(pageSearch);
            String msg = "";
            if (pageResult.getData().size() > 0) {
                msg = "用户名已存在";
                request.setAttribute("msg", msg);
                model.addAttribute("record", record);
                model.addAttribute("edit", false);
                model.addAttribute("xueyuans", xueyuanService.all());
                model.addAttribute("clazzs", clazzService.all());
                model.addAttribute("pros", proService.all());
                return "admin/preuser/form";

            } else {
                if (record.getXueyuanid() != null) {
                    record.setXueyuanname(xueyuanService.getXueyuanById(record.getXueyuanid()).getName());
                }
                if (record.getClazzid() != null) {
                    record.setClazzname(clazzService.getClazzById(record.getClazzid()).getName());
                }
                if (record.getProid() != null) {
                    record.setProname(proService.getProById(record.getProid()).getName());
                }
                preuserService.update(record);
                return "redirect:/admin/preuser";
            }
        } else {
            model.addAttribute("record", record);
            model.addAttribute("edit", false);
            model.addAttribute("xueyuans", xueyuanService.all());
            model.addAttribute("clazzs", clazzService.all());
            model.addAttribute("pros", proService.all());
        }

        return "admin/preuser/form";

    }

    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request, ModelMap model, Integer id) {
        Preuser preuser = preuserService.getPreuserById(id);
        preuserService.delete(id);
        return "redirect:/admin/preuser";
    }
}
