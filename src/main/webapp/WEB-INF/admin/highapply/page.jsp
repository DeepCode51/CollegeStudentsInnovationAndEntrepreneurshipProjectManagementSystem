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

            <form class="form-horizontal" method="post" action="${path }/admin/highapply">
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
                            <label class="col-xs-1 control-label" for="projectname"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="projectname">
                            </div>
                            <label class="col-xs-1 control-label" for="preusername"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="preusername">
                            </div>
                            <label class="col-xs-1 control-label" for="xueyuan">所在学院</label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="xueyuan">
                            </div>
                            <label class="col-xs-1 control-label" for="utel"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="utel">
                            </div>
                            <label class="col-xs-1 control-label" for="umail"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="umail">
                            </div>
                            <label class="col-xs-1 control-label" for="tea"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="tea">
                            </div>
                            <label class="col-xs-1 control-label" for="tealevel"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="tealevel">
                            </div>
                            <label class="col-xs-1 control-label" for="teadw"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teadw">
                            </div>
                            <label class="col-xs-1 control-label" for="teatel"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teatel">
                            </div>
                            <label class="col-xs-1 control-label" for="teamail"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teamail">
                            </div>
                            <label class="col-xs-1 control-label" for="created"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="created">
                            </div>
                            <label class="col-xs-1 control-label" for="protype"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="protype">
                            </div>
                            <label class="col-xs-1 control-label" for="prolevel"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="prolevel">
                            </div>
                            <label class="col-xs-1 control-label" for="xingming"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="xingming">
                            </div>
                            <label class="col-xs-1 control-label" for="xingbie"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="xingbie">
                            </div>
                            <label class="col-xs-1 control-label" for="mingzhu"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="mingzhu">
                            </div>
                            <label class="col-xs-1 control-label" for="sfz"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="sfz">
                            </div>
                            <label class="col-xs-1 control-label" for="szxy"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="szxy">
                            </div>
                            <label class="col-xs-1 control-label" for="xh"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="xh">
                            </div>
                            <label class="col-xs-1 control-label" for="nj"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="nj">
                            </div>
                            <label class="col-xs-1 control-label" for="zy"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zy">
                            </div>
                            <label class="col-xs-1 control-label" for="dh"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="dh">
                            </div>
                            <label class="col-xs-1 control-label" for="sj"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="sj">
                            </div>
                            <label class="col-xs-1 control-label" for="email"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="email">
                            </div>
                            <label class="col-xs-1 control-label" for="sstart1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="sstart1">
                            </div>
                            <label class="col-xs-1 control-label" for="send1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="send1">
                            </div>
                            <label class="col-xs-1 control-label" for="sstart2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="sstart2">
                            </div>
                            <label class="col-xs-1 control-label" for="send2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="send2">
                            </div>
                            <label class="col-xs-1 control-label" for="sstart3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="sstart3">
                            </div>
                            <label class="col-xs-1 control-label" for="send3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="send3">
                            </div>
                            <label class="col-xs-1 control-label" for="school1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="school1">
                            </div>
                            <label class="col-xs-1 control-label" for="school2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="school2">
                            </div>
                            <label class="col-xs-1 control-label" for="school3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="school3">
                            </div>
                            <label class="col-xs-1 control-label" for="remark1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="remark1">
                            </div>
                            <label class="col-xs-1 control-label" for="remark2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="remark2">
                            </div>
                            <label class="col-xs-1 control-label" for="remark3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="remark3">
                            </div>
                            <label class="col-xs-1 control-label" for="kstart1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kstart1">
                            </div>
                            <label class="col-xs-1 control-label" for="kend1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kend1">
                            </div>
                            <label class="col-xs-1 control-label" for="kstart2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kstart2">
                            </div>
                            <label class="col-xs-1 control-label" for="kend2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kend2">
                            </div>
                            <label class="col-xs-1 control-label" for="kstart3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kstart3">
                            </div>
                            <label class="col-xs-1 control-label" for="kend3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kend3">
                            </div>
                            <label class="col-xs-1 control-label" for="kstart4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kstart4">
                            </div>
                            <label class="col-xs-1 control-label" for="kend4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kend4">
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
                            <label class="col-xs-1 control-label" for="from1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="from1">
                            </div>
                            <label class="col-xs-1 control-label" for="from2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="from2">
                            </div>
                            <label class="col-xs-1 control-label" for="from3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="from3">
                            </div>
                            <label class="col-xs-1 control-label" for="from4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="from4">
                            </div>
                            <label class="col-xs-1 control-label" for="on1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="on1">
                            </div>
                            <label class="col-xs-1 control-label" for="on2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="on2">
                            </div>
                            <label class="col-xs-1 control-label" for="on3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="on3">
                            </div>
                            <label class="col-xs-1 control-label" for="on4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="on4">
                            </div>
                            <label class="col-xs-1 control-label" for="result1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="result1">
                            </div>
                            <label class="col-xs-1 control-label" for="result2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="result2">
                            </div>
                            <label class="col-xs-1 control-label" for="result3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="result3">
                            </div>
                            <label class="col-xs-1 control-label" for="result4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="result4">
                            </div>
                            <label class="col-xs-1 control-label" for="meb1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="meb1">
                            </div>
                            <label class="col-xs-1 control-label" for="num1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="num1">
                            </div>
                            <label class="col-xs-1 control-label" for="sex1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="sex1">
                            </div>
                            <label class="col-xs-1 control-label" for="sfz1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="sfz1">
                            </div>
                            <label class="col-xs-1 control-label" for="xy1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="xy1">
                            </div>
                            <label class="col-xs-1 control-label" for="nj1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="nj1">
                            </div>
                            <label class="col-xs-1 control-label" for="zy1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zy1">
                            </div>
                            <label class="col-xs-1 control-label" for="dh1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="dh1">
                            </div>
                            <label class="col-xs-1 control-label" for="sj1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="sj1">
                            </div>
                            <label class="col-xs-1 control-label" for="email1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="email1">
                            </div>
                            <label class="col-xs-1 control-label" for="fg1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="fg1">
                            </div>
                            <label class="col-xs-1 control-label" for="qm1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="qm1">
                            </div>
                            <label class="col-xs-1 control-label" for="kymc1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kymc1">
                            </div>
                            <label class="col-xs-1 control-label" for="qz1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="qz1">
                            </div>
                            <label class="col-xs-1 control-label" for="cg1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cg1">
                            </div>
                            <label class="col-xs-1 control-label" for="kymc2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kymc2">
                            </div>
                            <label class="col-xs-1 control-label" for="qz2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="qz2">
                            </div>
                            <label class="col-xs-1 control-label" for="cg2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cg2">
                            </div>
                            <label class="col-xs-1 control-label" for="kymc3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kymc3">
                            </div>
                            <label class="col-xs-1 control-label" for="qz3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="qz3">
                            </div>
                            <label class="col-xs-1 control-label" for="cg3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cg3">
                            </div>
                            <label class="col-xs-1 control-label" for="meb2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="meb2">
                            </div>
                            <label class="col-xs-1 control-label" for="num2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="num2">
                            </div>
                            <label class="col-xs-1 control-label" for="sex2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="sex2">
                            </div>
                            <label class="col-xs-1 control-label" for="sfz2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="sfz2">
                            </div>
                            <label class="col-xs-1 control-label" for="xy2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="xy2">
                            </div>
                            <label class="col-xs-1 control-label" for="nj2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="nj2">
                            </div>
                            <label class="col-xs-1 control-label" for="zy2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zy2">
                            </div>
                            <label class="col-xs-1 control-label" for="dh2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="dh2">
                            </div>
                            <label class="col-xs-1 control-label" for="sj2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="sj2">
                            </div>
                            <label class="col-xs-1 control-label" for="email2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="email2">
                            </div>
                            <label class="col-xs-1 control-label" for="fg2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="fg2">
                            </div>
                            <label class="col-xs-1 control-label" for="qm2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="qm2">
                            </div>
                            <label class="col-xs-1 control-label" for="kymc4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kymc4">
                            </div>
                            <label class="col-xs-1 control-label" for="qz4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="qz4">
                            </div>
                            <label class="col-xs-1 control-label" for="cg4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cg4">
                            </div>
                            <label class="col-xs-1 control-label" for="kymc5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kymc5">
                            </div>
                            <label class="col-xs-1 control-label" for="qz5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="qz5">
                            </div>
                            <label class="col-xs-1 control-label" for="cg5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cg5">
                            </div>
                            <label class="col-xs-1 control-label" for="kymc6"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="kymc6">
                            </div>
                            <label class="col-xs-1 control-label" for="qz6"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="qz6">
                            </div>
                            <label class="col-xs-1 control-label" for="cg6"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cg6">
                            </div>
                            <label class="col-xs-1 control-label" for="xmzy"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="xmzy">
                            </div>
                            <label class="col-xs-1 control-label" for="yjfa"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yjfa">
                            </div>
                            <label class="col-xs-1 control-label" for="yjsj"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yjsj">
                            </div>
                            <label class="col-xs-1 control-label" for="ap"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="ap">
                            </div>
                            <label class="col-xs-1 control-label" for="tj"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="tj">
                            </div>
                            <label class="col-xs-1 control-label" for="cgxs"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cgxs">
                            </div>
                            <label class="col-xs-1 control-label" for="jfze"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="jfze">
                            </div>
                            <label class="col-xs-1 control-label" for="rjjf"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="rjjf">
                            </div>
                            <label class="col-xs-1 control-label" for="dxscxcyxljhzz"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="dxscxcyxljhzz">
                            </div>
                            <label class="col-xs-1 control-label" for="sqxxzz"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="sqxxzz">
                            </div>
                            <label class="col-xs-1 control-label" for="xxptzz"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="xxptzz">
                            </div>
                            <label class="col-xs-1 control-label" for="jsktf"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="jsktf">
                            </div>
                            <label class="col-xs-1 control-label" for="qt"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="qt">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm1">
                            </div>
                            <label class="col-xs-1 control-label" for="zc1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc1">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy1">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm2">
                            </div>
                            <label class="col-xs-1 control-label" for="zc2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc2">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy2">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm3">
                            </div>
                            <label class="col-xs-1 control-label" for="zc3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc3">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy3">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm4">
                            </div>
                            <label class="col-xs-1 control-label" for="zc4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc4">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy4">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm5">
                            </div>
                            <label class="col-xs-1 control-label" for="zc5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc5">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy5">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm6"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm6">
                            </div>
                            <label class="col-xs-1 control-label" for="zc6"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc6">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy6"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy6">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm7"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm7">
                            </div>
                            <label class="col-xs-1 control-label" for="zc7"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc7">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy7"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy7">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm8"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm8">
                            </div>
                            <label class="col-xs-1 control-label" for="zc8"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc8">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy8"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy8">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm9"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm9">
                            </div>
                            <label class="col-xs-1 control-label" for="zc9"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc9">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy9"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy9">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm10"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm10">
                            </div>
                            <label class="col-xs-1 control-label" for="zc10"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc10">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy10"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy10">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm11"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm11">
                            </div>
                            <label class="col-xs-1 control-label" for="zc11"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc11">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy11"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy11">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm12"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm12">
                            </div>
                            <label class="col-xs-1 control-label" for="zc12"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc12">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy12"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy12">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm13"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm13">
                            </div>
                            <label class="col-xs-1 control-label" for="zc13"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc13">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy13"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy13">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm14"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm14">
                            </div>
                            <label class="col-xs-1 control-label" for="zc14"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc14">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy14"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy14">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm15"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm15">
                            </div>
                            <label class="col-xs-1 control-label" for="zc15"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc15">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy15"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy15">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm16"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm16">
                            </div>
                            <label class="col-xs-1 control-label" for="zc16"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc16">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy16"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy16">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm17"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm17">
                            </div>
                            <label class="col-xs-1 control-label" for="zc17"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc17">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy17"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy17">
                            </div>
                            <label class="col-xs-1 control-label" for="yszckm18"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="yszckm18">
                            </div>
                            <label class="col-xs-1 control-label" for="zc18"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zc18">
                            </div>
                            <label class="col-xs-1 control-label" for="zcyy18"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zcyy18">
                            </div>
                            <label class="col-xs-1 control-label" for="teaname"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teaname">
                            </div>
                            <label class="col-xs-1 control-label" for="teasex"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teasex">
                            </div>
                            <label class="col-xs-1 control-label" for="teamz"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teamz">
                            </div>
                            <label class="col-xs-1 control-label" for="teacsny"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teacsny">
                            </div>
                            <label class="col-xs-1 control-label" for="teaxy"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teaxy">
                            </div>
                            <label class="col-xs-1 control-label" for="teaxl"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teaxl">
                            </div>
                            <label class="col-xs-1 control-label" for="teazc"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teazc">
                            </div>
                            <label class="col-xs-1 control-label" for="teazw"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teazw">
                            </div>
                            <label class="col-xs-1 control-label" for="teafx"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teafx">
                            </div>
                            <label class="col-xs-1 control-label" for="teadz"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teadz">
                            </div>
                            <label class="col-xs-1 control-label" for="teayb"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teayb">
                            </div>
                            <label class="col-xs-1 control-label" for="teamail2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teamail2">
                            </div>
                            <label class="col-xs-1 control-label" for="teadh"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teadh">
                            </div>
                            <label class="col-xs-1 control-label" for="teasj"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teasj">
                            </div>
                            <label class="col-xs-1 control-label" for="teanowdesc"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teanowdesc">
                            </div>
                            <label class="col-xs-1 control-label" for="teajy"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teajy">
                            </div>
                            <label class="col-xs-1 control-label" for="teajy2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="teajy2">
                            </div>
                            <label class="col-xs-1 control-label" for="xyyj"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="xyyj">
                            </div>
                            <label class="col-xs-1 control-label" for="tjfzr"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="tjfzr">
                            </div>
                            <label class="col-xs-1 control-label" for="xyrq"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="xyrq">
                            </div>
                            <label class="col-xs-1 control-label" for="tearq"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="tearq">
                            </div>
                            <label class="col-xs-1 control-label" for="xxrq"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="xxrq">
                            </div>
                            <label class="col-xs-1 control-label" for="zjyj"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zjyj">
                            </div>
                            <label class="col-xs-1 control-label" for="zjrq"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="zjrq">
                            </div>
                            <label class="col-xs-1 control-label" for="c1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c1">
                            </div>
                            <label class="col-xs-1 control-label" for="c2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c2">
                            </div>
                            <label class="col-xs-1 control-label" for="c3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c3">
                            </div>
                            <label class="col-xs-1 control-label" for="c4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c4">
                            </div>
                            <label class="col-xs-1 control-label" for="c5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c5">
                            </div>
                            <label class="col-xs-1 control-label" for="c6"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c6">
                            </div>
                            <label class="col-xs-1 control-label" for="c7"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c7">
                            </div>
                            <label class="col-xs-1 control-label" for="c8"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c8">
                            </div>
                            <label class="col-xs-1 control-label" for="c9"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c9">
                            </div>
                            <label class="col-xs-1 control-label" for="c10"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c10">
                            </div>
                            <label class="col-xs-1 control-label" for="c11"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c11">
                            </div>
                            <label class="col-xs-1 control-label" for="c12"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c12">
                            </div>
                            <label class="col-xs-1 control-label" for="c13"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c13">
                            </div>
                            <label class="col-xs-1 control-label" for="c14"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c14">
                            </div>
                            <label class="col-xs-1 control-label" for="lb1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb1">
                            </div>
                            <label class="col-xs-1 control-label" for="lb2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb2">
                            </div>
                            <label class="col-xs-1 control-label" for="lb3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb3">
                            </div>
                            <label class="col-xs-1 control-label" for="lb4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb4">
                            </div>
                            <label class="col-xs-1 control-label" for="lb5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb5">
                            </div>
                            <label class="col-xs-1 control-label" for="lb6"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb6">
                            </div>
                            <label class="col-xs-1 control-label" for="lb7"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb7">
                            </div>
                            <label class="col-xs-1 control-label" for="lb8"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb8">
                            </div>
                            <label class="col-xs-1 control-label" for="lb9"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb9">
                            </div>
                            <label class="col-xs-1 control-label" for="lb10"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb10">
                            </div>
                            <label class="col-xs-1 control-label" for="lb11"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb11">
                            </div>
                            <label class="col-xs-1 control-label" for="lb12"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb12">
                            </div>
                            <label class="col-xs-1 control-label" for="lb13"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb13">
                            </div>
                            <label class="col-xs-1 control-label" for="lb14"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb14">
                            </div>
                            <label class="col-xs-1 control-label" for="s1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s1">
                            </div>
                            <label class="col-xs-1 control-label" for="s2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s2">
                            </div>
                            <label class="col-xs-1 control-label" for="s3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s3">
                            </div>
                            <label class="col-xs-1 control-label" for="s4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s4">
                            </div>
                            <label class="col-xs-1 control-label" for="s5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s5">
                            </div>
                            <label class="col-xs-1 control-label" for="s6"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s6">
                            </div>
                            <label class="col-xs-1 control-label" for="s7"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s7">
                            </div>
                            <label class="col-xs-1 control-label" for="s8"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s8">
                            </div>
                            <label class="col-xs-1 control-label" for="s9"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s9">
                            </div>
                            <label class="col-xs-1 control-label" for="s10"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s10">
                            </div>
                            <label class="col-xs-1 control-label" for="s11"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s11">
                            </div>
                            <label class="col-xs-1 control-label" for="s12"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s12">
                            </div>
                            <label class="col-xs-1 control-label" for="s13"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s13">
                            </div>
                            <label class="col-xs-1 control-label" for="s14"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s14">
                            </div>
                            <label class="col-xs-1 control-label" for="cj1"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj1">
                            </div>
                            <label class="col-xs-1 control-label" for="cj2"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj2">
                            </div>
                            <label class="col-xs-1 control-label" for="cj3"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj3">
                            </div>
                            <label class="col-xs-1 control-label" for="cj4"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj4">
                            </div>
                            <label class="col-xs-1 control-label" for="cj5"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj5">
                            </div>
                            <label class="col-xs-1 control-label" for="cj6"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj6">
                            </div>
                            <label class="col-xs-1 control-label" for="cj7"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj7">
                            </div>
                            <label class="col-xs-1 control-label" for="cj8"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj8">
                            </div>
                            <label class="col-xs-1 control-label" for="cj9"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj9">
                            </div>
                            <label class="col-xs-1 control-label" for="cj10"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj10">
                            </div>
                            <label class="col-xs-1 control-label" for="cj11"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj11">
                            </div>
                            <label class="col-xs-1 control-label" for="cj12"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj12">
                            </div>
                            <label class="col-xs-1 control-label" for="cj13"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj13">
                            </div>
                            <label class="col-xs-1 control-label" for="cj14"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj14">
                            </div>
                            <label class="col-xs-1 control-label" for="c15"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c15">
                            </div>
                            <label class="col-xs-1 control-label" for="c16"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c16">
                            </div>
                            <label class="col-xs-1 control-label" for="c17"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c17">
                            </div>
                            <label class="col-xs-1 control-label" for="c18"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c18">
                            </div>
                            <label class="col-xs-1 control-label" for="c19"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c19">
                            </div>
                            <label class="col-xs-1 control-label" for="c20"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c20">
                            </div>
                            <label class="col-xs-1 control-label" for="c21"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c21">
                            </div>
                            <label class="col-xs-1 control-label" for="c22"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c22">
                            </div>
                            <label class="col-xs-1 control-label" for="c23"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c23">
                            </div>
                            <label class="col-xs-1 control-label" for="c24"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c24">
                            </div>
                            <label class="col-xs-1 control-label" for="c25"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c25">
                            </div>
                            <label class="col-xs-1 control-label" for="c26"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c26">
                            </div>
                            <label class="col-xs-1 control-label" for="c27"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c27">
                            </div>
                            <label class="col-xs-1 control-label" for="c28"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="c28">
                            </div>
                            <label class="col-xs-1 control-label" for="lb15"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb15">
                            </div>
                            <label class="col-xs-1 control-label" for="lb16"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb16">
                            </div>
                            <label class="col-xs-1 control-label" for="lb17"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb17">
                            </div>
                            <label class="col-xs-1 control-label" for="lb18"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb18">
                            </div>
                            <label class="col-xs-1 control-label" for="lb19"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb19">
                            </div>
                            <label class="col-xs-1 control-label" for="lb20"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb20">
                            </div>
                            <label class="col-xs-1 control-label" for="lb21"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb21">
                            </div>
                            <label class="col-xs-1 control-label" for="lb22"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb22">
                            </div>
                            <label class="col-xs-1 control-label" for="lb23"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb23">
                            </div>
                            <label class="col-xs-1 control-label" for="lb24"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb24">
                            </div>
                            <label class="col-xs-1 control-label" for="lb25"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb25">
                            </div>
                            <label class="col-xs-1 control-label" for="lb26"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb26">
                            </div>
                            <label class="col-xs-1 control-label" for="lb27"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb27">
                            </div>
                            <label class="col-xs-1 control-label" for="lb28"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="lb28">
                            </div>
                            <label class="col-xs-1 control-label" for="s15"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s15">
                            </div>
                            <label class="col-xs-1 control-label" for="s16"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s16">
                            </div>
                            <label class="col-xs-1 control-label" for="s17"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s17">
                            </div>
                            <label class="col-xs-1 control-label" for="s18"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s18">
                            </div>
                            <label class="col-xs-1 control-label" for="s19"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s19">
                            </div>
                            <label class="col-xs-1 control-label" for="s20"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s20">
                            </div>
                            <label class="col-xs-1 control-label" for="s21"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s21">
                            </div>
                            <label class="col-xs-1 control-label" for="s22"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s22">
                            </div>
                            <label class="col-xs-1 control-label" for="s23"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s23">
                            </div>
                            <label class="col-xs-1 control-label" for="s24"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s24">
                            </div>
                            <label class="col-xs-1 control-label" for="s25"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s25">
                            </div>
                            <label class="col-xs-1 control-label" for="s26"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s26">
                            </div>
                            <label class="col-xs-1 control-label" for="s27"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s27">
                            </div>
                            <label class="col-xs-1 control-label" for="s28"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="s28">
                            </div>
                            <label class="col-xs-1 control-label" for="cj15"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj15">
                            </div>
                            <label class="col-xs-1 control-label" for="cj16"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj16">
                            </div>
                            <label class="col-xs-1 control-label" for="cj17"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj17">
                            </div>
                            <label class="col-xs-1 control-label" for="cj18"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj18">
                            </div>
                            <label class="col-xs-1 control-label" for="cj19"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj19">
                            </div>
                            <label class="col-xs-1 control-label" for="cj20"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj20">
                            </div>
                            <label class="col-xs-1 control-label" for="cj21"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj21">
                            </div>
                            <label class="col-xs-1 control-label" for="cj22"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj22">
                            </div>
                            <label class="col-xs-1 control-label" for="cj23"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj23">
                            </div>
                            <label class="col-xs-1 control-label" for="cj24"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj24">
                            </div>
                            <label class="col-xs-1 control-label" for="cj25"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj25">
                            </div>
                            <label class="col-xs-1 control-label" for="cj26"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj26">
                            </div>
                            <label class="col-xs-1 control-label" for="cj27"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj27">
                            </div>
                            <label class="col-xs-1 control-label" for="cj28"></label>
                            <div class="col-xs-2">
                                <input class="form-control input-sm col-xs-2" name="cj28">
                            </div>


                    <div class="col-xs-2 btn-group pull-right">
                        <a href="${path }/admin/highapply/add" class="btn btn-info btn-sm ">新增</a>
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
                                        ${d.projectnum }

                                </td>
                                <td>
                                        ${d.teaname }

                                </td>
                                <td>
                                        ${d.teasex }

                                </td>
                                <td>
                                        ${d.teamz }

                                </td>
                                <td>
                                        ${d.teacsny }

                                </td>
                                <td>
                                        ${d.teaxy }

                                </td>
                                <td>
                                        ${d.teaxl }

                                </td>
                                <td>
                                        ${d.teazc }

                                </td>
                                <td>
                                        ${d.teazw }

                                </td>
                                <td>
                                        ${d.teafx }

                                </td>
                                <td>
                                        ${d.teadz }

                                </td>
                                <td>
                                        ${d.teayb }

                                </td>
                                <td>
                                        ${d.teamail2 }

                                </td>
                                <td>
                                        ${d.teadh }

                                </td>
                                <td>
                                        ${d.teasj }

                                </td>
                                <td>
                                        ${d.teanowdesc }

                                </td>
                                <td>
                                        ${d.teajy }

                                </td>
                                <td>
                                        ${d.teajy2 }

                                </td>
                                <td>
                                        ${d.tjfzr }

                                </td>
                                <td>
                                        ${d.xyrq }

                                </td>
                                <td>
                                        ${d.tearq }

                                </td>
                                <td>
                                        ${d.xxrq }

                                </td>
                                <td>
                                        ${d.zjrq }

                                </td>
                            <td>

                                <a  class="btn btn-secondary btn-sm btn-icon icon-left" href="${path}/admin/highapply/view?id=${d.id }" >查看</a>
                                <a  class="btn btn-info btn-sm btn-icon icon-left" href="${path}/admin/highapply/edit?id=${d.id }" >编辑</a>
                                <a  class="btn btn-danger btn-sm btn-icon icon-left" href="${path}/admin/highapply/del?id=${d.id }" >删除</a>
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