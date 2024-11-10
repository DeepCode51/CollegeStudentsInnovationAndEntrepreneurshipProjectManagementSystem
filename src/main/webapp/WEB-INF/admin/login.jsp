<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Xenon Boostrap Admin Panel" />
    <meta name="author" content="" />

    <title>Login</title>

    <link rel="stylesheet" href="${path}/static/admin/css/fonts/linecons/css/linecons.css">
    <link rel="stylesheet" href="${path}/static/admin/css/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${path}/static/admin/css/bootstrap.css">
    <link rel="stylesheet" href="${path}/static/admin/css/xenon-core.css">
    <link rel="stylesheet" href="${path}/static/admin/css/xenon-forms.css">
    <link rel="stylesheet" href="${path}/static/admin/css/xenon-components.css">
    <link rel="stylesheet" href="${path}/static/admin/css/xenon-skins.css">
    <link rel="stylesheet" href="${path}/static/admin/css/custom.css">

    <script src="${path}/static/admin/js/jquery-1.11.1.min.js"></script>




</head>
<body class="page-body login-page">


<div class="login-container">

    <div class="row">

        <div class="col-sm-6">

            <script type="text/javascript">
                jQuery(document).ready(function($)
                {
                    // Reveal Login form
                    setTimeout(function(){ $(".fade-in-effect").addClass('in'); }, 1);


                    // Validation and Ajax action

                    // Set Form focus
                });
            </script>

            <!-- Errors container -->
            <div class="errors-container">


            </div>

            <!-- Add class "fade-in-effect" for login form effect -->
            <form action="${path}/login" method="post" role="form" id="login" class="login-form fade-in-effect">

                <div class="login-header">
                    <a href="" class="logo">
                        <span>大学生创新创业项目管理系统</span>
                    </a>

                    <p>${msg}</p>
                </div>

                <div class="form-group">
                    <label class="control-label" for="username">用户名</label>
                    <input type="text" class="form-control input-dark" name="u" id="username" required autocomplete="off" />
                </div>

                <div class="form-group">
                    <label class="control-label" for="passwd">密码</label>
                    <input type="password" class="form-control input-dark" name="p" id="passwd" required autocomplete="off" />
                </div>

                <div class="form-group">
                    <label class="control-label" for="v">有验证码</label>
                    <input type="text" class="form-control " style="background:white;width: 100px;display: inline-block;color: black;" name="v" id="v" required  />
                    <img src="${path}/login/vcode"/>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-dark  btn-block text-left">
                        <i class="fa-lock"></i>
                        登录
                    </button>
                </div>


            </form>

            <!-- External login -->
            <div class="external-login">

                <!--
                <a href="#" class="twitter">
                    <i class="fa-twitter"></i>
                    Login with Twitter
                </a>

                <a href="#" class="gplus">
                    <i class="fa-google-plus"></i>
                    Login with Google Plus
                </a>
                 -->
            </div>

        </div>

    </div>

</div>



<!-- Bottom Scripts -->
<script src="${path}/static/admin/js/bootstrap.min.js"></script>
<script src="${path}/static/admin/js/TweenMax.min.js"></script>
<script src="${path}/static/admin/js/resizeable.js"></script>
<script src="${path}/static/admin/js/joinable.js"></script>
<script src="${path}/static/admin/js/xenon-api.js"></script>
<script src="${path}/static/admin/js/xenon-toggles.js"></script>
<script src="${path}/static/admin/js/jquery-validate/jquery.validate.min.js"></script>
<script src="${path}/static/admin/js/toastr/toastr.min.js"></script>


<!-- JavaScripts initializations and stuff -->
<script src="${path}/static/admin/js/xenon-custom.js"></script>

</body>
</html>