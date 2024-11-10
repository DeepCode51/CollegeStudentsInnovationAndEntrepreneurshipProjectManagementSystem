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

            <form class="form-horizontal" method="post" action="${path }/admin/project">
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
                    <label class="col-xs-1 control-label" for="name">项目名</label>
                    <div class="col-xs-2">
                        <input class="form-control input-sm col-xs-2" name="name">
                    </div>
                    <label class="col-xs-1 control-label" for="username">申请人</label>
                    <div class="col-xs-2">
                        <input class="form-control input-sm col-xs-2" name="username">
                    </div>
                    <label class="col-xs-1 control-label" for="planname">创新计划</label>
                    <div class="col-xs-2">
                        <select class="form-control" name="planid">
                            <option value="">请选择</option>

                            <c:forEach items="${plans}" var="s">
                                <option value="${s.id}">
                                        ${s.name}
                                </option>
                            </c:forEach>
                        </select>
                    </div>


                    <div class="col-xs-2 btn-group pull-right">

                        <button type="submit" id="searchButton" class="btn btn-sm btn-success">查询</button>
                    </div>
                </div>
            </form>

        </div>


        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">列表</h3>

                <div class="panel-options">
                    <button type="button" id="batchD" class="btn btn-sm btn-success">批量下载</button>

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
                        <th><input id="checkAll" type="checkbox"/>
                        </th>
                        <th>创新计划</th>
                        <th>项目名</th>
                        <th>申请时间</th>
                        <th>阶段</th>
                        <th>状态</th>
                        <th>申请人</th>
                        <th>更新时间</th>
                        <th>指导老师</th>
                        <th>类型</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody class="middle-align">
                    <c:forEach var="d" items="${datas.data }">
                        <tr>
                            <td>
                                <c:if test="${loginUser.type==0 && d.status==4 && d.process==3}">
                                    <input name="ids" value="${d.id}" type="checkbox"/>
                                </c:if>


                            </td>
                            <td>
                                    ${d.planname }

                            </td>
                            <td>
                                    ${d.name }

                            </td>
                            <td>
                                <fmt:formatDate value="${d.created }" pattern="yyyy年MM月dd日"/>
                            </td>
                            <td>
                                <c:if test="${d.process==0}">草稿</c:if>
                                <c:if test="${d.process==1}">申请中</c:if>
                                <c:if test="${d.process==2}">中期检查</c:if>
                                <c:if test="${d.process==3}">项目结题</c:if>
                                <c:if test="${d.process==4}">项目变更</c:if>
                                <c:if test="${d.process==5}">延迟结题</c:if>


                            </td>
                            <td>
                                <c:if test="${d.status==0}">草稿</c:if>
                                <c:if test="${d.status==1}">指导老师审批</c:if>
                                <c:if test="${d.status==2}">二级学院审批</c:if>
                                <c:if test="${d.status==3}">校级审批</c:if>
                                <c:if test="${d.status==4}">通过</c:if>
                                <c:if test="${d.status==5}">不通过</c:if>

                            </td>
                            <td>
                                    ${d.username }

                            </td>
                            <td>
                                <fmt:formatDate value="${d.updated }" pattern="yyyy年MM月dd日"/>
                            </td>

                            <td>
                                    ${d.teaname }

                            </td>
                            <td>
                                <c:if test="${d.type==0}">校级</c:if>
                                <c:if test="${d.type==1}">省级</c:if>
                                <c:if test="${d.type==2}">国家级</c:if>


                            </td>

                            <td>

                                <a class="btn btn-secondary btn-sm btn-icon icon-left"
                                   href="${path}/admin/project/view?id=${d.id }">查看</a>
                                <c:if test="${loginUser.type==0 && d.status==4 && d.process==3}">
                                    <c:if test="${d.type==0}">
                                        <a class="btn btn-secondary btn-sm btn-icon icon-left"
                                           href="${path}/admin/projectapply/download?projectid=${d.id }">下载文档</a>
                                    </c:if>
                                    <c:if test="${d.type>0}">
                                        <a class="btn btn-secondary btn-sm btn-icon icon-left"
                                           href="${path}/admin/highapply/download?projectid=${d.id }">下载文档</a>
                                    </c:if>


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


        $("#checkAll").click(function () {

            var check=this.checked;
            $("input[name='ids']:checkbox").each(function () { //遍历所有的name为selectFlag的 checkbox
                $(this).prop("checked", check);
            })
        });
        $("#batchD").click(function () {
            var ids=[];

            $("input[name='ids']:checkbox").each(function () { //遍历所有的name为selectFlag的 checkbox
                if ($(this).prop("checked")) {
                    ids.push($(this).val());
                }
            })
            console.log(ids);
            if (ids.length>0) {

                window.location.href = '${path}/admin/projectapply/downloadBatch?ids=' + ids.join(",");
            }
        });


    });

</script>

</html>