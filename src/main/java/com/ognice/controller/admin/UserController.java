/**
 *
 */
package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.User;
import com.ognice.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * <br>
 * ========================== <br>
 * 开发：952396697@qq.com <br>
 * 版本：1.0 <br>
 * 创建时间：2016年11月25日 <br>
 * ==========================
 */
@Controller
@RequestMapping(value = "/admin/user", method = RequestMethod.GET)
public class UserController {
    @Resource
    private IUserService userservice;

    /**
     *
     */
    @RequestMapping(value = "", method = {RequestMethod.GET, RequestMethod.POST})
    public String demo(ModelMap model, User searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = userservice.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        return "admin/user/page";
    }

    @RequestMapping(value = "/add", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, User u, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            String msg = userservice.save(u);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/user";
            }
            model.addAttribute("msg", msg);
        }
        return "admin/user/form";
    }


    //查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request, ModelMap model, Integer id) {
        User record = userservice.getUserById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", false);
        return "admin/user/form";
    }
    //更新
    @RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
    public String update(HttpServletRequest request, User record, ModelMap model


    ) {
        if ("post".equals(request.getMethod().toLowerCase())) {


        }
        userservice.update(record);
        return "redirect:/admin/user";
    }

                         //编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request, ModelMap model, Integer id) {
        User record = userservice.getUserById(id);
        model.addAttribute("record", record);
        model.addAttribute("edit", true);
        return "admin/user/form";
    }


    @RequestMapping(value = "/del")
    public String lock(@RequestParam Integer id) {
        userservice.delete(id);
        return "redirect:/admin/user";
    }


}
