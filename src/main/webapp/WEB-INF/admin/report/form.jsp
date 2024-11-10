<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                        <form role="form" class="form-horizontal"  action="<c:if test="${edit==true }">${path }/admin/report/update</c:if><c:if test="${edit==false }">${path }/admin/report/add</c:if><c:if test="${edit==null }">${path }/admin/report/save</c:if>" method="post">
                            <input type="hidden" name="id" value="${record.id }">
                            <input type="hidden" name="projectid" value="${record.projectid }">
                                        <div class="form-group">
                                           <label class="col-sm-2 control-label" for="desc"></label>
                                            <div class="col-sm-10">

                                                <div id="descdiv">
                                                ${record.desc}
                                                </div>
                                                <textarea   class="textarea" <c:if test="${edit==false }">readonly</c:if> id="desctext" name="desc" style="display:none;width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">${record.desc}</textarea>
                                           </div>
                                        </div>
                                        <div class="form-group-separator"></div>





                                <div class="has-error">
                                    <span class="help-block">${msg }</span>
                                </div>


                            <div class="form-group">
                                <c:if test="${edit==false }"><a href="javascript:history.go(-1);" class="btn btn-gray btn-single">返回</a></c:if>
                                <c:if test="${edit==true || edit==null}"><button type="submit" class="btn btn-info btn-single pull-right">保存</button></c:if>
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
        var E = window.wangEditor
        var desceditor = new E('#descdiv')
        var desctext = $('#desctext')
        desceditor.customConfig.zIndex = 0

        desceditor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            desctext.val(html)
        }

        desceditor.create()
        // 初始化 textarea 的值
        desctext.val(desceditor.txt.html())
        <c:if test="${edit==false }">
                desceditor.$textElem.attr('contenteditable', false)
                </c:if>

    });
</script>
</html>
