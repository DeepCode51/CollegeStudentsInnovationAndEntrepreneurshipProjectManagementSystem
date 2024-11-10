package com.ognice.interceptor;

import com.ognice.domain.Menu;
import com.ognice.domain.Preuser;
import com.ognice.service.IMenuService;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class LoginInterceptor implements HandlerInterceptor {
    public static final Logger log = Logger.getLogger(LoginInterceptor.class);
    @Resource
    private IMenuService menuservice;

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object obj, Exception err) throws Exception {
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object obj, ModelAndView mav) throws Exception {
    }

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {
        if (request.getServletPath().equals("/") || request.getServletPath().contains("login")|| request.getServletPath().contains("logout") ) {
            return true;
        }
        if (request.getServletPath().contains("/index")) {
           // Preuser user = (Preuser) request.getSession().getAttribute("indexUser");
           // log.debug("前台登陆拦截..." + request.getServletPath());
          //  if (user != null) {
                return true;
          //  } else {
           //     response.sendRedirect(request.getContextPath() + "/");
          //  }
        } else if(request.getServletPath().contains("/admin")){
            Preuser user = (Preuser) request.getSession().getAttribute("loginUser");
            log.debug("登陆拦截..." + request.getServletPath());
            if (user != null) {
                request.setAttribute("url", request.getServletPath());
                List<Menu> menus = menuservice.getMenus(user.getType());
                for (Menu menu : menus) {

                    menu.setChilds(menuservice.getChild(menu.getId()));
                    for (Menu m:menu.getChilds()){
                        if(request.getServletPath().equals(m.getCode())){
                            request.setAttribute("main", m.getParentId());

                        }
                    }
                }
                request.setAttribute("menu", menus);
                return true;
            } else {
                response.sendRedirect(request.getContextPath() + "/login");
            }
        }
        return false;
    }

}
