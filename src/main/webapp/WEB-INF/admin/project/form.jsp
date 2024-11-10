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
                              action="<c:if test="${edit==true }">${path }/admin/project/update</c:if><c:if test="${edit==false }">${path }/admin/project/add</c:if><c:if test="${edit==null }">${path }/admin/project/save</c:if>"
                              method="post">
                            <input type="hidden" name="id" value="${record.id }">
                            <input type="hidden" name="planid" value="${record.planid }">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="planid">创新计划</label>
                                <div class="col-sm-10">

                                    <c:forEach items="${plans}" var="s">
                                        <c:if test="${s.id==record.planid}">
                                            ${s.name }</c:if>

                                    </c:forEach>

                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="name">项目名</label>
                                <div class="col-sm-10">
                                    <input required type="text" class="form-control"
                                           <c:if test="${edit==false }">disabled</c:if> name="name"
                                           value="${record.name}" id="name" placeholder="项目名">
                                </div>
                            </div>
                            <div class="form-group-separator"></div>


                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="desc">项目说明</label>
                                <div class="col-sm-10">

                                    <div id="descdiv">
                                        ${record.desc}
                                    </div>
                                    <textarea class="textarea"
                                              <c:if test="${edit==false }">readonly</c:if> id="desctext" name="desc"
                                              style="display:none;width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">${record.desc}</textarea>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>


                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="teaid">指导老师</label>
                                <div class="col-sm-10">
                                    <select class="form-control"
                                            <c:if test="${edit==false }">disabled</c:if> name="teaid">
                                        <option value="">请选择</option>
                                        <c:forEach items="${teas}" var="s">
                                            <option value="${s.id }" <c:if
                                                    test="${s.id==record.teaid}"> selected </c:if>>
                                                    ${s.name }
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="has-error">
                                <span class="help-block">${msg }</span>
                            </div>

                            <div class="form-group">
                                <c:if test="${edit==false }">
                                    <a href="javascript:history.go(-1);" class="btn btn-gray btn-single">返回</a>
                                    <c:if test="${record.userid != loginUser.id &&record.status==4 && record.process==3}">
                                        <a href="${path }/admin/projectapply/view?id=${apply.id}"
                                           class="btn btn-warning btn-single">查看申请书</a>
                                    </c:if>
                                    <c:if test="${record.process>0}">
                                        <a href="${path }/admin/cglog?projectid=${record.id}"
                                           class="btn btn-warning btn-single">进展报告</a>

                                    </c:if>

                                    <c:if test="${record.userid == loginUser.id}">
                                        <c:if test="${record.type==0}">
                                            <c:if test="${apply==null}">
                                                <a href="${path }/admin/projectapply/add?projectid=${record.id}"
                                                   class="btn btn-blue btn-single">填写申请书</a>
                                            </c:if>
                                            <c:if test="${apply!=null}">
                                                <a href="${path }/admin/projectapply/view?id=${apply.id}"
                                                   class="btn btn-warning btn-single">查看申请书</a>
                                            </c:if>
                                        </c:if>
                                        <c:if test="${record.type>0}">
                                            <c:if test="${apply==null}">
                                                <a href="${path }/admin/highapply/add?projectid=${record.id}"
                                                   class="btn btn-blue btn-single">填写申请书</a>
                                            </c:if>
                                            <c:if test="${apply!=null}">
                                                <a href="${path }/admin/highapply/view?id=${apply.id}"
                                                   class="btn btn-warning btn-single">查看申请书</a>
                                            </c:if>
                                        </c:if>


                                        <c:if test="${midapply==null && record.process==2}">
                                            <c:if test="${plan.midsdate < now && now <plan.midedate}">
                                                <a href="${path }/admin/midapply/add?projectid=${record.id}"
                                                   class="btn btn-blue btn-single">填写中期检查</a>
                                            </c:if>

                                        </c:if>
                                        <c:if test="${midapply!=null}">
                                            <a href="${path }/admin/midapply/view?id=${midapply.id}"
                                               class="btn btn-warning btn-single">查看中期检查</a>
                                        </c:if>
                                        <c:if test="${changelog!=null}">
                                            <a href="${path }/admin/changelog/view?id=${changelog.id}"
                                               class="btn btn-warning btn-single">查看变更申请</a>
                                        </c:if>
                                        <c:if test="${endapply!=null}">
                                            <a href="${path }/admin/endapply/view?id=${endapply.id}"
                                               class="btn btn-warning btn-single">查看延期申请</a>
                                        </c:if>
                                        <c:if test="${record.status==0 && record.process==3}">
                                            <c:if test="${plan.endsdate < now && now <plan.endedate}">

                                                <a href="${path }/admin/project/update?status=1&id=${record.id}"
                                                   class="btn btn-blue btn-single">申请结题</a>
                                            </c:if>
                                            <a href="${path }/admin/endapply/add?projectid=${record.id}"
                                               class="btn btn-danger btn-single">延迟结题申请</a>


                                        </c:if>
                                        <c:if test="${changelog==null &&  record.status<4 && record.process>1}">

                                            <a href="${path }/admin/changelog/add?projectid=${record.id}"
                                               class="btn btn-success btn-single">成员变更申请</a>
                                        </c:if>
                                        <c:if test="${report==null && record.status==4 && record.process==3}">
                                            <a href="${path }/admin/report/add?projectid=${record.id}"
                                               class="btn btn-blue btn-single">填写心得</a>

                                        </c:if>
                                    </c:if>


                                    <a href="${path }/admin/cost?projectid=${record.id}&status=1"
                                       class="btn btn-success btn-single">预算记录</a>
                                    <a href="${path }/admin/files?projectid=${record.id}"
                                       class="btn btn-success btn-single">成果/附件</a>
                                    <c:if test="${ record.status<4 && record.process==3}">
                                        <a href="${path }/admin/report/view?projectid=${record.id}"
                                           class="btn btn-success btn-single">心得</a>
                                    </c:if>
                                    <c:if test="${  record.process==3}">
                                        <a href="${path }/admin/yjslog?projectid=${record.id}"
                                           class="btn btn-warning btn-single">成果验收记录</a>
                                    </c:if>

                                    <c:if test="${report!=null && record.status==4 && record.process==3}">
                                        <a href="${path }/admin/report/view?id=${report.id}"
                                           class="btn btn-warning btn-single">查看心得</a>
                                    </c:if>


                                    <c:if test="${record.status == 3 && record.process== 3 && loginUser.type==0}">
                                        <a href="${path }/admin/scorelog/add?projectid=${record.id}"
                                           class="btn btn-blue btn-single">分配专家</a>
                                    </c:if>
                                    <c:if test="${record.status == 3 && record.process!= 3 && loginUser.type==0 && record.process > 0}">
                                        <a href="${path }/admin/comment/add?projectid=${record.id}"
                                           class="btn btn-blue btn-single">校级审批</a>
                                    </c:if>
                                    <c:if test="${record.status == 2 && loginUser.type==1}">
                                        <a href="${path }/admin/comment/add?projectid=${record.id}"
                                           class="btn btn-blue btn-single">院级审批</a>
                                    </c:if>
                                    <c:if test="${record.status == 1 && loginUser.type==3 }">
                                        <a href="${path }/admin/comment/add?projectid=${record.id}"
                                           class="btn btn-blue btn-single">老师审批</a>
                                    </c:if>
                                </c:if>
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
        $('#created').datepicker({
            language: 'zh-CN',
            autoclose: true,
            format: 'yyyy/mm/dd'
        });
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
        $('#updated').datepicker({
            language: 'zh-CN',
            autoclose: true,
            format: 'yyyy/mm/dd'
        });

    });
</script>
</html>
