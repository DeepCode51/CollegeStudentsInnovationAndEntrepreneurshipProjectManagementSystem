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
                        <form role="form" class="form-horizontal" id="form1"
                              action="
<c:if test="${edit==false && record.status==0}">${path }/admin/projectapply/update</c:if>
<c:if test="${edit==null }">${path }/admin/projectapply/save</c:if>"
                              method="post">
                            <input type="hidden" name="id" value="${record.id }">
                            <input type="hidden" name="projectid" value="${record.projectid }">
                            <div>
                                <div style="-aw-different-first-page:true; -aw-headerfooter-type:header-primary">
                                    <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:9pt">
                                            <span style="font-family:'Times New Roman'">

                                            </span>
                                    </p>
                                </div>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:16pt">
                                    <span style="font-family:'仿宋_GB2312'; font-size:12pt"></span><span
                                        style="font-family:'宋体'; font-size:12pt"></span><span
                                        style="font-family:'宋体'; font-size:12pt"> </span><span
                                        style="font-family:'黑体'; font-weight:bold">学院</span><span
                                        style="font-family:'黑体'; font-weight:bold">大</span><span
                                        style="font-family:'黑体'; font-weight:bold">学生创新</span><span
                                        style="font-family:'黑体'; font-weight:bold">创业</span><span
                                        style="font-family:'黑体'; font-weight:bold">训练计划项目</span><span
                                        style="font-family:'黑体'; font-weight:bold">申请表</span></p>
                                <table cellspacing="0" cellpadding="0"
                                       style="width:442.5pt; border-collapse:collapse;margin-left: auto;
    margin-right: auto;">
                                    <tr style="height:29.35pt">
                                        <td style="width:61.2pt; border-style:solid; border-width:1.5pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">项</span><span
                                                    style="font-family:'宋体'">目</span><span
                                                    style="font-family:'宋体'">名称</span>
                                            </p></td>
                                        <td colspan="5"
                                            style="width:358.2pt; border-style:solid; border-width:1.5pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        ${record.projectname}
                                                    </span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr style="height:22.6pt">
                                        <td colspan="6"
                                            style="width:430.2pt; border-style:solid; border-width:1.5pt 1.5pt 0.75pt; padding-right:4.65pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">申请小组成员</span></p></td>
                                    </tr>
                                    <tr style="height:22.6pt">
                                        <td style="width:61.2pt; border-style:solid; border-width:1.5pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">申请人姓名</span></p></td>
                                        <td colspan="2"
                                            style="width:133.2pt; border-style:solid; border-width:1.5pt 0.75pt 0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">专    业</span></p></td>
                                        <td style="width:43.2pt; border-style:solid; border-width:1.5pt 0.75pt 0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">年  级</span></p></td>
                                        <td colspan="2"
                                            style="width:160.2pt; border-style:solid; border-width:1.5pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">班级</span></p></td>
                                    </tr>
                                    <tr style="height:21.65pt">
                                        <td style="width:61.2pt; border-style:solid; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.preusername}" name="preusername"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td colspan="2"
                                            style="width:133.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.pro1}" name="pro1"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td style="width:43.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.grade1}" name="grade1"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td colspan="2"
                                            style="width:160.2pt; border-style:solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 140.2pt;    border: none;" type="text"
                                                               value="${record.clazz1}" name="clazz1"/>
                                                    </span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr style="height:22.6pt">
                                        <td style="width:61.2pt; border-style:solid; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.user2}" name="user2"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td colspan="2"
                                            style="width:133.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.pro2}" name="pro2"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td style="width:43.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.grade2}" name="grade2"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td colspan="2"
                                            style="width:160.2pt; border-style:solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 140.2pt;    border: none;" type="text"
                                                               value="${record.clazz2}" name="clazz2"/>
                                                    </span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr style="height:22.6pt">
                                        <td style="width:61.2pt; border-style:solid; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.user3}" name="user3"/>

                                                    </span>
                                            </p>
                                        </td>
                                        <td colspan="2"
                                            style="width:133.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.pro3}" name="pro3"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td style="width:43.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.grade3}" name="grade3"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td colspan="2"
                                            style="width:160.2pt; border-style:solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 140.2pt;    border: none;" type="text"
                                                               value="${record.clazz3}" name="clazz3"/>
                                                    </span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr style="height:22.6pt">
                                        <td style="width:61.2pt; border-style:solid; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.user4}" name="user4"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td colspan="2"
                                            style="width:133.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.pro4}" name="pro4"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td style="width:43.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.grade4}" name="grade4"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td colspan="2"
                                            style="width:160.2pt; border-style:solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 140.2pt;    border: none;" type="text"
                                                               value="${record.clazz4}" name="clazz4"/>
                                                    </span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr style="height:22.6pt">
                                        <td style="width:61.2pt; border-style:solid; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.user5}" name="user5"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td colspan="2"
                                            style="width:133.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.pro5}" name="pro5"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td style="width:43.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.grade5}" name="grade5"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td colspan="2"
                                            style="width:160.2pt; border-style:solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 140.2pt;    border: none;" type="text"
                                                               value="${record.clazz5}" name="clazz5"/>
                                                    </span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr style="height:26.75pt">
                                        <td style="width:61.2pt; border-style:solid; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">指导教师</span></p></td>
                                        <td style="width:115.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.tea}" name="tea"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td colspan="3"
                                            style="width:88.95pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">职 称</span></p></td>
                                        <td style="width:132.45pt; border-style:solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.tealevel}" name="tealevel"/>
                                                    </span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr style="height:22.4pt">
                                        <td style="width:61.2pt; border-style:solid; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">实验室名称</span></p></td>
                                        <td style="width:115.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.room}" name="room"/>
                                                    </span>
                                            </p>
                                        </td>
                                        <td colspan="3"
                                            style="width:88.95pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">所属教学单位</span></p></td>
                                        <td style="width:132.45pt; border-style:solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <input style="    width: 61.2pt;    border: none;" type="text"
                                                               value="${record.xueyuan}" name="xueyuan"/>
                                                    </span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr style="height:90.15pt">
                                        <td colspan="6"
                                            style="width:430.2pt; border-style:solid; border-width:0.75pt 1.5pt; padding-right:4.65pt; padding-left:4.65pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">研究现状：</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:21pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <textarea
                                                                style="height: 90.15pt;    width: 430.2pt;    margin-left: -20pt;    border: none;"
                                                                name="nowdesc">${record.nowdesc}</textarea>
                                                    </span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr style="height:116.5pt">
                                        <td colspan="6"
                                            style="width:430.2pt; border-style:solid; border-width:0.75pt 1.5pt; padding-right:4.65pt; padding-left:4.65pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">研究</span><span
                                                    style="font-family:'宋体'">方案：</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:21pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">
                                                        <textarea
                                                                style="height: 90.15pt; width: 430.2pt;margin-left: -20pt;border: none;"
                                                                name="nowidea">${record.nowidea}</textarea>
                                                    </span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr style="height:115.85pt">
                                        <td colspan="6"
                                            style="width:430.2pt; border-style:solid; border-width:0.75pt 1.5pt; padding-right:4.65pt; padding-left:4.65pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">创新点：</span></p>
                                            <p style="margin-top:0pt; margin-left:15.75pt; margin-bottom:0pt; text-indent:-15.75pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'楷体_GB2312'"> 
                                                        <textarea
                                                                style="height: 90.15pt;    width: 430.2pt;    margin-left: -5pt;    border: none;"
                                                                name="point">${record.point}</textarea> </span></p></td>
                                    </tr>
                                    <tr style="height:131.4pt">
                                        <td colspan="6"
                                            style="width:430.2pt; border-style:solid; border-width:0.75pt 1.5pt; padding-right:4.65pt; padding-left:4.65pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">研究工作的条件保障（实验室、研究基地等）</span><span
                                                    style="font-family:'宋体'">   </span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"> <textarea style="height: 90.15pt;
    width: 430.2pt;

    border: none;" name="need">${record.need}</textarea></span></p></td>
                                    </tr>
                                    <tr style="height:124.65pt">
                                        <td colspan="6"
                                            style="width:430.2pt; border-style:solid; border-width:0.75pt 1.5pt; padding-right:4.65pt; padding-left:4.65pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">进度计划：</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><textarea style="height: 90.15pt;
    width: 430.2pt;

    border: none;" name="process">${record.process}</textarea></span></p></td>
                                    </tr>
                                    <tr style="height:124.65pt">
                                        <td colspan="6"
                                            style="width:430.2pt; border-style:solid; border-width:0.75pt 1.5pt; padding-right:4.65pt; padding-left:4.65pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">拟提供成果及成果形式：</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><textarea style="height: 90.15pt;
    width: 430.2pt;

    border: none;" name="resultplan">${record.resultplan}</textarea></span></p>
                                        </td>
                                    </tr>
                                    <tr style="height:93pt">
                                        <td colspan="6"
                                            style="width:430.2pt; border-style:solid; border-width:0.75pt 1.5pt; padding-right:4.65pt; padding-left:4.65pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; font-size:10.5pt">
                                                <span style="font-family:'宋体'">经费预算：</span><span
                                                    style="font-family:'宋体'">（包括</span><span
                                                    style="font-family:'宋体'">分析测试费、实验材料费</span><span
                                                    style="font-family:'宋体'">、</span><span style="font-family:'宋体'">图书资料费</span><span
                                                    style="font-family:'宋体'">等）</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:18pt">
                                                    <span style="font-family:'Times New Roman'; font-size:10.5pt"><textarea
                                                            style="height: 90.15pt;
    width: 430.2pt;

    border: none;" name="budget">${record.budget}</textarea></span>
                                            </p></td>
                                    </tr>
                                    <tr style="height:100.5pt">
                                        <td colspan="6"
                                            style="width:430.2pt; border-style:solid; border-width:0.75pt 1.5pt 1.5pt; padding-right:4.65pt; padding-left:4.65pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">院（系）负责人意见：</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><textarea style="height: 90.15pt;
    width: 430.2pt;

    border: none;" name="yuancomment">${record.yuancomment}</textarea></span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:225.75pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                            <span style="font-family:'宋体'">负责人签字：</span><span
                                                style="font-family:'宋体'; text-decoration:underline">         </span><span
                                                style="font-family:'宋体'">         </span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:225.75pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'; text-decoration:underline">     </span><span
                                                    style="font-family:'宋体'">年</span><span
                                                    style="font-family:'宋体'; text-decoration:underline">   </span><span
                                                    style="font-family:'宋体'">月</span><span
                                                    style="font-family:'宋体'; text-decoration:underline">   </span><span
                                                    style="font-family:'宋体'">日</span></p>
                                        </td>
                                    </tr>
                                    <tr style="height:76.4pt">
                                        <td colspan="6"
                                            style="width:430.2pt; border-style:solid; border-width:0.75pt 1.5pt 1.5pt; padding-right:4.65pt; padding-left:4.65pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">学</span><span
                                                    style="font-family:'宋体'">校主管部门意见</span></p>

                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><textarea style="height: 90.15pt;
    width: 430.2pt;

    border: none;" name="xiaocomment">${record.xiaocomment}</textarea></span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:225.75pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">负责人签字：</span><span
                                                    style="font-family:'宋体'; text-decoration:underline">         </span><span
                                                    style="font-family:'宋体'">         </span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:225.75pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'; text-decoration:underline">     </span><span
                                                    style="font-family:'宋体'">年</span><span
                                                    style="font-family:'宋体'; text-decoration:underline">   </span><span
                                                    style="font-family:'宋体'">月</span><span
                                                    style="font-family:'宋体'; text-decoration:underline">   </span><span
                                                    style="font-family:'宋体'">日</span></p>
                                        </td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td style="width:72pt"></td>
                                        <td style="width:126pt"></td>
                                        <td style="width:18pt"></td>
                                        <td style="width:54pt"></td>
                                        <td style="width:27.75pt"></td>
                                        <td style="width:143.25pt"></td>
                                    </tr>
                                </table>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                        <span style="font-family:'Times New Roman'; font-size:10.5pt"><input style="    width: 61.2pt;
    border: none;" type="text"/></span></p>
                                <div style="-aw-different-first-page:true; -aw-headerfooter-type:footer-primary">
                                    <div style="float:right"><p
                                            style="margin-top:0pt; margin-bottom:0pt; widows:0; orphans:0; font-size:9pt">
                                        <span style="-aw-field-start:true"></span><span
                                            style="-aw-field-code:'PAGE  '"></span><span
                                            style="-aw-field-separator:true"></span><span
                                            style="font-family:'Times New Roman'"></span><span
                                            style="-aw-field-end:true"></span></p></div>
                                    <p style="margin-top:0pt; margin-right:18pt; margin-bottom:0pt; widows:0; orphans:0; font-size:9pt">
                                        <span style="font-family:'Times New Roman'"></span></p></div>
                            </div>

                            <input type="hidden" name="status" id="status"/>
                            <div class="form-group">
                                <c:if test="${edit==false || edit==null}">
                                    <a href="${path }/admin/project/view?id=${record.projectid}"
                                       class="btn btn-gray btn-single">返回</a></c:if>
                                <c:if test="${record.status==0 || edit==null}">
                                    <button type="button" class="btn btn-secondary btn-single pull-right"
                                            onclick="subform(0)">保存
                                    </button>
                                    &nbsp;
                                    <button type="button" class="btn btn-info btn-single pull-right"
                                            onclick="subform(1)">提交
                                    </button>

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
    function subform(status) {
        $("#status").val(status);
        $("#form1").submit();
    }
    $(function () {
//Date picker
        var E = window.wangEditor
        var nowdesceditor = new E('#nowdescdiv')
        var nowdesctext = $('#nowdesctext')
        nowdesceditor.customConfig.zIndex = 0

        nowdesceditor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            nowdesctext.val(html)
        }

        nowdesceditor.create()
        // 初始化 textarea 的值
        nowdesctext.val(nowdesceditor.txt.html())
        <c:if test="${edit==false }">
        nowdesceditor.$textElem.attr('contenteditable', false)
        </c:if>
        var E = window.wangEditor
        var nowideaeditor = new E('#nowideadiv')
        var nowideatext = $('#nowideatext')
        nowideaeditor.customConfig.zIndex = 0

        nowideaeditor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            nowideatext.val(html)
        }

        nowideaeditor.create()
        // 初始化 textarea 的值
        nowideatext.val(nowideaeditor.txt.html())
        <c:if test="${edit==false }">
        nowideaeditor.$textElem.attr('contenteditable', false)
        </c:if>
        var E = window.wangEditor
        var pointeditor = new E('#pointdiv')
        var pointtext = $('#pointtext')
        pointeditor.customConfig.zIndex = 0

        pointeditor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            pointtext.val(html)
        }

        pointeditor.create()
        // 初始化 textarea 的值
        pointtext.val(pointeditor.txt.html())
        <c:if test="${edit==false }">
        pointeditor.$textElem.attr('contenteditable', false)
        </c:if>
        var E = window.wangEditor
        var neededitor = new E('#needdiv')
        var needtext = $('#needtext')
        neededitor.customConfig.zIndex = 0

        neededitor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            needtext.val(html)
        }

        neededitor.create()
        // 初始化 textarea 的值
        needtext.val(neededitor.txt.html())
        <c:if test="${edit==false }">
        neededitor.$textElem.attr('contenteditable', false)
        </c:if>
        var E = window.wangEditor
        var processeditor = new E('#processdiv')
        var processtext = $('#processtext')
        processeditor.customConfig.zIndex = 0

        processeditor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            processtext.val(html)
        }

        processeditor.create()
        // 初始化 textarea 的值
        processtext.val(processeditor.txt.html())
        <c:if test="${edit==false }">
        processeditor.$textElem.attr('contenteditable', false)
        </c:if>
        var E = window.wangEditor
        var resultplaneditor = new E('#resultplandiv')
        var resultplantext = $('#resultplantext')
        resultplaneditor.customConfig.zIndex = 0

        resultplaneditor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            resultplantext.val(html)
        }

        resultplaneditor.create()
        // 初始化 textarea 的值
        resultplantext.val(resultplaneditor.txt.html())
        <c:if test="${edit==false }">
        resultplaneditor.$textElem.attr('contenteditable', false)
        </c:if>
        var E = window.wangEditor
        var budgeteditor = new E('#budgetdiv')
        var budgettext = $('#budgettext')
        budgeteditor.customConfig.zIndex = 0

        budgeteditor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            budgettext.val(html)
        }

        budgeteditor.create()
        // 初始化 textarea 的值
        budgettext.val(budgeteditor.txt.html())
        <c:if test="${edit==false }">
        budgeteditor.$textElem.attr('contenteditable', false)
        </c:if>
        var E = window.wangEditor
        var yuancommenteditor = new E('#yuancommentdiv')
        var yuancommenttext = $('#yuancommenttext')
        yuancommenteditor.customConfig.zIndex = 0

        yuancommenteditor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            yuancommenttext.val(html)
        }

        yuancommenteditor.create()
        // 初始化 textarea 的值
        yuancommenttext.val(yuancommenteditor.txt.html())
        <c:if test="${edit==false }">
        yuancommenteditor.$textElem.attr('contenteditable', false)
        </c:if>
        var E = window.wangEditor
        var xiaocommenteditor = new E('#xiaocommentdiv')
        var xiaocommenttext = $('#xiaocommenttext')
        xiaocommenteditor.customConfig.zIndex = 0

        xiaocommenteditor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            xiaocommenttext.val(html)
        }

        xiaocommenteditor.create()
        // 初始化 textarea 的值
        xiaocommenttext.val(xiaocommenteditor.txt.html())
        <c:if test="${edit==false }">
        xiaocommenteditor.$textElem.attr('contenteditable', false)
        </c:if>

    });
</script>
</html>
