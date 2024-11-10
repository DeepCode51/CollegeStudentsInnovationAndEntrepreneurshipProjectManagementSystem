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
                        <form role="form" class="form-horizontal" enctype="multipart/form-data"
                              action="<c:if test="${edit==true }">${path }/admin/plan/update</c:if><c:if test="${edit==false }">${path }/admin/plan/add</c:if><c:if test="${edit==null }">${path }/admin/plan/save</c:if>"
                              method="post">  <input type="hidden" name="id" value="${record.id }">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="name">计划名称</label>
                                            <div class="col-sm-10">
                                            <input required type="text" class="form-control" <c:if test="${edit==false }">disabled</c:if> name="name" value="${record.name}" id="name" placeholder="计划名称">
                                            </div>
                                        </div>
                                        <div class="form-group-separator"></div>


                                        <div class="form-group">
                                           <label class="col-sm-2 control-label" for="desc">详情</label>
                                            <div class="col-sm-10">

                                                <div id="descdiv">
                                                ${record.desc}
                                                </div>
                                                <textarea   class="textarea" <c:if test="${edit==false }">readonly</c:if> id="desctext" name="desc" style="display:none;width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">${record.desc}</textarea>
                                           </div>
                                        </div>
                                        <div class="form-group-separator"></div>


                                        <div class="form-group">
                                           <label class="col-sm-2 control-label" for="fileurl">附件</label>
                                            <div class="col-sm-10">

                                                <input  type="file" class="form-control" <c:if test="${edit==false }">disabled</c:if> name="file">
                                            </div>
                                        </div>
                                        <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="type">级别</label>
                                <div class="col-sm-10">
                                    <select class="form-control" name="type">
                                        <option value="">请选择</option>

                                        <option value="0"
                                                <c:if test="${record.type==0}">selected</c:if> >校级

                                        </option>
                                        <option value="1"
                                                <c:if test="${record.type==1}">selected</c:if> >省级
                                        </option>
                                        <option value="2"
                                                <c:if test="${record.type==2}">selected</c:if> >国家级
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="type">类型</label>
                                <div class="col-sm-10">
                                    <select class="form-control" name="cate">
                                        <option value="">请选择</option>

                                        <option value="0"
                                                <c:if test="${record.cate==0}">selected</c:if> >创新计划

                                        </option>
                                        <option value="1"
                                                <c:if test="${record.cate==1}">selected</c:if> >创业训练
                                        </option>
                                        <option value="2"
                                                <c:if test="${record.cate==2}">selected</c:if> >创业实践
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                                        <div class="form-group">
                                           <label class="col-sm-2 control-label" for="midsdate">期中开始时间</label>
                                                    <div class="col-sm-10">
                                                        <div class="input-group">
                                                            <input required type="text" class="form-control " <c:if test="${edit==false }">disabled</c:if> name="midsdate" value='<fmt:formatDate value="${record.midsdate }" pattern="yyyy/MM/dd"/>' id="midsdate" placeholder="">
                                                            <div class="input-group-addon">
                                                                <a href="#"><i class="linecons-calendar"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>

                                        </div>
                                        <div class="form-group-separator"></div>


                                        <div class="form-group">
                                           <label class="col-sm-2 control-label" for="midedate">期中结束时间</label>
                                                    <div class="col-sm-10">
                                                        <div class="input-group">
                                                            <input required type="text" class="form-control " <c:if test="${edit==false }">disabled</c:if> name="midedate" value='<fmt:formatDate value="${record.midedate }" pattern="yyyy/MM/dd"/>' id="midedate" placeholder="">
                                                            <div class="input-group-addon">
                                                                <a href="#"><i class="linecons-calendar"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>

                                        </div>
                                        <div class="form-group-separator"></div>


                                        <div class="form-group">
                                           <label class="col-sm-2 control-label" for="endsdate">结题开始时间</label>
                                                    <div class="col-sm-10">
                                                        <div class="input-group">
                                                            <input required type="text" class="form-control " <c:if test="${edit==false }">disabled</c:if> name="endsdate" value='<fmt:formatDate value="${record.endsdate }" pattern="yyyy/MM/dd"/>' id="endsdate" placeholder="">
                                                            <div class="input-group-addon">
                                                                <a href="#"><i class="linecons-calendar"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>

                                        </div>
                                        <div class="form-group-separator"></div>


                                        <div class="form-group">
                                           <label class="col-sm-2 control-label" for="endedate">结题结束时间</label>
                                                    <div class="col-sm-10">
                                                        <div class="input-group">
                                                            <input required type="text" class="form-control " <c:if test="${edit==false }">disabled</c:if> name="endedate" value='<fmt:formatDate value="${record.endedate }" pattern="yyyy/MM/dd"/>' id="endedate" placeholder="">
                                                            <div class="input-group-addon">
                                                                <a href="#"><i class="linecons-calendar"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>

                                        </div>
                                        <div class="form-group-separator"></div>


                                <div class="has-error">
                                    <span class="help-block">${msg }</span>
                                </div>


                            <div class="form-group">
                                <c:if test="${edit==false }"><a href="${path }/admin/plan" class="btn btn-gray btn-single">返回</a></c:if>
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
            $('#created').datepicker({
            language: 'zh-CN',
                    autoclose: true,
                format:'yyyy/mm/dd'
        });
            $('#midsdate').datepicker({
            language: 'zh-CN',
                    autoclose: true,
                format:'yyyy/mm/dd'
        });
            $('#midedate').datepicker({
            language: 'zh-CN',
                    autoclose: true,
                format:'yyyy/mm/dd'
        });
            $('#endsdate').datepicker({
            language: 'zh-CN',
                    autoclose: true,
                format:'yyyy/mm/dd'
        });
            $('#endedate').datepicker({
            language: 'zh-CN',
                    autoclose: true,
                format:'yyyy/mm/dd'
        });

    });
</script>
</html>
