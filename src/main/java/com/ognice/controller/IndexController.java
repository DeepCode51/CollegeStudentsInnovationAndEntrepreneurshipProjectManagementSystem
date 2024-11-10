/**
 *
 */
package com.ognice.controller;

import com.google.code.kaptcha.Producer;
import com.ognice.domain.Preuser;
import com.ognice.domain.Project;
import com.ognice.service.IPreuserService;
import com.ognice.service.IProjectService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.*;

/**
 * <br>
 * ========================== <br>
 * 开发：952396697@qq.com <br>
 * 版本：1.0 <br>
 * 创建时间：2016年11月25日 <br>
 * ==========================
 */
@Controller
public class IndexController {
    @Resource
    private IPreuserService preuserService;
    @Resource
    private IProjectService projectService;
    //@Resource
    // private IPreuserService preuserservice;

    // @Resource
    //private ICateService cateService;

    //@Resource
    // private IKechengService kechengService;

    /**
     *
     */
    @RequestMapping(value = "/demo", method = RequestMethod.GET)
    public String demo(ModelMap model) {
        model.addAttribute("message", "Hello Spring MVC Framework!");
        return "admin/demo";
    }


    /**
     * 前台首页
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String preindex(ModelMap model) {
        // return "pre/login";//必须登录
//        model.addAttribute("cates",cateService.all());//分类
//        PageSearchParam psp = new PageSearchParam();
//        psp.setPage(1);
//        psp.setPagesize(9);
//        Kecheng kecheng=new Kecheng();
//        psp.setParams(kecheng);
//        model.addAttribute("lists",kechengService.getPages(psp));//列表
        return "redirect:/admin";
    }

    /**
     * 前台首页
     */
    @RequestMapping(value = "/index")
    public String index(HttpServletRequest request, HttpServletResponse response) {

        return "redirect:/";
    }

    /**
     * 前台退出
     */
    @RequestMapping(value = "/index/logout")
    public String logout2(HttpServletRequest request, HttpServletResponse response) {
        request.getSession().removeAttribute("indexUser");
        return "redirect:/index";
    }

    /**
     * 前台z注册
     */
//    @RequestMapping(value = "/index/reg")
//    public String indexreg(HttpServletRequest request, HttpServletResponse response) {
//        return "pre/register";
//    }
//    @RequestMapping(value = "/index/regsave")
//    public String regsave(HttpServletRequest request, HttpServletResponse response, Preuser record, @RequestParam("file") MultipartFile file) {
//        if ("post".equals(request.getMethod().toLowerCase())) {
//            record.setCreated(new Date());
//            if (file.getSize() != 0) {
//                String url = "";
//
//                try {
//                    String staticPath = request.getSession().getServletContext().getRealPath("static/dist/img/");
//                    String fileName = file.getOriginalFilename();
//                    String[] filestr = fileName.split("\\.");
//                    String fileurl = System.currentTimeMillis() + "." + filestr[1];
//                    java.io.File targetFile = new java.io.File(staticPath, fileurl);
//                    file.transferTo(targetFile);
//                    url = "http://localhost:" + request.getLocalPort() + request.getSession().getServletContext().getContextPath() + "/static/dist/img/" + fileurl;
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//
//                record.setPicurl(url);
//            }
//            PageSearchParam psp=new PageSearchParam();
//            psp.setPage(1);
//            psp.setPagesize(1);
//            Preuser ps=new Preuser();
//            ps.setUsername(record.getUsername());
//            ps.setEmail(record.getEmail());
//            psp.setParams(ps);
//
//            if(preuserservice.getPages(psp).getTotal()>0){
//                request.setAttribute("msg", "用户名或邮箱已存在！");
//                return "pre/register";
//
//            }
//            String msg = preuserservice.save(record);
//            if (msg.equals("添加成功")) {
//                request.getSession().setAttribute("indexUser",record);
//                return "redirect:/";
//            }
//            request.setAttribute("msg", msg);
//        }
//        return "pre/register";
//    }
//
//    /**
//     * 前台登录
//     */
//    @RequestMapping(value = "/index/login")
//    public String indexlogin(HttpServletRequest request, HttpServletResponse response) {
//        String username = request.getParameter("username");
//        String psw = request.getParameter("psw");
//        Preuser u = userservice.prelogin(username, psw);
//        if (null == u) {
//              if(request.getMethod().equals("POST")) {
//        request.setAttribute("msg", "账号或密码错误");
//    }
//            return "pre/login";
//
//        }
//        request.getSession().setAttribute("indexUser", u);
//
//        return "redirect:/index";
//    }
//
//
//    /**
//     * 前台个人中心
//     */
//    @RequestMapping(value = "/index/center")
//    public String center(HttpServletRequest request, HttpServletResponse response) {
//        Preuser pu=(Preuser)request.getSession().getAttribute("indexUser");
//        if(pu==null){
//            return "pre/login";
//        }
//        return "pre/center";
//    }
//    /**
//     * 前台个人中心修改信息
//     */
//    @RequestMapping(value = "/index/center2")
//    public String update(HttpServletRequest request, Preuser record, ModelMap model, @RequestParam("file") MultipartFile file) {
//        if (file.getSize() != 0) {
//            String url = "";
//
//            try {
//                String staticPath = request.getSession().getServletContext().getRealPath("static/dist/img/");
//                String fileName = file.getOriginalFilename();
//                String[] filestr = fileName.split("\\.");
//                String fileurl = System.currentTimeMillis() + "." + filestr[1];
//                java.io.File targetFile = new java.io.File(staticPath, fileurl);
//                file.transferTo(targetFile);
//                url = "http://localhost:" + request.getLocalPort() + request.getSession().getServletContext().getContextPath() + "/static/dist/img/" + fileurl;
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//
//            record.setPicurl(url);
//        }
//        preuserservice.update(record);
//        request.getSession().setAttribute("indexUser",record);
//        return "redirect:/index/center";
//    }
//


