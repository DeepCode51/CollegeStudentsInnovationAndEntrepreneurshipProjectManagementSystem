package com.ognice.controller.admin;

import com.ognice.controller.common.PageResult;
import com.ognice.controller.common.PageSearchParam;
import com.ognice.domain.Plan;
import com.ognice.service.IPlanService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
/**
 * @author ..(952396697@qq.com)<br>
 * @date 2019-03-16
 * 创新计划管理 controller
 * @version 1.0
 */
@Controller
@RequestMapping(value = "/admin/plan")
public class AdminPlanController {
    @Resource
    private IPlanService planService;
    /**
     *列表
     */
    @RequestMapping(value = "", method = { RequestMethod.GET, RequestMethod.POST })
    public String index(HttpServletRequest request, ModelMap model, Plan searchParam, Integer page, Integer pageSize) {
        PageSearchParam pageSearch = new PageSearchParam();
        pageSearch.setPage(page == null ? 1 : page);
        pageSearch.setPagesize(pageSize == null ? 20 : pageSize);
        pageSearch.setParams(searchParam);
        PageResult pageResult = planService.getPages(pageSearch);
        model.addAttribute("datas", pageResult);
        model.addAttribute("record", searchParam);
        return "admin/plan/page";
    }
	//新增
    @RequestMapping(value = "/add", method = { RequestMethod.GET, RequestMethod.POST })
    public String add(HttpServletRequest request, Plan record, ModelMap model) {
        if ("post".equals(request.getMethod().toLowerCase())) {
            record.setCreated(new Date());
            String msg = planService.save(record);
            if (msg.equals("添加成功")) {
                return "redirect:/admin/plan";
            }
            model.addAttribute("msg", msg);
        }
        model.addAttribute("record", record);
        return "admin/plan/form";
    }
        @RequestMapping(value = "/save", method = { RequestMethod.GET, RequestMethod.POST })
        public String save(HttpServletRequest request, HttpServletResponse response, Plan record, @RequestParam(value="file",required=false) MultipartFile file ) {
        request.setAttribute("record", record);
        if ("post".equals(request.getMethod().toLowerCase())) {
    if(file!=null){
        if (file.getSize() != 0) {
            String url = "";

            try {
            String staticPath =
            request.getSession().getServletContext().getRealPath("static/admin/images/");
            String fileName = file.getOriginalFilename();
            String[] filestr = fileName.split("\\.");
            String fileurl = System.currentTimeMillis() + "." + filestr[1];
            java.io.File targetFile = new java.io.File(staticPath, fileurl);
            file.transferTo(targetFile);
            url = "http://localhost:" + request.getLocalPort() +
            request.getSession().getServletContext().getContextPath() +
            "/static/admin/images/" + fileurl;
            } catch (Exception e) {
            e.printStackTrace();
            }

            record.setFileurl(url);
         }
    }

            record.setCreated(new Date());
        String msg = planService.save(record);
        if (msg.equals("添加成功")) {
        return "redirect:/admin/plan";
        }
        request.setAttribute("msg", msg);
        }
        return "admin/plan/form";
        }


	//查看
    @RequestMapping(value = "/view")
    public String view(HttpServletRequest request,ModelMap model,Integer id) {
    	Plan record = planService.getPlanById(id);
		model.addAttribute("record", record);
		model.addAttribute("edit", false);
        return "admin/plan/form";
    }
	//编辑
    @RequestMapping(value = "/edit")
    public String edit(HttpServletRequest request,ModelMap model,Integer id) {
    	Plan record = planService.getPlanById(id);
		model.addAttribute("record", record);
		model.addAttribute("edit", true);
        return "admin/plan/form";
    }
    //更新
    @RequestMapping(value = "/update",method = { RequestMethod.GET, RequestMethod.POST })
    public String update(HttpServletRequest request, Plan record, ModelMap model, @RequestParam(value="file",required=false) MultipartFile file ) {
if ("post".equals(request.getMethod().toLowerCase())) {
    if(file!=null){
        if (file.getSize() != 0) {
            String url = "";
            try {
            String staticPath =
            request.getSession().getServletContext().getRealPath("static/admin/images/");
            String fileName = file.getOriginalFilename();
            String[] filestr = fileName.split("\\.");
            String fileurl = System.currentTimeMillis() + "." + filestr[1];
            java.io.File targetFile = new java.io.File(staticPath, fileurl);
            file.transferTo(targetFile);
            url = "http://localhost:" + request.getLocalPort() +
            request.getSession().getServletContext().getContextPath() +
            "/static/admin/images/" + fileurl;
            } catch (Exception e) {
            e.printStackTrace();
            }

         record.setFileurl(url);
         }
    }

}
planService.update(record);
        return "redirect:/admin/plan";
    }
    //删除
    @RequestMapping(value = "/del")
    public String del(HttpServletRequest request,ModelMap model,Integer id) {
Plan   plan=planService.getPlanById(id);
        planService.delete(id);
        return "redirect:/admin/plan";
    }
}
