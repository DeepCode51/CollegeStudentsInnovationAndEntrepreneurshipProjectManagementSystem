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

            <form class="form-horizontal" method="post" action="${path }/admin/changelog">
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
                            <label class="col-xs-1 control-label" for="projectname">项目</label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="projectname">
                            </div>
                            <label class="col-xs-1 control-label" for="desc">变更内容</label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="desc">
                            </div>
                            <label class="col-xs-1 control-label" for="preusername"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="preusername">
                            </div>
                            <label class="col-xs-1 control-label" for="user2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="user2">
                            </div>
                            <label class="col-xs-1 control-label" for="user3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="user3">
                            </div>
                            <label class="col-xs-1 control-label" for="user4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="user4">
                            </div>
                            <label class="col-xs-1 control-label" for="user5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="user5">
                            </div>
                            <label class="col-xs-1 control-label" for="pro1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="pro1">
                            </div>
                            <label class="col-xs-1 control-label" for="pro2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="pro2">
                            </div>
                            <label class="col-xs-1 control-label" for="pro3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="pro3">
                            </div>
                            <label class="col-xs-1 control-label" for="pro4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="pro4">
                            </div>
                            <label class="col-xs-1 control-label" for="pro5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="pro5">
                            </div>
                            <label class="col-xs-1 control-label" for="clazz1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="clazz1">
                            </div>
                            <label class="col-xs-1 control-label" for="clazz2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="clazz2">
                            </div>
                            <label class="col-xs-1 control-label" for="clazz3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="clazz3">
                            </div>
                            <label class="col-xs-1 control-label" for="clazz4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="clazz4">
                            </div>
                            <label class="col-xs-1 control-label" for="clazz5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="clazz5">
                            </div>
                            <label class="col-xs-1 control-label" for="grade1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="grade1">
                            </div>
                            <label class="col-xs-1 control-label" for="grade2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="grade2">
                            </div>
                            <label class="col-xs-1 control-label" for="grade3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="grade3">
                            </div>
                            <label class="col-xs-1 control-label" for="grade4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="grade4">
                            </div>
                            <label class="col-xs-1 control-label" for="grade5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="grade5">
                            </div>
                            <label class="col-xs-1 control-label" for="mail1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="mail1">
                            </div>
                            <label class="col-xs-1 control-label" for="mail2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="mail2">
                            </div>
                            <label class="col-xs-1 control-label" for="mail3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="mail3">
                            </div>
                            <label class="col-xs-1 control-label" for="mail4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="mail4">
                            </div>
                            <label class="col-xs-1 control-label" for="mail5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="mail5">
                            </div>
                            <label class="col-xs-1 control-label" for="tel1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="tel1">
                            </div>
                            <label class="col-xs-1 control-label" for="tel2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="tel2">
                            </div>
                            <label class="col-xs-1 control-label" for="tel3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="tel3">
                            </div>
                            <label class="col-xs-1 control-label" for="tel4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="tel4">
                            </div>
                            <label class="col-xs-1 control-label" for="tel5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="tel5">
                            </div>
                            <label class="col-xs-1 control-label" for="resean">变更原因</label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="resean">
                            </div>
                            <label class="col-xs-1 control-label" for="recomment">老师意见</label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="recomment">
                            </div>
                            <label class="col-xs-1 control-label" for="xycomment">学院意见</label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="xycomment">
                            </div>
                            <label class="col-xs-1 control-label" for="ogmeb"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="ogmeb">
                            </div>


                    <div class="col-xs-2 btn-group pull-right">
                        <a href="${path }/admin/changelog/add" class="btn btn-info btn-sm ">新增</a>
                        <button type="submit"  id="searchButton" class="btn btn-sm btn-success">查询</button>
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
                            <th>申请时间</th>
                            <th>类型</th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th>变更原因</th>
                            <th></th>
                    <th>操作</th>
                    </tr>
                    </thead>
                    <tbody class="middle-align">
                    <c:forEach var="d" items="${datas.data }">
                        <tr>
                                <td>
                                        ${d.projectname }

                                </td>
                                <td>
                                        <fmt:formatDate value="${d.created }" pattern="yyyy年MM月dd日"/>
                                </td>
                                <td>
                                        ${d.type }

                                </td>
                                <td>
                                        ${d.preusername }

                                </td>
                                <td>
                                        ${d.user2 }

                                </td>
                                <td>
                                        ${d.user3 }

                                </td>
                                <td>
                                        ${d.user4 }

                                </td>
                                <td>
                                        ${d.user5 }

                                </td>
                                <td>
                                        ${d.pro1 }

                                </td>
                                <td>
                                        ${d.pro2 }

                                </td>
                                <td>
                                        ${d.pro3 }

                                </td>
                                <td>
                                        ${d.pro4 }

                                </td>
                                <td>
                                        ${d.pro5 }

                                </td>
                                <td>
                                        ${d.clazz1 }

                                </td>
                                <td>
                                        ${d.clazz2 }

                                </td>
                                <td>
                                        ${d.clazz3 }

                                </td>
                                <td>
                                        ${d.clazz4 }

                                </td>
                                <td>
                                        ${d.clazz5 }

                                </td>
                                <td>
                                        ${d.grade1 }

                                </td>
                                <td>
                                        ${d.grade2 }

                                </td>
                                <td>
                                        ${d.grade3 }

                                </td>
                                <td>
                                        ${d.grade4 }

                                </td>
                                <td>
                                        ${d.grade5 }

                                </td>
                                <td>
                                        ${d.mail1 }

                                </td>
                                <td>
                                        ${d.mail2 }

                                </td>
                                <td>
                                        ${d.mail3 }

                                </td>
                                <td>
                                        ${d.mail4 }

                                </td>
                                <td>
                                        ${d.mail5 }

                                </td>
                                <td>
                                        ${d.tel1 }

                                </td>
                                <td>
                                        ${d.tel2 }

                                </td>
                                <td>
                                        ${d.tel3 }

                                </td>
                                <td>
                                        ${d.tel4 }

                                </td>
                                <td>
                                        ${d.tel5 }

                                </td>
                                <td>
                                        ${d.resean }

                                </td>
                                <td>
                                        ${d.ogmeb }

                                </td>
                            <td>

                                <a  class="btn btn-secondary btn-sm btn-icon icon-left" href="${path}/admin/changelog/view?id=${d.id }" >查看</a>
                                <a  class="btn btn-info btn-sm btn-icon icon-left" href="${path}/admin/changelog/edit?id=${d.id }" >编辑</a>
                                <a  class="btn btn-danger btn-sm btn-icon icon-left" href="${path}/admin/changelog/del?id=${d.id }" >删除</a>
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