    /**
     * 后台首页
     */
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String index(ModelMap model) {
        List<Project> all = projectService.all();
        int tcount = 0;
        int zcount = 0;
        int scount = 0;
        String topname1 = "";
        int topcount1 = 0;
        String topname2 = "";
        int topcount2 = 0;
        String topname3 = "";
        int topcount3 = 0;
        HashMap<String, Integer> countset = new HashMap<>();
        for (Project project : all) {
            if (countset.get(project.getXueyuanid()) == null) {
                countset.put(project.getXueyuanname(), 1);
            } else {
                countset.put(project.getXueyuanname(), countset.get(project.getXueyuanname()) + 1);
            }
            if (project.getTeaid() == null) {
                Preuser preuser = preuserService.getPreuserById(project.getUserid());
                if (preuser.getType() == 2) {
                    zcount++;
                }
                if (preuser.getType() == 3) {
                    tcount++;
                }
            } else {
                scount++;
            }
        }

        List<Map.Entry<String, Integer>> list = new ArrayList<Map.Entry<String, Integer>>(countset.entrySet());
        //然后通过比较器来实现排序
        Collections.sort(list, new Comparator<Map.Entry<String, Integer>>() {
            //升序排序
            public int compare(Map.Entry<String, Integer> o1,
                               Map.Entry<String, Integer> o2) {
                return o1.getValue().compareTo(o2.getValue());
            }

        });

        model.addAttribute("tcount", tcount);
        model.addAttribute("zcount", zcount);
        model.addAttribute("scount", scount);
        try {

            model.addAttribute("topname1", list.get(0).getKey());
            model.addAttribute("topcount1", list.get(0).getValue());
            model.addAttribute("topname2", list.get(1).getKey());
            model.addAttribute("topcount2", list.get(1).getValue());
            model.addAttribute("topname3", list.get(2).getKey());
            model.addAttribute("topcount3", list.get(2).getValue());
        }catch (Exception e){

        }



        return "admin/index";
    }

    /**
     * 后台登录
     */
    @RequestMapping(value = "/login")
    public String login(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("u");
        String psw = request.getParameter("p");
        String v = request.getParameter("v");
        Preuser u = preuserService.login(username, psw);
        if (null == u) {
            if (request.getMethod().equals("POST")) {
                request.setAttribute("msg", "账号或密码错误");
            }
            return "admin/login";

        }else{
            if(v!=null&&!v.equals( request.getSession().getAttribute(VALIDATE_CODE))){
                request.setAttribute("msg", "验证码错误");
                return "admin/login";
            }if(StringUtils.isEmpty(v)){
                request.setAttribute("msg", "验证码不能为空");
                return "admin/login";
            }
        }

        request.getSession().setAttribute("loginUser", u);

        return "redirect:/admin";
    }
    @Autowired
    private Producer captchaProducer;

    private final String VALIDATE_CODE = "VALIDATE_CODE";

    private final String EXPIRE_TIME = "EXPIRE_TIME";

    @RequestMapping(value = "/login/vcode", method = RequestMethod.GET)
    public void loadValidateCode(HttpServletRequest request, HttpServletResponse response) {
        try {
            HttpSession session = request.getSession();

            // 设置清除浏览器缓存
            response.setDateHeader("Expires", 0);
            response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
            response.addHeader("Cache-Control", "post-check=0, pre-check=0");
            response.setHeader("Pragma", "no-cache");
            response.setContentType("image/png");

            // 验证码一分钟内有效
            long expireTime = System.currentTimeMillis() + 60000;

            // 将验证码放到session中
            String validateCode =  String.valueOf((int)((Math.random()*9+1)*1000));
            session.setAttribute(VALIDATE_CODE, validateCode);//将加密后的验证码放到session中，确保安全
            session.setAttribute(EXPIRE_TIME, expireTime);

            // 输出验证码图片
            BufferedImage bufferedImage = captchaProducer.createImage(validateCode);
            ServletOutputStream out = response.getOutputStream();
            ImageIO.write(bufferedImage, "png", out);
            out.flush();
            out.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 后台退出
     */
    @RequestMapping(value = "/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        request.getSession().removeAttribute("loginUser");
        return "redirect:/admin";
    }

}
