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
                              action="<c:if test="${edit==true }">${path }/admin/preuser/update</c:if><c:if test="${edit==false }">${path }/admin/preuser/add</c:if><c:if test="${edit==null }">${path }/admin/preuser/save</c:if>"
                              method="post">
                            <input type="hidden" name="id" value="${record.id }">

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="name">用户名</label>
                                <div class="col-sm-10">
                                    <input required type="text" class="form-control"
                                           <c:if test="${edit==false }">disabled</c:if> name="username"
                                           value="${record.username}" id="username" placeholder="用户名">
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="name">姓名</label>
                                <div class="col-sm-10">
                                    <input required type="text" class="form-control"
                                           <c:if test="${edit==false }">disabled</c:if> name="name"
                                           value="${record.name}" id="name" placeholder="姓名">
                                </div>
                            </div>
                            <div class="form-group-separator"></div>


                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="password">密码</label>
                                <div class="col-sm-10">
                                    <input required type="password" class="form-control "
                                           <c:if test="${edit==false }">disabled</c:if> name="password"
                                           value="${record.password}" id="password" placeholder="密码">
                                </div>
                            </div>
                            <div class="form-group-separator"></div>


                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="schoolnum">学号/职工号</label>
                                <div class="col-sm-10">
                                    <input required type="text" class="form-control "
                                           <c:if test="${edit==false }">disabled</c:if> name="schoolnum"
                                           value="${record.schoolnum}" id="schoolnum" placeholder="学号/职工号">
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="type">类型</label>
                                <div class="col-sm-10">
                                    <select required name="type" class="form-control " id="types">
                                        <option>请选择</option>
                                        <option value="0"
                                                <c:if test="${record.type==0}">selected</c:if> >校级管理员
                                        </option>
                                        <option value="1"
                                                <c:if test="${record.type==1}">selected</c:if> >二级学院管理员
                                        </option>
                                        <option value="2"
                                                <c:if test="${record.type==2}">selected</c:if> >专家
                                        </option>
                                        <option value="3"
                                                <c:if test="${record.type==3}">selected</c:if> >教师
                                        </option>
                                        <option value="4"
                                                <c:if test="${record.type==4}">selected</c:if> >学生
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group" id="xdiv">
                                <label class="col-sm-2 control-label" for="xueyuanid">学院</label>
                                <div class="col-sm-10">
                                    <select required class="form-control"
                                            <c:if test="${edit==false }">disabled</c:if> name="xueyuanid"
                                            id="xueyuanid">
                                        <option value="">请选择</option>
                                        <c:forEach items="${xueyuans}" var="s">
                                            <option value="${s.id }" <c:if
                                                    test="${s.id==record.xueyuanid}"> selected </c:if>>
                                                    ${s.name }
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group-separator" id="xdiv2"></div>
                            <div class="form-group" id="pdiv">
                                <label class="col-sm-2 control-label" for="proid">专业</label>
                                <div class="col-sm-10">
                                    <select required class="form-control"
                                            <c:if test="${edit==false }">disabled</c:if> name="proid" id="proid">
                                        <option value=""> 请选择</option>
                                        <c:forEach items="${pros}" var="s">
                                            <option value="${s.id }" <c:if
                                                    test="${s.id==record.proid}"> selected </c:if>>
                                                    ${s.name }
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group-separator" id="pdiv2"></div>
                            <div class="form-group" id="cdiv">
                                <label class="col-sm-2 control-label" for="clazzid">班级</label>
                                <div class="col-sm-10">
                                    <select required class="form-control"
                                            <c:if test="${edit==false }">disabled</c:if> name="clazzid" id="clazzid">
                                        <option value="">请选择</option>
                                        <c:forEach items="${clazzs}" var="s">
                                            <option value="${s.id }" <c:if
                                                    test="${s.id==record.clazzid}"> selected </c:if>>
                                                    ${s.name }
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group-separator" id="cdiv2"></div>


                            <div class="has-error">
                                <span class="help-block" style="color: red">${msg }</span>
                            </div>
                    </div>

                    <div class="form-group">
                        <c:if test="${edit==false }"><a href="${path }/admin/preuser"
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
        $("#xdiv").hide();
        $("#pdiv").hide();
        $("#cdiv").hide();
        $("#xdiv2").hide();
        $("#pdiv2").hide();
        $("#cdiv2").hide();
        $("#xueyuanid").attr("required", false);
        $("#proid").attr("required", false);
        $("#clazzid").attr("required", false);
        <c:if test="${record.type==3 || record.type==1}">
        $("#xdiv").show();
        $("#pdiv").hide();
        $("#cdiv").hide();
        $("#xdiv2").show();
        $("#pdiv2").hide();
        $("#cdiv2").hide();
        $("#proid").attr("required", true);
        $("#proid").val("");
        $("#clazzid").attr("required", true);
        $("#clazzid").val("");
        </c:if>
        <c:if test="${record.type==4}">
        $("#xdiv").show();
        $("#pdiv").show();
        $("#cdiv").show();
        $("#xdiv2").show();
        $("#pdiv2").show();
        $("#cdiv2").show();
        $("#xueyuanid").attr("required", true);
        $("#proid").attr("required", true);
        $("#clazzid").attr("required", true);
        </c:if>
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
            $("#clazzid").html('<option value="">请选择</option>');


        });
        $("#proid").on("change", function () {
            var clazzs = new Array();
            <c:forEach items="${clazzs}" var="s">
            clazzs.push({'proid': '${s.proid}', 'id': '${s.id}', 'name': '${s.name}'});
            </c:forEach>

            var id = $(this).val();
            var optionHtml = '<option value="">请选择</option>';
            for (var one in clazzs) {
                if (clazzs[one].proid == id) {
                    optionHtml += '<option value="' + clazzs[one].id + '">' + clazzs[one].name + '</option>';
                }
            }
            $("#clazzid").html(optionHtml);

        });
        $("#types").on("change", function () {
            var id = $(this).val();
            if (id == 0 || id == 2) {
                $("#xdiv").hide();
                $("#pdiv").hide();
                $("#cdiv").hide();
                $("#xdiv2").hide();
                $("#pdiv2").hide();
                $("#cdiv2").hide();
                $("#xueyuanid").attr("required", false);
                $("#xueyuanid").val("");
                $("#proid").attr("required", false);
                $("#proid").val("");
                $("#clazzid").attr("required", false);
                $("#clazzid").val("");
            }
            if (id == 1 || id == 3) {
                $("#xdiv").show();
                $("#pdiv").hide();
                $("#cdiv").hide();
                $("#xdiv2").show();
                $("#pdiv2").hide();
                $("#cdiv2").hide();
                $("#xueyuanid").attr("required", true);
                $("#xueyuanid").val("");
                $("#proid").attr("required", false);
                $("#proid").val("");
                $("#clazzid").attr("required", false);
                $("#clazzid").val("");
            }


            if (id == 4) {
                $("#xdiv").show();
                $("#pdiv").show();
                $("#cdiv").show();
                $("#xdiv2").show();
                $("#pdiv2").show();
                $("#cdiv2").show();
                $("#xueyuanid").attr("required", true);
                $("#xueyuanid").val("");
                $("#proid").attr("required", true);
                $("#proid").val("");
                $("#clazzid").attr("required", true);
                $("#clazzid").val("");
            }

        });


    });
</script>
</html>
