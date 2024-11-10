<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!-- User Info, Notifications and Menu Bar -->
<nav class="navbar user-info-navbar" role="navigation">

    <!-- Left links for user info navbar -->
    <ul class="user-info-menu left-links list-inline list-unstyled">

        <li class="hidden-sm hidden-xs">
            <a href="#" data-toggle="sidebar">
                <i class="fa-bars"></i>
            </a>
        </li>
    </ul>


    <!-- Right links for user info navbar -->
    <ul class="user-info-menu right-links list-inline list-unstyled">


        <li class="dropdown user-profile">
            <a href="#" data-toggle="dropdown">
                <img src="${path}/static/admin/images/user-4.png"  class="img-circle img-inline userpic-32" width="28" />
                <span>
                        ${loginUser.name}
                        <i class="fa-angle-down"></i>
				</span>
            </a>  </li>
        <li class="dropdown user-profile">

                    <a href="${path}/logout">
                        <i class="fa-"></i>
                        退出
                    </a>
        </li>
    </ul>

</nav>