<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

            <form class="form-horizontal" method="post" action="${path }/admin/cost">
                <input type="hidden" name="page" id="page" value="1">
                <input type="hidden" name="pageSize" id="pageSize" value="20">
                <div class="form-group">

                  <label class="col-xs-1 control-label" for="name">类型</label>
                     <div class="col-xs-2">
                         <select class="form-control" name="doorid">
                             <option value="0">预算</option>
                             <option value="1">实际</option>


                         </select>
                     </div>
                    <!--
                                      <label class="col-xs-1 control-label" for="name">名称</label>
                                      <div class="col-xs-2">
                                          <input class="form-control input-sm col-xs-2" name="name">
                                      </div>-->
                    <div class="col-xs-2 btn-group pull-right">
                        <c:if test="${loginUser.id==pro.userid}">
                        <a href="${path }/admin/cost/add?projectid=${record.projectid}&status=0" class="btn btn-info btn-sm ">新增预算</a>
                        </c:if>
                        <c:if test="${loginUser.id==teaid}">

                        <a href="${path }/admin/cost/add?projectid=${record.projectid}&status=1" class="btn btn-warning btn-sm ">录入实际</a>
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
                        <th>项目</th>
                        <th>类型</th>
                            <th>类别</th>
                        <th>金额</th>
                        <th>费用摘要</th>
                            <th>录入时间</th>
                            <th>录入人</th>
                    <th>操作</th>
                    </tr>
                    </thead>
                    <tbody class="middle-align">
                    <c:forEach var="d" items="${datas.data }">
                        <tr>
                            <td>
                                    ${d.projectname }

                            </td>    <td>
                            <c:if test="${d.status==0}">预算</c:if>
                            <c:if test="${d.status==1}">实际</c:if>


                        </td>
                                <td>
                                        ${d.amount }

                                </td>
                                <td>
                                        ${d.cate }

                                </td>
                                <td>
                                        ${d.name }

                                </td>
                                <td>
                                        <fmt:formatDate value="${d.created }" pattern="yyyy年MM月dd日"/>
                                </td>
                                <td>
                                        ${d.preusername }

                                </td>
                            <td>

                                <c:if test="${loginUser.id==pro.userid && d.status==0}">
                                    <a  class="btn btn-danger btn-sm btn-icon icon-left" href="${path}/admin/cost/del?id=${d.id }" >删除</a>
                                </c:if>
                                <c:if test="${loginUser.id==teaid  && d.status==1}">

                                    <a  class="btn btn-danger btn-sm btn-icon icon-left" href="${path}/admin/cost/del?id=${d.id }" >删除</a>
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
        $(".search").on("click",function(){
            $("#page").val($(this).attr("data-page"));
            $("#searchButton").click();
        });
    });

</script>

</html>