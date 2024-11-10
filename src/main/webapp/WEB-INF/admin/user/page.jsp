<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>网站</title>
    <jsp:include page="../common/static.jsp"></jsp:include>
</head>
<body class="page-body">
<jsp:include page="../common/profile.jsp"></jsp:include>
<div class="page-container">
    <!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->
    <jsp:include page="../common/menu.jsp"></jsp:include>
    <div class="main-content">
        <jsp:include page="../common/header.jsp"></jsp:include>
        <div class="page-title">
            <div class="title-env">
                <a href="${path }/admin/user/add" class="btn btn-info btn-sm btn-icon">新增</a>
            </div>
        </div>
        <div style="display: none">
            <form class="form-horizontal" method="post" action="${path }/admin/student">
                <input type="hidden" name="page" id="page" value="1">
                <input type="hidden" name="pageSize" id="pageSize" value="20">
                <div class="margin pull-right">
                    <div class="btn-group ">
                        <button type="submit" id="searchButton" class="btn btn-sm btn-default">查询</button>
                    </div>
                </div>
            </form>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">列表</h3>

                <div class="panel-options">

                    <a href="#" data-toggle="panel">
                        <span class="collapse-icon">&ndash;</span>
                        <span class="expand-icon">+</span>
                    </a>
                </div>
            </div>
            <div class="panel-body">
                <table class="table table-bordered table-striped" id="example-2">
                    <thead>
                    <tr>
                        <th>用户名</th>
                        <th>名称</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody class="middle-align">
                    <c:forEach var="d" items="${datas.data }">
                        <tr>
                            <td>
                                    ${d.username }

                            </td>
                            <td>
                                    ${d.name }

                            </td>
                            <td>

                                <a class="btn btn-secondary btn-sm btn-icon icon-left"
                                   href="${path}/admin/user/view?id=${d.id }">查看</a>
                                <a class="btn btn-info btn-sm btn-icon icon-left"
                                   href="${path}/admin/user/edit?id=${d.id }">编辑</a>
                                <a class="btn btn-danger btn-sm btn-icon icon-left"
                                   href="${path}/admin/user/del?id=${d.id }">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <jsp:include page="../common/page.jsp"></jsp:include>

            </div>
        </div>
    </div>
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
<script>
    $(function () {
        $(".search").on("click", function () {
            $("#page").val($(this).attr("data-page"));
            $("#searchButton").click();
        });
    });

</script>

</html>