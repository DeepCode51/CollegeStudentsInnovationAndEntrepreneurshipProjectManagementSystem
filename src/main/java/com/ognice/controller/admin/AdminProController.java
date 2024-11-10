package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Pro;
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
 * @date 2019-03-16
 * 专业管理 controller
 * @version 1.0
 */
@Controller
@RequestMapping(value = "/admin/pro")
public class AdminProController {
    @Resource
    private IProService proService;
        @Resource
        private IXueyuanService xueyuanService;
    /**
     *列表
     */
    @RequestMapping(value = "", method = { RequestMethod.GET, RequestMethod.POST })
    public String index(HttpServletRequest request, ModelMap model, Pro searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = proService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        model.addAttribute("xueyuans", xueyuanService.all());
        return "admin/pro/page";
    }
	//新增
    @RequestMapping(value = "/add", method = { RequestMethod.GET, RequestMethod.POST })
    public String add(HttpServletRequest request, Pro record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            String msg = proService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/pro";
            }
            model.addAttribute("msg", msg);
        }
                if(record.getXueyuanid()!=null){
                record.setXueyuanname(xueyuanService.getXueyuanById(record.getXueyuanid()).getName());
            }
            model.addAttribute("xueyuans", xueyuanService.all());
        model.addAttribute("record", record);
        return "admin/pro/form";
    }
        @RequestMapping(value = "/save", method = { RequestMethod.GET, RequestMethod.POST })
        public String save(HttpServletRequest request, HttpServletResponse response, Pro record) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {

    if(record.getXueyuanid()!=null){
    record.setXueyuanname(xueyuanService.getXueyuanById(record.getXueyuanid()).getName());
    }
        String msg = proService.save(record);
        if (msg.equals("添加成功")) {
        return "redirect:/admin/pro";
        }
        request.setAttribute("msg", msg);
        }
        return "admin/pro/form";
        }


	//查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request,ModelMap model,Integer id) {
    	Pro record = proService.getProById(id);
		model.addAttribute("record", record);
		model.addAttribute("edit", false);
            model.addAttribute("xueyuans", xueyuanService.all());
        return "admin/pro/form";
    }
	//编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request,ModelMap model,Integer id) {
    	Pro record = proService.getProById(id);
		model.addAttribute("record", record);
		model.addAttribute("edit", true);
            model.addAttribute("xueyuans", xueyuanService.all());
        return "admin/pro/form";
    }
    //更新
    @RequestMapping(value = "/update",method = { RequestMethod.GET, RequestMethod.POST })
    public String update(HttpServletRequest request, Pro record, ModelMap model) {
if ("post".equals(request.getMethod().toLowerCase())) {

}
    if(record.getXueyuanid()!=null){
    record.setXueyuanname(xueyuanService.getXueyuanById(record.getXueyuanid()).getName());
    }
proService.update(record);
        return "redirect:/admin/pro";
    }
    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request,ModelMap model,Integer id) {
Pro   pro=proService.getProById(id);
        proService.delete(id);
        return "redirect:/admin/pro";
    }
}
