package com.ognice.controller.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletResponse;

import com.ognice.controller.common.JsonResult;
import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Mebapply;
import com.ognice.service.IMebapplyService;

import java.util.Date;
/**
 * @author ..(952396697@qq.com)<br>
 * @date 2019-03-16
 *  controller
 * @version 1.0
 */
@Controller
@RequestMapping(value = "/admin/mebapply")
public class AdminMebapplyController {
    @Resource
    private IMebapplyService mebapplyService;
    /**
     *列表
     */
    @RequestMapping(value = "", method = { RequestMethod.GET, RequestMethod.POST })
    public String index(HttpServletRequest request,ModelMap model, Mebapply searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = mebapplyService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        return "admin/mebapply/page";
    }
	//新增
    @RequestMapping(value = "/add", method = { RequestMethod.GET, RequestMethod.POST })
    public String add(HttpServletRequest request, Mebapply record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            String msg = mebapplyService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/mebapply";
            }
            model.addAttribute("msg", msg);
        }
        model.addAttribute("record", record);
        return "admin/mebapply/form";
    }
        @RequestMapping(value = "/save", method = { RequestMethod.GET, RequestMethod.POST })
        public String save(HttpServletRequest request, HttpServletResponse response, Mebapply record) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {

        String msg = mebapplyService.save(record);
        if (msg.equals("添加成功")) {
        return "redirect:/admin/mebapply";
        }
        request.setAttribute("msg", msg);
        }
        return "admin/mebapply/form";
        }


	//查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request,ModelMap model,Integer id) {
    	Mebapply record = mebapplyService.getMebapplyById(id);
		model.addAttribute("record", record);
		model.addAttribute("edit", false);
        return "admin/mebapply/form";
    }
	//编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request,ModelMap model,Integer id) {
    	Mebapply record = mebapplyService.getMebapplyById(id);
		model.addAttribute("record", record);
		model.addAttribute("edit", true);
        return "admin/mebapply/form";
    }
    //更新
    @RequestMapping(value = "/update",method = { RequestMethod.GET, RequestMethod.POST })
    public String update(HttpServletRequest request, Mebapply record, ModelMap model) {
if ("post".equals(request.getMethod().toLowerCase())) {

}
mebapplyService.update(record);
        return "redirect:/admin/mebapply";
    }
    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request,ModelMap model,Integer id) {
Mebapply   mebapply=mebapplyService.getMebapplyById(id);
        mebapplyService.delete(id);
        return "redirect:/admin/mebapply";
    }
}
