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
    <style>
        p {
            color: black;
        }

        .panel .panel-body {
            color: black;
        }
    </style>
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
                              action="<c:if test="${edit==true }">${path }/admin/changelog/update</c:if><c:if test="${edit==false }">${path }/admin/changelog/add</c:if><c:if test="${edit==null }">${path }/admin/changelog/save</c:if>"
                              method="post">
                            <input type="hidden" name="id" value="${record.id }">
                            <input type="hidden" name="projectid" value="${record.projectid }">
                            <div>
                                <p style="margin-top:0pt; margin-bottom:15.6pt; text-align:center; widows:0; orphans:0; font-size:16pt">
                                    <span style="font-family:'黑体'; font-weight:bold">大学生创新创业训练计划成员变更申请表</span></p>
                                <p style="margin-top:0pt; margin-bottom:6.25pt; text-indent:204pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                    <span style="font-family:'仿宋_GB2312'">申请时间：        年    月    日</span></p>
                                <table cellspacing="0" cellpadding="0" style="border-collapse:collapse;margin-right: auto;margin-left: auto">
                                    <tr style="height:28.35pt">
                                        <td colspan="3"
                                            style="width:79.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">项目名称</span></p></td>
                                        <td colspan="6"
                                            style="width:322.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">${record.projectname}</span></p></td>
                                    </tr>
                                    <tr style="height:28.35pt">
                                        <td colspan="3"
                                            style="width:79.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">项目编号</span></p></td>
                                        <td colspan="2"
                                            style="width:124.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">${pronum}</span></p></td>
                                        <td colspan="2"
                                            style="width:70.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">项目负责人</span></p></td>
                                        <td colspan="2"
                                            style="width:106.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">${record.preusername}</span></p></td>
                                    </tr>
                                    <tr style="height:28.35pt">
                                        <td colspan="3"
                                            style="width:79.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">原项目成员</span></p></td>
                                        <td colspan="6"
                                            style="width:322.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">${record.ogmeb}</span></p></td>
                                    </tr>
                                    <tr style="height:18pt">
                                        <td rowspan="6"
                                            style="width:16.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">变更后成员</span></p></td>
                                        <td colspan="2"
                                            style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">姓　名</span></p></td>
                                        <td style="width:70.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">学　号</span></p></td>
                                        <td colspan="2"
                                            style="width:88.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">院系、专业</span></p></td>
                                        <td colspan="2"
                                            style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">电　话</span></p></td>
                                        <td style="width:79.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'Times New Roman'">E-mail</span></p></td>
                                    </tr>
                                    <tr style="height:2.55pt">
                                        <td colspan="2"
                                            style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">
 <input style="    width: 52.2pt;    border: none;" type="text"
        value="${record.preusername}" name="preusername"/>
                                                </span></p></td>
                                        <td style="width:70.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">
                                                     <input style="    width: 52.2pt;    border: none;" type="text"
                                                            value="${record.pro1}" name="pro1"/>
                                                </span></p></td>
                                        <td colspan="2"
                                            style="width:88.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.clazz1}" name="clazz1"/></span></p></td>
                                        <td colspan="2"
                                            style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.tel1}" name="tel1"/></span></p></td>
                                        <td style="width:79.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.mail1}" name="mail1"/></span></p></td>
                                    </tr>
                                    <tr style="height:2.55pt">
                                        <td colspan="2"
                                            style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.user2}" name="user2"/></span></p></td>
                                        <td style="width:70.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.pro2}" name="pro2"/></span></p></td>
                                        <td colspan="2"
                                            style="width:88.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.clazz2}" name="clazz2"/></span></p></td>
                                        <td colspan="2"
                                            style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.tel2}" name="tel2"/></span></p></td>
                                        <td style="width:79.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.mail2}" name="mail2"/></span></p></td>
                                    </tr>
                                    <tr style="height:2.55pt">
                                        <td colspan="2"
                                            style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.user3}" name="user3"/></span></p></td>
                                        <td style="width:70.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.pro3}" name="pro3"/></span></p></td>
                                        <td colspan="2"
                                            style="width:88.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.clazz3}" name="clazz3"/></span></p></td>
                                        <td colspan="2"
                                            style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.tel3}" name="tel3"/></span></p></td>
                                        <td style="width:79.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.mail3}" name="mail3"/></span></p></td>
                                    </tr>
                                    <tr style="height:2.55pt">
                                        <td colspan="2"
                                            style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.user4}" name="user4"/></span></p></td>
                                        <td style="width:70.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.pro4}" name="pro4"/></span></p></td>
                                        <td colspan="2"
                                            style="width:88.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.clazz4}" name="clazz4"/></span></p></td>
                                        <td colspan="2"
                                            style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.tel4}" name="tel4"/></span></p></td>
                                        <td style="width:79.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.mail4}" name="mail4"/></span></p></td>
                                    </tr>
                                    <tr style="height:2.55pt">
                                        <td colspan="2"
                                            style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.user5}" name="user5"/></span></p></td>
                                        <td style="width:70.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.pro5}" name="pro5"/></span></p></td>
                                        <td colspan="2"
                                            style="width:88.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.clazz5}" name="clazz5"/></span></p></td>
                                        <td colspan="2"
                                            style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.tel5}" name="tel5"/></span></p></td>
                                        <td style="width:79.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"> <input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.mail5}" name="mail5"/></span></p></td>
                                    </tr>
                                    <tr style="height:120.35pt">
                                        <td colspan="2"
                                            style="width:25.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">成员变更理由</span></p></td>
                                        <td colspan="7"
                                            style="width:376.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">
                                                 <textarea
                                                         style="height: 90.15pt;    width: 376.2pt;       border: none;"
                                                         name="resean">${record.resean}</textarea>
                                                </span></p>
                                        </td>
                                    </tr>
                                    <tr style="height:146pt">
                                        <td colspan="2"
                                            style="width:25.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">指导老师意见</span></p></td>
                                        <td colspan="7"
                                            style="width:376.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p><textarea
                                                    style="height: 90.15pt;    width: 376.2pt;       border: none;"
                                                    name="recomment">${record.recomment}</textarea></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:246pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                                <span style="font-family:'仿宋_GB2312'; font-size:12pt">签  名：</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:258pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                                <span style="font-family:'仿宋_GB2312'; font-size:12pt">年    月    日</span>
                                            </p></td>
                                    </tr>
                                    <tr style="height:142.9pt">
                                        <td colspan="2"
                                            style="width:25.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">学院意见</span></p></td>
                                        <td colspan="7"
                                            style="width:376.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p><textarea
                                                    style="height: 90.15pt;    width: 376.2pt;       border: none;"
                                                    name="xycomment">${record.xycomment}</textarea></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:246pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                                <span style="font-family:'仿宋_GB2312'; font-size:12pt">院（系）盖章</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:258pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                                <span style="font-family:'仿宋_GB2312'; font-size:12pt">年    月    日</span>
                                            </p></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td style="width:27pt"></td>
                                        <td style="width:9pt"></td>
                                        <td style="width:54pt"></td>
                                        <td style="width:81pt"></td>
                                        <td style="width:54pt"></td>
                                        <td style="width:45pt"></td>
                                        <td style="width:36pt"></td>
                                        <td style="width:27pt"></td>
                                        <td style="width:90pt"></td>
                                    </tr>
                                </table>
                                <p style="margin-top:6.25pt; margin-bottom:0pt; text-indent:12pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                    <span style="font-family:'仿宋_GB2312'">&#xa0;</span></p></div>
                            <div class="has-error">
                                <span class="help-block">${msg }</span>
                            </div>

                            <div class="form-group">
                                <c:if test="${edit==false }"><a href="javascript:history.go(-1);"
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
            format: 'yyyy/mm/dd'
        });

    });
</script>
</html>
