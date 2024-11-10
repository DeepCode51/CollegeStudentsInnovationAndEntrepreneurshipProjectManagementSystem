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
                              action="<c:if test="${edit==true }">${path }/admin/comment/update</c:if><c:if test="${edit==false }">${path }/admin/comment/add</c:if><c:if test="${edit==null }">${path }/admin/comment/save</c:if>"
                              method="post">
                            <input type="hidden" name="id" value="${record.id }">
                            <input type="hidden" name="projectid" value="${record.projectid }">
                            <input type="hidden" name="preuserid" value="${loginUser.id }">

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="comment">反馈意见</label>
                                <div class="col-sm-10">

                                    <div id="commentdiv">
                                        ${record.comment}
                                    </div>
                                    <textarea class="textarea"
                                              <c:if test="${edit==false }">readonly</c:if> id="commenttext"
                                              name="comment"
                                              style="display:none;width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">${record.comment}</textarea>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>


                            <div class="has-error">
                                <span class="help-block">${msg }</span>
                            </div>
                    </div>

                    <div class="form-group">
                        <c:if test="${edit==false }"><a href="${path }/admin/comment"
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
        var E = window.wangEditor
        var commenteditor = new E('#commentdiv')
        var commenttext = $('#commenttext')
        commenteditor.customConfig.zIndex = 0

        commenteditor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            commenttext.val(html)
        }

        commenteditor.create()
        // 初始化 textarea 的值
        commenttext.val(commenteditor.txt.html())
        <c:if test="${edit==false }">
        commenteditor.$textElem.attr('contenteditable', false)
        </c:if>
        $('#created').datepicker({
            language: 'zh-CN',
            autoclose: true,
            format: 'yyyy/mm/dd'
        });

    });
</script>
</html>
