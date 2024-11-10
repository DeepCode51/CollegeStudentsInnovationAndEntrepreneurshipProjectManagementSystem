<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<div class="row">
    <div class="col-xs-6">
        <div class="dataTables_info" id="example2_info" role="status" aria-live="polite">展示 ${(datas.page-1)*datas.pagesize +1} 到  ${(datas.page-1)*datas.pagesize+datas.pagesize},共${datas.totalPage}页  ${datas.total} 结果</div>

    </div>
    <div class="col-xs-6">
        <div class="dataTables_paginate paging_simple_numbers" id="example-2_paginate">
            <ul class="pagination">
                <c:choose>
                    <c:when test="${datas.totalPage==0 }">
                    </c:when>
                    <c:when test="${datas.totalPage==1 }">
                        <li class="paginate_button active"><a href="javascript:;" data-page="1">1</a></li>
                    </c:when>
                    <c:when test="${datas.totalPage==2}">
                        <c:if test="${datas.page==2}"><li class="paginate_button previous"><a href="javascript:;" class="search" data-page="1">前一页</a></li></c:if>
                        <li class="paginate_button <c:if test="${datas.page==1}"> active</c:if>"><a href="javascript:;" class="search" data-page="1">1</a></li>
                        <li class="paginate_button <c:if test="${datas.page==2}"> active</c:if>""><a href="javascript:;" class="search" data-page="2">2</a></li>
                    </c:when>
                    <c:when test="${datas.totalPage==datas.page}">
                        <li class="paginate_button previous"><a href="javascript:;" class="search" data-page="${datas.page-1}">前一页</a></li>
                        <c:if test="${datas.totalPage>=3 }">
                            <li class="paginate_button "><span>…</span></li>
                        </c:if>
                        <li class="paginate_button "><a href="javascript:;" class="search" data-page="${datas.page-1}">${datas.page-1}</a></li>
                        <li class="paginate_button active"><a href="javascript:;" class="search" data-page="${datas.page}">${datas.page}</a></li>
                    </c:when>
                    <c:otherwise>
                        <c:choose>
                            <c:when test="${datas.page==1 }">
                                <li class="paginate_button active"><a href="javascript:;" class="search" data-page="1">1</a></li>
                                <li class="paginate_button "><a href="javascript:;" class="search" data-page="${datas.page+1}">${datas.page+1}</a></li>
                                <li class="paginate_button "><span>…</span></li>
                                <li class="paginate_button next"><a href="javascript:;" class="search" data-page="${datas.page+1}">后一页</a></li>
                            </c:when>
                            <c:when test="${datas.page==datas.totalPage }">
                                <li class="paginate_button previous"><a href="javascript:;" class="search" data-page="${datas.page-1}">前一页</a></li>
                                <li class="paginate_button "><span>…</span></li>
                                <li class="paginate_button "><a href="javascript:;" class="search" data-page="${datas.page-1}">${datas.page-1}</a></li>
                                <li class="paginate_button active"><a href="javascript:;" class="search" data-page="${datas.page}">${datas.page}</a></li>
                            </c:when>
                            <c:otherwise>
                                <li class="paginate_button previous"><a href="javascript:;" class="search" data-page="${datas.page-1}">前一页</a></li>
                                <c:if test="${datas.totalPage>3 && 1!=datas.totalPage-1}}">
                                    <li class="paginate_button "><span>…</span></li>
                                </c:if>
                                <li class="paginate_button "><a href="javascript:;" class="search" data-page="${datas.page-1}">${datas.page-1}</a></li>
                                <li class="paginate_button active"><a href="javascript:;" class="search" data-page="${datas.page}">${datas.page}</a></li>
                                <li class="paginate_button "><a href="javascript:;" class="search" data-page="${datas.page+1}">${datas.page+1}</a></li>
                                <c:if test="${datas.totalPage>3 && datas.page<datas.totalPage-1}">
                                    <li class="paginate_button "><span>…</span></li>
                                </c:if>
                                <li class="paginate_button next"><a href="javascript:;" class="search" data-page="${datas.page+1}">后一页</a></li>
                            </c:otherwise>
                        </c:choose>

                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</div>


