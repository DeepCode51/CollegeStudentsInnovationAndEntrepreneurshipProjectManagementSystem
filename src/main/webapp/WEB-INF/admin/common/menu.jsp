<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<div class="sidebar-menu toggle-others fixed">

    <div class="sidebar-menu-inner">

        <header class="logo-env">

            <!-- logo -->
            <div class="logo">
                <a href="${path}/admin" class="logo-expanded">
                </a>

                <a href="${path}/admin" class="logo-collapsed">
                </a>
            </div>

            <!-- This will toggle the mobile menu and will be visible only on mobile devices -->
            <div class="mobile-menu-toggle visible-xs">
                <a href="#" data-toggle="user-info-menu">
                    <i class="fa-bell-o"></i>
                    <span class="badge badge-success">7</span>
                </a>

                <a href="#" data-toggle="mobile-menu">
                    <i class="fa-bars"></i>
                </a>
            </div>

            <!-- This will open the popup with user profile settings, you can use for any purpose, just be creative -->
            <div class="settings-icon">
                <a href="#" data-toggle="settings-pane" data-animate="true">
                </a>
            </div>


        </header>


        <ul id="main-menu" class="main-menu">
            <!-- add class "multiple-expanded" to allow multiple submenus to open -->
            <!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->

            <c:forEach items="${menu }" var="m">

                <li class="<c:if test="${main==m.id}">active</c:if><c:if test="${url!=null&&m.code==url }">active</c:if> <c:if test="${!empty m.childs}">treeview <c:if test="${main==m.id}" > opened </c:if> </c:if>">
                    <a href="${path}${m.code}${loginUser.id}<c:if test="${loginUser.type==1}">&xueyuanid=${loginUser.xueyuanid}</c:if> ">
                        <i class="linecons-desktop"></i>
                        <span class="title">${m.title }</span>
                    </a>

                    <c:if test="${!empty m.childs}">
                        <ul>
                            <c:forEach items="${m.childs }" var="cm">
                                <li class="<c:if test="${cm.code==url }">active</c:if>"><a
                                        href="${path}${cm.code }${loginUser.id}<c:if test="${loginUser.type==1}">&xueyuanid=${loginUser.xueyuanid}</c:if>"><span class="title">${cm.title }</span></a></li>
                            </c:forEach>
                        </ul>

                    </c:if>
                </li>

            </c:forEach>
        </ul>


    </div>

</div>




