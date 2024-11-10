<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

            <form class="form-horizontal" method="post" action="${path }/admin/files">
                <input type="hidden" name="page" id="page" value="1">
                <input type="hidden" name="pageSize" id="pageSize" value="20">
                <div class="form-group">

                    <!-- <label class="col-xs-1 control-label" for="name">房间</label>
                     <div class="col-xs-2">
                         <select class="form-control" name="doorid">
                             <option value="">请选择</option>

                             <c:forEach items="" var="s">
                                 <option value="">

                                 </option>
                             </c:forEach>
                         </select>
                     </div>

                     <label class="col-xs-1 control-label" for="name">名称</label>
                     <div class="col-xs-2">
                         <input class="form-control input-sm col-xs-2" name="name">
                     </div>-->


                    <div class="col-xs-2 btn-group pull-right">                                <c:if test="${userid==loginUser.id}">

                        <a href="${path }/admin/files/add?projectid=${record.projectid}"
                           class="btn btn-info btn-sm ">新增</a>
                    </c:if>
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
                        <th>成果/附件</th>
                        <th>附件名</th>
                        <th>项目</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody class="middle-align">
                    <c:forEach var="d" items="${datas.data }">
                        <tr>
                            <td>

                                <c:if test="${fn:containsIgnoreCase(d.fileurl,'.png') ||fn:containsIgnoreCase(d.fileurl,'.jpg')||fn:containsIgnoreCase(d.fileurl,'.jpeg') }">
                                    <img src="${d.fileurl }" width="150px;" height="150px"/>

                                </c:if>
                                <c:if test="${!fn:containsIgnoreCase(d.fileurl,'.png') && !fn:containsIgnoreCase(d.fileurl,'.jpg')&& !fn:containsIgnoreCase(d.fileurl,'.jpeg') }">

                                <a href="${d.fileurl }">下载</a>
                                </c:if>
                            </td>
                            <td>
                                    ${d.name }

                            </td>
                            <td>
                                    ${d.projectname }

                            </td>
                            <td>
                                <c:if test="${userid==loginUser.id}">
                                <a class="btn btn-danger btn-sm btn-icon icon-left"
                                   href="${path}/admin/files/del?id=${d.id }">删除</a>
                                </c:if>
                                <c:if test="${fn:containsIgnoreCase(d.fileurl,'.png') ||fn:containsIgnoreCase(d.fileurl,'.jpg')||fn:containsIgnoreCase(d.fileurl,'.jpeg') }">

                                <a class="btn btn-info btn-sm btn-icon icon-left"
                                   href="${path}/admin/files/view2?id=${d.id }">查看</a>
                                </c:if>
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