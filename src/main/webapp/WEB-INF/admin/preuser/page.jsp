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

            <form class="form-horizontal" method="post" action="${path }/admin/preuser">
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
                    <label class="col-xs-1 control-label" for="name">姓名</label>
                    <div class="col-xs-2">
                        <input class="form-control input-sm col-xs-2" name="name">
                    </div>
                    <label class="col-xs-1 control-label" for="xueyuanname">学院</label>
                    <div class="col-xs-2">
                        <select class="form-control" id="xueyuanid">
                            <option value="">请选择</option>

                            <c:forEach items="${xueyuans}" var="s">
                                <option value="${s.id}">
                                        ${s.name}
                                </option>
                            </c:forEach>
                        </select></div>
                    <label class="col-xs-1 control-label" for="proname">专业</label>
                    <div class="col-xs-2">
                        <select class="form-control" id="proid">
                            <option value="">请选择</option>

                            <c:forEach items="${pros}" var="s">
                                <option value="${s.id}">
                                        ${s.name}
                                </option>
                            </c:forEach>
                        </select></div>
                    <label class="col-xs-1 control-label" for="clazzname">班级</label>
                    <div class="col-xs-2">
                        <select class="form-control" id="clazzid">
                            <option value="">请选择</option>

                            <c:forEach items="${clazzs}" var="s">
                                <option value="${s.id}">
                                        ${s.name}
                                </option>
                            </c:forEach>
                        </select></div>
                    <label class="col-xs-1 control-label" for="schoolnum">学号/职工号</label>
                    <div class="col-xs-2">
                        <input class="form-control input-sm col-xs-2" name="schoolnum">
                    </div>


                    <div class="col-xs-2 btn-group pull-right">
                        <a href="${path }/admin/preuser/add" class="btn btn-info btn-sm ">新增</a>
                        <button type="submit" id="searchButton" class="btn btn-sm btn-success">查询</button>
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
                        <th>姓名</th>
                        <th>角色</th>
                        <th>学院</th>
                        <th>专业</th>
                        <th>班级</th>
                        <th>学号/职工号</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody class="middle-align">
                    <c:forEach var="d" items="${datas.data }">
                        <tr>

                            <td>
                                    ${d.name }

                            </td>
                            <td>
                                <c:if test="${d.type==0}">校级管理员</c:if>
                                <c:if test="${d.type==1}">二级学院管理员</c:if>
                                <c:if test="${d.type==2}">专家</c:if>
                                <c:if test="${d.type==3}">教师</c:if>
                                <c:if test="${d.type==4}">学生</c:if>


                            </td>
                            <td>
                                    ${d.xueyuanname }

                            </td>
                            <td>
                                    ${d.proname }

                            </td>
                            <td>
                                    ${d.clazzname }

                            </td>
                            <td>
                                    ${d.schoolnum }

                            </td>

                            <td>

                                <a class="btn btn-secondary btn-sm btn-icon icon-left"
                                   href="${path}/admin/preuser/view?id=${d.id }">查看</a>
                                <a class="btn btn-info btn-sm btn-icon icon-left"
                                   href="${path}/admin/preuser/edit?id=${d.id }">编辑</a>
                                <a class="btn btn-danger btn-sm btn-icon icon-left"
                                   href="${path}/admin/preuser/del?id=${d.id }">删除</a>
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

        $("#xueyuanid").on("change", function () {
            var pros = new Array();
            <c:forEach items="${pros}" var="s">
            pros.push({'xueyuanid': '${s.xueyuanid}', 'id': '${s.id}', 'name': '${s.name}'});
            </c:forEach>

            var id = $(this).val();
            var optionHtml = '<option >请选择</option>';
            for (var one in pros) {
                if (pros[one].xueyuanid == id) {
                    optionHtml += '<option value="' + pros[one].id + '">' + pros[one].name + '</option>';
                }
            }
            $("#proid").html(optionHtml);
            $("#clazzid").html('<option >请选择</option>');


        });
        $("#proid").on("change", function () {
            var clazzs = new Array();
            <c:forEach items="${clazzs}" var="s">
            clazzs.push({'proid': '${s.proid}', 'id': '${s.id}', 'name': '${s.name}'});
            </c:forEach>

            var id = $(this).val();
            var optionHtml = '<option >请选择</option>';
            for (var one in clazzs) {
                if (clazzs[one].proid == id) {
                    optionHtml += '<option value="' + clazzs[one].id + '">' + clazzs[one].name + '</option>';
                }
            }
            $("#clazzid").html(optionHtml);

        });
    });

</script>

</html>