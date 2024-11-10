<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<div class="settings-pane">

    <a href="#" data-toggle="settings-pane" data-animate="true">
        &times;
    </a>

    <div class="settings-pane-inner">

        <div class="row">

            <div class="col-md-4">

                <div class="user-info">

                    <div class="user-image">
                    </div>

                    <div class="user-details">

                        <h3>
                            <a href="javascript:;">${loginUser.name}</a>

                            <!-- Available statuses: is-online, is-idle, is-busy and is-offline -->
                            <span class="user-status is-online"></span>
                        </h3>
                    <form action="${path}/admin/user/update" method="post">
                        <input type="hidden" name="id" value="${loginUser.id}"/>
                        <input type="hidden" name="username" value="${loginUser.username}"/>
                        <ul class="list-unstyled">
                            <li>
                                <label for="sp-chk1">昵称</label>
                                <input type="text" style="color: black" class="cbr cbr-primary"  required name="name" value="${loginUser.name}"/>
                            </li>
                            <li>
                                <label for="sp-chk1">密码</label>
                                <input type="password" placeholder="(空为不改)" style="color: black"  class="cbr cbr-primary" checked="checked" name="psw" value="" id="sp-chk1"/>
                            </li>

                        </ul>
                        <div class="user-links">
                            <button type="submit" class="btn btn-success">更新</button>
                        </div>
                    </form>
                    </div>

                </div>

            </div>

            <div class="col-md-8 link-blocks-env">

            </div>

        </div>

    </div>

</div>
