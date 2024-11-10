<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title></title>
    <jsp:include page="../common/static.jsp"></jsp:include>
</head>
<body class="page-body">
<jsp:include page="../common/profile.jsp"></jsp:include>
<div class="page-container">
    <jsp:include page="../common/menu.jsp"></jsp:include>
    <div class="main-content">
        <jsp:include page="../common/header.jsp"></jsp:include>
        <div class="row">
            <div class="col-sm-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"></h3>
                        <div class="panel-options">
                            <a href="#" data-toggle="panel">
                                <span class="collapse-icon">&ndash;</span>
                                <span class="expand-icon">+</span>
                            </a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <form role="form" class="form-horizontal"
                              action="<c:if test="${edit==true }">${path }/admin/clazz/update</c:if><c:if test="${edit==false }">${path }/admin/clazz/add</c:if><c:if test="${edit==null }">${path }/admin/clazz/save</c:if>"
                              method="post">
                            <input type="hidden" name="id" value="${record.id }">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="name">名称</label>
                                <div class="col-sm-10">
                                    <input required type="text" class="form-control"
                                           <c:if test="${edit==false }">disabled</c:if> name="name"
                                           value="${record.name}" id="name" placeholder="名称">
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="proid">学院</label>
                                <div class="col-sm-10">
                                    <select required class="form-control"
                                            <c:if test="${edit==false }">disabled</c:if> id="xueyuanid">
                                        <option>请选择</option>
                                        <c:forEach items="${xueyuans}" var="s">
                                            <option value="${s.id }" <c:if
                                                    test="${s.id==pro.xueyuanid}"> selected </c:if>>
                                                    ${s.name }
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="proid">专业</label>
                                <div class="col-sm-10">
                                    <select required class="form-control"
                                            <c:if test="${edit==false }">disabled</c:if> name="proid" id="proid">
                                        <option>请选择</option>
                                        <c:forEach items="${pros}" var="s">
                                            <option value="${s.id }" <c:if
                                                    test="${s.id==record.proid}"> selected </c:if>>
                                                    ${s.name }
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="name">年级</label>
                                <div class="col-sm-10">
                                    <input required type="number" class="form-control"
                                           <c:if test="${edit==false }">disabled</c:if> name="grade"
                                           value="${record.grade}" id="grade" placeholder="年级">
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="has-error">
                                <span class="help-block">${msg }</span>
                            </div>

                    <div class="form-group">
                        <c:if test="${edit==false }"><a href="${path }/admin/clazz"
                                                        class="btn btn-gray btn-single">返回</a></c:if>
                        <c:if test="${edit==true || edit==null}">
                            <button type="submit" class="btn btn-info btn-single pull-right">保存</button>
                        </c:if>
                    </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
    $(function () {
//Date picker
        $("#xueyuanid").on("change", function () {
            var pros = new Array();
            <c:forEach items="${pros}" var="s">
            pros.push({'xueyuanid': '${s.xueyuanid}', 'id': '${s.id}', 'name': '${s.name}'});
            </c:forEach>

            var id = $(this).val();
            var optionHtml = '<option value="">请选择</option>';
            for (var one in pros) {
                if (pros[one].xueyuanid == id) {
                    optionHtml += '<option value="' + pros[one].id + '">' + pros[one].name + '</option>';
                }
            }
            $("#proid").html(optionHtml);

        });
    });
</script>
</html>
