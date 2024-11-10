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
                              action="<c:if test="${edit==true }">${path }/admin/cglog/update</c:if><c:if test="${edit==false }">${path }/admin/cglog/add</c:if><c:if test="${edit==null }">${path }/admin/cglog/save</c:if>"
                              method="post">
                            <input type="hidden" name="id" value="${record.id }">
                            <input type="hidden" name="projectid" value="${record.projectid }">

                            <div>
                                <p style="margin-top:7.8pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:15pt">
                                    <span style="font-family:'宋体'; font-weight:bold">项目</span><span
                                        style="font-family:'宋体'; font-weight:bold">编号：</span><span
                                        style="font-family:'楷体_GB2312'; text-decoration:underline">　　　　</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:15pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:26pt">
                                    <img src="cbv38-7zuhp.001.jpeg" width="554" height="176" alt=""
                                         style="-aw-left-pos:0pt; -aw-rel-hpos:page; -aw-rel-vpos:page; -aw-top-pos:0pt; -aw-wrap-type:inline"/>
                                </p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:26pt">
                                    <span style="font-family:'楷体'; font-weight:bold">大学生创新创业训练计划项目</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:26pt">
                                    <span style="font-family:'楷体_GB2312'; font-weight:bold">进  展  报  告</span><span
                                        style="font-family:'楷体_GB2312'; font-weight:bold; display:none">d</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:18pt">
                                    <span style="font-family:'黑体'">&#xa0;</span></p>
                                <div style="text-align:center">
                                    <table cellspacing="0" cellpadding="0"
                                           style="margin-right:auto; margin-left:auto; border-collapse:collapse">
                                        <tr>
                                            <td style="width:86.4pt; padding-right:5.4pt; vertical-align:bottom"><p
                                                    style="margin-top:0pt; margin-bottom:0pt; margin-right:7pt;text-align:right; line-height:16pt; widows:0; orphans:0">
                                                <span style="font-family:'黑体'; font-size:14pt"> 学院单位：</span></p></td>
                                            <td style="width:265.5pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:16pt">
                                                    <span style="font-family:'宋体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xy}" name="xy"/></span></p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:86.4pt; padding-right:5.4pt; vertical-align:bottom"><p
                                                    style="margin-top:0pt; margin-right:7pt; margin-bottom:0pt; text-align:right; line-height:16pt; widows:0; orphans:0">
                                                <span style="font-family:'黑体'; font-size:14pt">项目名称：</span></p></td>
                                            <td style="width:265.5pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:16pt">
                                                    <span style="font-family:'宋体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.projectname}" name="projectname"/></span></p></td>
                                        </tr>
                                        <tr>
                                            <td rowspan="3"
                                                style="width:86.4pt; padding-right:5.4pt; vertical-align:middle"><p
                                                    style="margin-top:0pt; margin-right:7pt; margin-bottom:0pt; text-align:right; line-height:16pt; widows:0; orphans:0">
                                                <span style="font-family:'黑体'; font-size:14pt">项目类型：</span></p></td>
                                            <td style="width:265.5pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:16pt">
                                                    <span style="font-family:'宋体'">□</span><span
                                                        style="font-family:'宋体'">  创新训练项目</span></p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:265.5pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:16pt">
                                                    <span style="font-family:'宋体'">□</span><span
                                                        style="font-family:'宋体'">  创业训练项目</span></p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:265.5pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:16pt">
                                                    <span style="font-family:'宋体'">□</span><span
                                                        style="font-family:'宋体'">  创业实践项目</span></p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:86.4pt; padding-right:5.4pt; vertical-align:bottom"><p
                                                    style="margin-top:0pt; margin-right:7pt; margin-bottom:0pt; text-align:right; line-height:16pt; widows:0; orphans:0">
                                                <span style="font-family:'黑体'; font-size:14pt">负 责 人：</span></p></td>
                                            <td style="width:265.5pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:16pt">
                                                    <span style="font-family:'楷体_GB2312'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.fzr}" name="fzr"/></span></p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:86.4pt; padding-right:5.4pt; vertical-align:bottom"><p
                                                    style="margin-top:0pt; margin-right:7pt; margin-bottom:0pt; text-align:right; line-height:16pt; widows:0; orphans:0">
                                                <span style="font-family:'黑体'; font-size:14pt">指导教师：</span></p></td>
                                            <td style="width:265.5pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:16pt">
                                                    <span style="font-family:'楷体_GB2312'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.zdls}" name="zdls"/></span></p></td>
                                        </tr>
                                    </table>
                                </div>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:18pt">
                                    <span style="font-family:'黑体'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:200%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'仿宋_GB2312'; color:#ff0000">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:16pt">
                                    <span style="font-family:'仿宋_GB2312'; font-weight:bold">学院教务处</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:16pt">
                                    <span style="font-family:'仿宋_GB2312'; font-weight:bold">二</span><span
                                        style="font-family:'宋体'; font-weight:bold">〇</span><span
                                        style="font-family:'仿宋_GB2312'; font-weight:bold">    年    月    日</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:22pt">
                                    <span style="font-family:'Times New Roman'; font-weight:bold">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:22pt">
                                    <span style="font-family:'楷体_GB2312'; font-weight:bold">填 表 须 知</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:18pt">
                                    <span style="font-family:'Times New Roman'; font-weight:bold">&#xa0;</span></p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:28pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:14pt">一、《学院大学生创新创业训练计划项目进展报告》要按顺序逐项填写，内容要实事求是，表达要明确、严谨。空缺项要填</span><span
                                        style="font-family:'宋体'; font-size:14pt">“</span><span
                                        style="font-family:'宋体'; font-size:14pt">无</span><span
                                        style="font-family:'宋体'; font-size:14pt">”</span><span
                                        style="font-family:'宋体'; font-size:14pt">。一律用A4纸打印，于左侧装订成册。 </span></p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:28pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:14pt">二、项目负责人填写完本表后，由申报学生的指导教师和所在学院（单位）初审，签署意见后，一式一份连同电子材料，于每学期末（备注：每学年的第一学期末提交截止期限为：6月30日，第二学期末提交截止日期为：12月31日）报送教务处实践教学科。</span>
                                </p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:28pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:14pt">三、本报告将作为项目结题验收的主要材料之一。</span></p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:28pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:14pt">&#xa0;</span></p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:28pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:14pt">&#xa0;</span></p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:28pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:14pt">&#xa0;</span></p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:28pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:14pt">&#xa0;</span></p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:28pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:14pt">&#xa0;</span></p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:30pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:15pt">&#xa0;</span></p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:30pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:15pt">&#xa0;</span></p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:30pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:15pt">&#xa0;</span></p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:30pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:15pt">&#xa0;</span></p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:30pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:15pt">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:15pt">
                                    <span style="font-family:'黑体'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:15pt">
                                    <span style="font-family:'黑体'">&#xa0;</span></p>
                                <div style="text-align:center">
                                    <table cellspacing="0" cellpadding="0"
                                           style="margin-right:auto; margin-left:auto; border-collapse:collapse">
                                        <tr style="height:21.75pt">
                                            <td colspan="2"
                                                style="width:71.35pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">项目名称</span></p></td>
                                            <td colspan="7"
                                                style="width:366.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.projectname}" name="projectname"/></span></p></td>
                                        </tr>
                                        <tr style="height:21.75pt">
                                            <td colspan="2"
                                                style="width:71.35pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">项目起止时间</span></p></td>
                                            <td colspan="7"
                                                style="width:366.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'宋体'"> <input
                                                            style="border:none;width:52pt;"
                                                            value="${record.qz}" name="qz"/>至<input
                                                            style="border:none;width:52pt;"
                                                            value="${record.js}" name="js"/></span></p>
                                            </td>
                                        </tr>
                                        <tr style="height:21.75pt">
                                            <td rowspan="2"
                                                style="width:17.05pt; height:21.75pt; writing-mode:tb-rl; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <div style="height:21.75pt; writing-mode:tb-rl; -aw-ignore:true"><p
                                                        style="margin:0pt 5.65pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">负责人</span></p></div>
                                            </td>
                                            <td style="width:43.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">姓    名</span></p></td>
                                            <td style="width:52.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">学号</span></p></td>
                                            <td colspan="2"
                                                style="width:106.25pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">年级专业</span></p></td>
                                            <td colspan="2"
                                                style="width:61.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">手机</span></p></td>
                                            <td colspan="2"
                                                style="width:113.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">E-mail</span></p></td>
                                        </tr>
                                        <tr style="height:21.75pt">
                                            <td style="width:43.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xm1}" name="xm1"/></span></p></td>
                                            <td style="width:52.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xh1}" name="xh1"/></span></p></td>
                                            <td colspan="2"
                                                style="width:106.25pt; border-right-style:solid; border-right-width:0.75pt; border-left-style:solid; border-left-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.njzy1}" name="njzy1"/></span></p></td>
                                            <td colspan="2"
                                                style="width:61.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.sj1}" name="sj1"/></span></p></td>
                                            <td colspan="2"
                                                style="width:113.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.e1}" name="e1"/></span></p></td>
                                        </tr>
                                        <tr style="height:21.75pt">
                                            <td rowspan="4"
                                                style="width:17.05pt; height:21.75pt; writing-mode:tb-rl; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <div style="height:21.75pt; writing-mode:tb-rl; -aw-ignore:true"><p
                                                        style="margin:0pt 5.65pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">项目组成员</span></p></div>
                                            </td>
                                            <td style="width:43.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xm2}" name="xm2"/></span></p></td>
                                            <td style="width:52.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xh2}" name="xh2"/></span></p></td>
                                            <td colspan="2"
                                                style="width:106.25pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.njzy2}" name="njzy2"/></span></p></td>
                                            <td colspan="2"
                                                style="width:61.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.sj2}" name="sj2"/></span></p></td>
                                            <td colspan="2"
                                                style="width:113.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.e2}" name="e2"/></span></p></td>
                                        </tr>
                                        <tr style="height:21.75pt">
                                            <td style="width:43.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xm3}" name="xm3"/></span></p></td>
                                            <td style="width:52.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xh3}" name="xh3"/></span></p></td>
                                            <td colspan="2"
                                                style="width:106.25pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.njzy3}" name="njzy3"/></span></p></td>
                                            <td colspan="2"
                                                style="width:61.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.sj3}" name="sj3"/></span></p></td>
                                            <td colspan="2"
                                                style="width:113.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.e3}" name="e3"/></span></p></td>
                                        </tr>
                                        <tr style="height:21.75pt">
                                            <td style="width:43.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xm4}" name="xm4"/></span></p></td>
                                            <td style="width:52.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xh4}" name="xh4"/></span></p></td>
                                            <td colspan="2"
                                                style="width:106.25pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.njzy4}" name="njzy4"/></span></p></td>
                                            <td colspan="2"
                                                style="width:61.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.sj4}" name="sj4"/></span></p></td>
                                            <td colspan="2"
                                                style="width:113.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.e4}" name="e4"/></span></p></td>
                                        </tr>
                                        <tr style="height:21.75pt">
                                            <td style="width:43.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xm5}" name="xm5"/></span></p></td>
                                            <td style="width:52.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xh5}" name="xh5"/></span></p></td>
                                            <td colspan="2"
                                                style="width:106.25pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.njzy5}" name="njzy5"/></span></p></td>
                                            <td colspan="2"
                                                style="width:61.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.sj5}" name="sj5"/></span></p></td>
                                            <td colspan="2"
                                                style="width:113.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.e5}" name="e5"/></span></p></td>
                                        </tr>
                                        <tr style="height:22.5pt">
                                            <td rowspan="3"
                                                style="width:17.05pt; height:22.5pt; writing-mode:tb-rl; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <div style="height:22.5pt; writing-mode:tb-rl; -aw-ignore:true"><p
                                                        style="margin:0pt 5.65pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">指导教师</span></p></div>
                                            </td>
                                            <td style="width:43.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">姓    名</span></p></td>
                                            <td colspan="3"
                                                style="width:169.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.lsxm}" name="lsxm"/></span></p></td>
                                            <td colspan="2"
                                                style="width:61.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">职务/职称</span></p></td>
                                            <td colspan="2"
                                                style="width:113.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.lszw}" name="lszw"/></span></p></td>
                                        </tr>
                                        <tr style="height:22.5pt">
                                            <td style="width:43.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">所在单位</span></p></td>
                                            <td colspan="7"
                                                style="width:366.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.szdw}" name="szdw"/></span></p></td>
                                        </tr>
                                        <tr style="height:23.4pt">
                                            <td style="width:43.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">手    机</span></p></td>
                                            <td colspan="3"
                                                style="width:169.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.lssj}" name="lssj"/></span></p></td>
                                            <td colspan="2"
                                                style="width:61.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'">E-mail</span></p></td>
                                            <td colspan="2"
                                                style="width:113.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.lse}" name="lse"/></span></p></td>
                                        </tr>
                                        <tr style="height:263.8pt">
                                            <td colspan="9"
                                                style="width:448.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'">一、项目进展情况（</span><span
                                                        style="font-family:'宋体'">含项目研究已取得阶段性成果和收获）</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="xmjz1">${record.xmjz1}</textarea>
                                                </p>

                                            </td>
                                        </tr>
                                        <tr style="height:23.25pt">
                                            <td colspan="9"
                                                style="width:448.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'">主要成果</span></p></td>
                                        </tr>
                                        <tr style="height:14.25pt">
                                            <td colspan="2" rowspan="2"
                                                style="width:71.35pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'">成果名称</span></p></td>
                                            <td colspan="2" rowspan="2"
                                                style="width:107.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'">形式</span></p></td>
                                            <td colspan="5"
                                                style="width:247.35pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'">发表（出版）情况</span></p></td>
                                        </tr>
                                        <tr style="height:21.75pt">
                                            <td colspan="2"
                                                style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; font-size:12pt">
                                                    <span style="font-family:'黑体'">发表时间</span></p></td>
                                            <td colspan="2"
                                                style="width:113.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; font-size:12pt">
                                                    <span style="font-family:'黑体'">发表刊物（出版部门）</span></p></td>
                                            <td style="width:60.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; font-size:12pt">
                                                    <span style="font-family:'黑体'">字数</span></p></td>
                                        </tr>
                                        <tr style="height:22.35pt">
                                            <td colspan="2"
                                                style="width:71.35pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'宋体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.cgmc1}" name="cgmc1"/></span></p></td>
                                            <td colspan="2"
                                                style="width:107.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'宋体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xs1}" name="xs1"/></span></p></td>
                                            <td colspan="2"
                                                style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'宋体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.fbsj1}" name="fbsj1"/></span></p></td>
                                            <td colspan="2"
                                                style="width:113.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'宋体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.fbkw1}" name="fbkw1"/></span></p></td>
                                            <td style="width:60.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'宋体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.zs1}" name="zs1"/></span></p></td>
                                        </tr>
                                        <tr style="height:21.95pt">
                                            <td colspan="2"
                                                style="width:71.35pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.cgmc2}" name="cgmc2"/></span></p></td>
                                            <td colspan="2"
                                                style="width:107.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xs2}" name="xs2"/></span></p></td>
                                            <td colspan="2"
                                                style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.fbsj2}" name="fbsj2"/></span></p></td>
                                            <td colspan="2"
                                                style="width:113.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.fbkw2}" name="fbkw2"/></span></p></td>
                                            <td style="width:60.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.zs2}" name="zs2"/></span></p></td>
                                        </tr>
                                        <tr style="height:21.95pt">
                                            <td colspan="2"
                                                style="width:71.35pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.cgmc3}" name="cgmc3"/></span></p></td>
                                            <td colspan="2"
                                                style="width:107.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xs3}" name="xs3"/></span></p></td>
                                            <td colspan="2"
                                                style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.fbsj3}" name="fbsj3"/></span></p></td>
                                            <td colspan="2"
                                                style="width:113.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.fbkw3}" name="fbkw3"/></span></p></td>
                                            <td style="width:60.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.zs3}" name="zs3"/></span></p></td>
                                        </tr>
                                        <tr style="height:21.95pt">
                                            <td colspan="2"
                                                style="width:71.35pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.cgmc4}" name="cgmc4"/></span></p></td>
                                            <td colspan="2"
                                                style="width:107.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.xs4}" name="xs4"/></span></p></td>
                                            <td colspan="2"
                                                style="width:52.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.fbsj4}" name="fbsj4"/></span></p></td>
                                            <td colspan="2"
                                                style="width:113.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.fbkw4}" name="fbkw4"/></span></p></td>
                                            <td style="width:60.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'"><input
                                                            style="border:none;width:52pt;"
                                                            value="${record.zs4}" name="zs4"/></span></p></td>
                                        </tr>
                                        <tr style="height:349.9pt">
                                            <td colspan="9"
                                                style="width:448.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'">二、项目存在的主要问题及应对思路与措施</span>
                                                </p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="zywt">${record.zywt}</textarea>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="height:342.35pt">
                                            <td colspan="9"
                                                style="width:448.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'; font-weight:bold">三、</span><span
                                                        style="font-family:'黑体'">项目下阶段主要工作</span><span
                                                        style="font-family:'黑体'">及进程安排</span></p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="jdap">${record.jdap}</textarea>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="height:217.55pt">
                                            <td colspan="9"
                                                style="width:448.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'">四</span><span
                                                        style="font-family:'黑体'">、</span><span style="font-family:'黑体'">项目经费使用情况</span>
                                                </p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="jfsy">${record.jfsy}</textarea>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="height:186.35pt">
                                            <td colspan="9"
                                                style="width:448.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'">五、指导教师意见</span></p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="lsyj">${record.lsyj}</textarea>
                                                </p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-indent:270pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'宋体'">签   名：</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-indent:270pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'宋体'">年   月   日</span></p></td>
                                        </tr>
                                        <tr style="height:123.45pt">
                                            <td colspan="9"
                                                style="width:448.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'">六、学院（单位）意见</span></p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="xyyj">${record.xyyj}</textarea>
                                                </p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-indent:270pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'宋体'">签名盖章：</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-indent:270pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'宋体'">年   月   日</span></p></td>
                                        </tr>
                                        <tr style="height:117.35pt">
                                            <td colspan="9"
                                                style="width:448.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'黑体'">七、学校意见</span></p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="xxyj">${record.xxyj}</textarea>
                                                </p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'宋体'">                                             签名盖章：</span>
                                                </p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-indent:270pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                    <span style="font-family:'宋体'">年   月   日</span></p></td>
                                        </tr>
                                        <tr style="height:0pt">
                                            <td style="width:27.85pt"></td>
                                            <td style="width:54.3pt"></td>
                                            <td style="width:62.95pt"></td>
                                            <td style="width:55.75pt"></td>
                                            <td style="width:61.3pt"></td>
                                            <td style="width:1.7pt"></td>
                                            <td style="width:70.55pt"></td>
                                            <td style="width:53.7pt"></td>
                                            <td style="width:70.9pt"></td>
                                        </tr>
                                    </table>
                                </div>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <div style="-aw-different-first-page:true; -aw-headerfooter-type:footer-primary">
                                    <div style="float:left"><p
                                            style="margin-top:0pt; margin-bottom:0pt; widows:0; orphans:0; font-size:9pt">
                                        <span style="-aw-field-start:true"></span><span
                                            style="-aw-field-code:'PAGE  '"></span><span
                                            style="-aw-field-separator:true"></span><span
                                            style="font-family:'Times New Roman'">1</span><span
                                            style="-aw-field-end:true"></span></p></div>
                                    <p style="margin-top:0pt; margin-right:18pt; margin-bottom:0pt; widows:0; orphans:0; font-size:9pt">
                                        <span style="font-family:'Times New Roman'">&#xa0;</span></p></div>
                            </div>
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
        $('#lsyjsj').datepicker({
            language: 'zh-CN',
            autoclose: true,
            format: 'yyyy/mm/dd'
        });
        $('#xyyjsj').datepicker({
            language: 'zh-CN',
            autoclose: true,
            format: 'yyyy/mm/dd'
        });
        $('#xxyjsj').datepicker({
            language: 'zh-CN',
            autoclose: true,
            format: 'yyyy/mm/dd'
        });

    });
</script>
</html>
