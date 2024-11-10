<%@ page language="java" pageEncoding="UTF-8" autoFlush="false" buffer="500kb" %>
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
<c:if test="${edit==false && record.status==0}">${path }/admin/highapply/update</c:if>
<c:if test="${edit==null }">${path }/admin/highapply/save</c:if>"
                              method="post">
                            <input type="hidden" name="id" value="${record.id }"/>
                            <input type="hidden" name="projectid" value="${record.projectid }"/>
                            <input type="hidden" name="status" id="status"/>


                            <div>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                    <span style="font-family:'仿宋_GB2312'">&#xa0;</span></p>
                                <table cellspacing="0" cellpadding="0"
                                       style="margin-left:306pt; border-collapse:collapse">
                                    <tr>
                                        <td style="width:63.2pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">项目</span><span style="font-family:'宋体'">编号</span>
                                            </p>
                                        </td>
                                        <td style="width:82.15pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">${record.projectid}</span>
                                            </p></td>
                                    </tr>
                                </table>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">

                                    <img
                                            src="${path}/static/admin/images/schoollogo.png" width="554" height="176"
                                            alt=""
                                            style="-aw-left-pos:0pt; -aw-rel-hpos:column; -aw-rel-vpos:paragraph; -aw-top-pos:0pt; -aw-wrap-type:inline"/>
                                </p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:26pt">
                                    <span style="font-family:'楷体'; font-weight:bold">大学生创新创业训练计划项目</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:24pt">
                                    <span style="font-family:'宋体'; font-weight:bold">申</span><span
                                        style="font-family:'宋体'; font-weight:bold">报</span><span
                                        style="font-family:'宋体'; font-weight:bold">书</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'Times New Roman'; font-weight:bold">&#xa0;</span></p>
                                <div style="text-align:center">
                                    <table cellspacing="0" cellpadding="0"
                                           style="margin-right:auto; margin-left:auto; border-collapse:collapse">
                                        <tr>
                                            <td style="width:114.45pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'宋体'; font-size:14pt; font-weight:bold">项　目　名　称</span>
                                                </p></td>
                                            <td style="width:313.35pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'仿宋_GB2312'; font-size:14pt">${record.projectname}</span>
                                                </p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:114.45pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'宋体'; font-size:14pt; font-weight:bold">项　目　级　别</span>
                                                </p></td>
                                            <td style="width:313.35pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <c:if test="${record.prolevel==2}">
                                                        <span
                                                                style="font-family:'Wingdings 2">√</span>
                                                    </c:if>
                                                    <c:if test="${record.prolevel!=2}">
                                       <span
                                               style="font-family:'Wingdings 2"></span>
                                                    </c:if>
                                                    <span
                                                            style="font-family:'仿宋_GB2312'; font-size:14pt">国家级</span>
                                                    <span
                                                            style="font-family:'Wingdings 2'; font-size:10.5pt"></span>
                                                    <c:if test="${record.prolevel==1}">
                                                        <span
                                                                style="font-family:'Wingdings 2">√</span>
                                                    </c:if>
                                                    <c:if test="${record.prolevel!=1}">
                                       <span
                                               style="font-family:'Wingdings 2"></span>
                                                    </c:if>
                                                    <span
                                                            style="font-family:'仿宋_GB2312'; font-size:14pt">省级</span>
                                                    <span
                                                            style="font-family:'Wingdings 2'; font-size:10.5pt"></span>
                                                    <c:if test="${record.prolevel==0}">
                                                        <span
                                                                style="font-family:'Wingdings 2">√</span>
                                                    </c:if>
                                                    <c:if test="${record.prolevel!=0}">
                                       <span
                                               style="font-family:'Wingdings 2"></span>
                                                    </c:if>
                                                    <span
                                                            style="font-family:'仿宋_GB2312'; font-size:14pt">校级</span>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width:114.45pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'宋体'; font-size:14pt; font-weight:bold">项　目　类　别</span>
                                                </p></td>
                                            <td style="width:313.35pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <c:if test="${record.protype==0}">
                                                        <span
                                                                style="font-family:'Wingdings 2">√</span>
                                                    </c:if>
                                                    <c:if test="${record.protype!=0}">
                                       <span
                                               style="font-family:'Wingdings 2"></span>
                                                    </c:if><span
                                                        style="font-family:'仿宋_GB2312'; font-size:14pt">创新训练项目 </span>
                                                    <c:if test="${record.protype==0}">
                                                        <span
                                                                style="font-family:'Wingdings 2">√</span>
                                                    </c:if>
                                                    <c:if test="${record.protype!=0}">
                                       <span
                                               style="font-family:'Wingdings 2"></span>
                                                    </c:if><span
                                                        style="font-family:'仿宋_GB2312'; font-size:14pt">创业训练项目 </span>
                                                    <c:if test="${record.protype==0}">
                                                        <span
                                                                style="font-family:'Wingdings 2">√</span>
                                                    </c:if>
                                                    <c:if test="${record.protype!=0}">
                                       <span
                                               style="font-family:'Wingdings 2"></span>
                                                    </c:if><span
                                                        style="font-family:'仿宋_GB2312'; font-size:14pt">创业实践项目</span>
                                                </p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:114.45pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'宋体'; font-size:14pt; font-weight:bold">申　请</span><span
                                                        style="font-family:'宋体'; font-size:14pt; font-weight:bold">人姓　名</span>
                                                </p></td>
                                            <td style="width:313.35pt; border-top-style:solid; border-top-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'仿宋_GB2312'; font-size:14pt">${record.preusername}</span>
                                                </p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:114.45pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'宋体'; font-size:14pt; font-weight:bold">所　在　</span><span
                                                        style="font-family:'宋体'; font-size:14pt; font-weight:bold">学　院</span>
                                                </p></td>
                                            <td style="width:313.35pt; border-top-style:solid; border-top-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'仿宋_GB2312'; font-size:14pt">${record.xueyuan}</span>
                                                </p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:114.45pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'宋体'; font-size:12pt; font-weight:bold">申</span><span
                                                        style="font-family:'宋体'; font-size:12pt; font-weight:bold">报</span><span
                                                        style="font-family:'宋体'; font-size:12pt; font-weight:bold">人电话及手机</span>
                                                </p></td>
                                            <td style="width:313.35pt; border-top-style:solid; border-top-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'仿宋_GB2312'; font-size:14pt">
                                                        <input style="    width: 261.2pt;    border: none;" type="text"
                                                               value="${record.utel}" name="utel"/>
                                                    </span>
                                                </p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:114.45pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'宋体'; font-size:14pt; font-weight:bold">申</span><span
                                                        style="font-family:'宋体'; font-size:14pt; font-weight:bold">报</span><span
                                                        style="font-family:'宋体'; font-size:14pt; font-weight:bold">人电子信箱</span>
                                                </p></td>
                                            <td style="width:313.35pt; border-top-style:solid; border-top-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'仿宋_GB2312'; font-size:14pt"><input
                                                            style="    width: 261.2pt;    border: none;" type="text"
                                                            value="${record.umail}" name="umail"/></span>
                                                </p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:114.45pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'宋体'; font-size:14pt; font-weight:bold">导　师　姓　名</span>
                                                </p></td>
                                            <td style="width:313.35pt; border-top-style:solid; border-top-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'仿宋_GB2312'; font-size:14pt">
                                                        <input style="    width: 261.2pt;    border: none;" type="text"
                                                               value="${record.tea}" name="tea"/>
                                                    </span>
                                                </p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:114.45pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'宋体'; font-size:14pt; font-weight:bold">导　师　职　称</span>
                                                </p></td>
                                            <td style="width:313.35pt; border-top-style:solid; border-top-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'仿宋_GB2312'; font-size:14pt">
                                                        <input style="    width: 261.2pt;    border: none;" type="text"
                                                               value="${record.tealevel}" name="tealevel"/>
                                                    </span>
                                                </p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:114.45pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'宋体'; font-size:14pt; font-weight:bold">导师所在单位</span>
                                                </p></td>
                                            <td style="width:313.35pt; border-top-style:solid; border-top-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'仿宋_GB2312'; font-size:14pt"> <input
                                                            style="    width: 261.2pt;    border: none;" type="text"
                                                            value="${record.teadw}" name="teadw"/></span>
                                                </p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:114.45pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'宋体'; font-size:14pt; font-weight:bold">导师电话及手机</span>
                                                </p></td>
                                            <td style="width:313.35pt; border-top-style:solid; border-top-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'仿宋_GB2312'; font-size:14pt"> <input
                                                            style="    width: 261.2pt;    border: none;" type="text"
                                                            value="${record.teatel}" name="teatel"/></span>
                                                </p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:114.45pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'宋体'; font-size:14pt; font-weight:bold">导师电子信箱</span>
                                                </p></td>
                                            <td style="width:313.35pt; border-top-style:solid; border-top-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'仿宋_GB2312'; font-size:14pt">
                                                        <input style="    width: 261.2pt;    border: none;" type="text"
                                                               value="${record.teamail}" name="teamail"/>
                                                    </span>
                                                </p></td>
                                        </tr>
                                        <tr>
                                            <td style="width:114.45pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'宋体'; font-size:14pt; font-weight:bold">填　表　日　期</span>
                                                </p></td>
                                            <td style="width:313.35pt; border-top-style:solid; border-top-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.4pt; padding-left:5.4pt; vertical-align:middle">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:28pt; widows:0; orphans:0">
                                                    <span style="font-family:'仿宋_GB2312'; font-size:14pt"><input
                                                            style="    width: 261.2pt;    border: none;" type="text"
                                                            value="${record.created}" name="created"/></span>
                                                </p></td>
                                        </tr>
                                    </table>
                                </div>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:16pt">
                                    <span style="font-family:'宋体'; font-weight:bold">学院</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:16pt">
                                    <span style="font-family:'Times New Roman'; font-weight:bold">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:16pt">
                                    <span style="font-family:'宋体'; font-weight:bold">填 表 说 明</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-left:36pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'仿宋_GB2312'">1、</span><span
                                        style="font-family:'仿宋_GB2312'">申</span><span
                                        style="font-family:'仿宋_GB2312'">报</span><span style="font-family:'仿宋_GB2312'">书各项内容，</span><span
                                        style="font-family:'仿宋_GB2312'">务</span><span style="font-family:'仿宋_GB2312'">必实事求是，表达明确严谨，</span><span
                                        style="font-family:'仿宋_GB2312'">字迹清晰，格式正确，否则</span><span
                                        style="font-family:'仿宋_GB2312'">不予受理。</span></p>
                                <p style="margin-top:0pt; margin-left:36pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'仿宋_GB2312'">2、</span><span
                                        style="font-family:'仿宋_GB2312'">《申</span><span
                                        style="font-family:'仿宋_GB2312'">报</span><span style="font-family:'仿宋_GB2312'">书》请用A4纸双面印制，左侧装订。格式、内容、大小应与原件相同。</span>
                                </p>
                                <p style="margin-top:0pt; margin-left:36pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'仿宋_GB2312'">3、</span><span
                                        style="font-family:'仿宋_GB2312'">上报的《申</span><span
                                        style="font-family:'仿宋_GB2312'">报</span><span style="font-family:'仿宋_GB2312'">书》一式</span><span
                                        style="font-family:'仿宋_GB2312'">2</span><span style="font-family:'仿宋_GB2312'">份（至少含一份原件）</span><span
                                        style="font-family:'仿宋_GB2312'">，</span><span
                                        style="font-family:'仿宋_GB2312'">且</span><span style="font-family:'仿宋_GB2312'">电子文档一并提交，</span><span
                                        style="font-family:'仿宋_GB2312'">封面的</span><span style="font-family:'仿宋_GB2312'">项目</span><span
                                        style="font-family:'仿宋_GB2312'">编号</span><span style="font-family:'仿宋_GB2312'">按立项文件</span><span
                                        style="font-family:'仿宋_GB2312'">所列编号进行</span><span
                                        style="font-family:'仿宋_GB2312'">填写</span><span
                                        style="font-family:'仿宋_GB2312'">。</span></p>
                                <p style="margin-top:0pt; margin-right:5.65pt; margin-bottom:0pt; text-align:center; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'仿宋_GB2312'; font-size:14pt">     </span><span
                                        style="font-family:'仿宋_GB2312'; font-size:14pt">4、本</span><span
                                        style="font-family:'仿宋_GB2312'; font-size:14pt">申报书</span><span
                                        style="font-family:'仿宋_GB2312'; font-size:14pt">将作为项目结题验收的主要材料之一。</span></p>
                                <p style="margin:0pt 5.65pt 0pt 5.35pt; text-indent:30pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                    <span style="font-family:'宋体'; font-size:15pt">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'Times New Roman'; font-size:9.33pt; vertical-align:sub">&#xa0;</span>
                                </p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <div style="-aw-headerfooter-type:footer-primary"><p
                                        style="margin-top:0pt; margin-right:18pt; margin-bottom:0pt; text-align:right; widows:0; orphans:0; font-size:9pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p></div>
                            </div>
                            <br style="page-break-before:always; clear:both; mso-break-type:section-break"/>
                            <div>
                                <p style="margin-top:0pt; margin-left:57pt; margin-bottom:0pt; text-indent:-36pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'宋体'; font-weight:bold">一、</span><span
                                        style="font:7pt 'Times New Roman'">&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0; </span><span
                                        style="font-family:'宋体'; font-weight:bold">项目</span><span
                                        style="font-family:'宋体'; font-weight:bold">申请</span><span
                                        style="font-family:'宋体'; font-weight:bold">人</span><span
                                        style="font-family:'宋体'; font-weight:bold">及参</span><span
                                        style="font-family:'宋体'; font-weight:bold">与</span><span
                                        style="font-family:'宋体'; font-weight:bold">人</span><span
                                        style="font-family:'宋体'; font-weight:bold">情况</span><span
                                        style="font-family:'宋体'; font-weight:bold"> </span></p>
                                <table cellspacing="0" cellpadding="0"
                                       style="width:460.25pt; border-collapse:collapse;margin-left: auto;margin-right: auto">
                                    <tr style="height:30.45pt">
                                        <td colspan="25"
                                            style="width:448.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'黑体'">项目</span><span style="font-family:'黑体'">申请</span><span
                                                    style="font-family:'黑体'">人基本情况</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">姓名</span></p></td>
                                        <td colspan="3"
                                            style="width:49.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                    <input style="width: 61.2pt;border: none;" type="text"
                                                           value="${record.xingming}" name="xingming"/>
                                                </span></p></td>
                                        <td colspan="4"
                                            style="width:25.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">性别</span></p></td>
                                        <td colspan="4"
                                            style="width:49.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                    <input style="width: 61.2pt;border: none;" type="text"
                                                           value="${record.xingbie}" name="xingbie"/>
</span></p></td>
                                        <td colspan="3"
                                            style="width:25.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">民族</span></p></td>
                                        <td colspan="3"
                                            style="width:31.75pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                    <input style="width: 61.2pt;border: none;" type="text"
                                                           value="${record.mingzhu}" name="mingzhu"/>
                                                </span></p></td>
                                        <td colspan="3"
                                            style="width:30.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">身份证号</span></p></td>
                                        <td colspan="4"
                                            style="width:118.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                <input style="width: 61.2pt;border: none;" type="text"
                                                       value="${record.sfz}" name="sfz"/>

                                                </span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">所在</span><span style="font-family:'宋体'">学院</span>
                                            </p></td>
                                        <td colspan="3"
                                            style="width:49.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                <input style="width: 61.2pt;border: none;" type="text"
                                                       value="${record.szxy}" name="szxy"/>
                                                </span></p></td>
                                        <td colspan="4"
                                            style="width:25.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">学号</span></p></td>
                                        <td colspan="4"
                                            style="width:49.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                <input style="width: 61.2pt;border: none;" type="text"
                                                       value="${record.xh}" name="xh"/>
                                                </span></p></td>
                                        <td colspan="3"
                                            style="width:25.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">年级</span></p></td>
                                        <td colspan="3"
                                            style="width:31.75pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                <input style="width: 61.2pt;border: none;" type="text"
                                                       value="${record.nj}" name="nj"/>
                                                </span></p></td>
                                        <td colspan="3"
                                            style="width:30.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">专业</span></p></td>
                                        <td colspan="4"
                                            style="width:118.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                <input style="width: 61.2pt;border: none;" type="text"
                                                       value="${record.zy}" name="zy"/>
                                                </span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">电话</span></p></td>
                                        <td colspan="3"
                                            style="width:49.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                <input style="width: 61.2pt;border: none;" type="text"
                                                       value="${record.dh}" name="dh"/>
                                                </span></p></td>
                                        <td colspan="4"
                                            style="width:25.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">手机</span></p></td>
                                        <td colspan="4"
                                            style="width:49.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                <input style="width: 61.2pt;border: none;" type="text"
                                                       value="${record.sj}" name="sj"/>
                                                </span></p></td>
                                        <td colspan="3"
                                            style="width:25.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">Email</span></p></td>
                                        <td colspan="10"
                                            style="width:202.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                <input style="width: 61.2pt;border: none;" type="text"
                                                       value="${record.email}" name="email"/>
                                                </span></p></td>
                                    </tr>
                                    <tr style="height:28.4pt">
                                        <td colspan="25"
                                            style="width:448.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'黑体'">项目</span><span style="font-family:'黑体'">申请</span><span
                                                    style="font-family:'黑体'">人</span><span
                                                    style="font-family:'黑体'">简历</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="2"
                                            style="width:61.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">自何年月</span></p></td>
                                        <td colspan="5"
                                            style="width:59.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">至何年月</span></p></td>
                                        <td colspan="15"
                                            style="width:208.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">学校或</span><span style="font-family:'宋体'">单位（中学以上，含高中）</span>
                                            </p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">备注</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="2"
                                            style="width:61.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                    <input style="width: 61.2pt;border: none;" type="text"
                                                           value="${record.sstart1}" name="sstart1"/>
</span></p></td>
                                        <td colspan="5"
                                            style="width:59.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                <input style="width: 61.2pt;border: none;" type="text"
                                                       value="${record.send1}" name="send1"/>
                                                </span></p></td>
                                        <td colspan="15"
                                            style="width:208.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                <input style="width: 61.2pt;border: none;" type="text"
                                                       value="${record.school1}" name="school1"/>
                                                </span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                <input style="width: 61.2pt;border: none;" type="text"
                                                       value="${record.remark1}" name="remark1"/>
                                                </span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="2"
                                            style="width:61.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                  <input style="width: 61.2pt;border: none;" type="text"
                                                         value="${record.sstart2}" name="sstart2"/>

                                                </span></p></td>
                                        <td colspan="5"
                                            style="width:59.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                    <input style="width: 61.2pt;border: none;" type="text"
                                                           value="${record.send2}" name="send2"/>
</span></p></td>
                                        <td colspan="15"
                                            style="width:208.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                    <input style="width: 61.2pt;border: none;" type="text"
                                                           value="${record.school2}" name="school2"/>
                                                </span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                    <input style="width: 61.2pt;border: none;" type="text"
                                                           value="${record.remark2}" name="remark2"/>
                                                </span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="2"
                                            style="width:61.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                  <input style="width: 61.2pt;border: none;" type="text"
                                                         value="${record.sstart3}" name="sstart3"/>

                                                </span></p></td>
                                        <td colspan="5"
                                            style="width:59.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                    <input style="width: 61.2pt;border: none;" type="text"
                                                           value="${record.send3}" name="send3"/>
</span></p></td>
                                        <td colspan="15"
                                            style="width:208.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                    <input style="width: 61.2pt;border: none;" type="text"
                                                           value="${record.school3}" name="school3"/>
                                                </span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                    <input style="width: 61.2pt;border: none;" type="text"
                                                           value="${record.remark3}" name="remark3"/>
                                                </span></p></td>
                                    </tr>
                                    <tr style="height:24.2pt">
                                        <td colspan="25"
                                            style="width:448.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'黑体'; vertical-align:-13pt">项目</span><span
                                                    style="font-family:'黑体'; vertical-align:-13pt">申请</span><span
                                                    style="font-family:'黑体'; vertical-align:-13pt">人</span><span
                                                    style="font-family:'黑体'; vertical-align:-13pt">参加科研</span><span
                                                    style="font-family:'黑体'; vertical-align:-13pt">情况</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">自何年月</span></p></td>
                                        <td colspan="2"
                                            style="width:43.6pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">至何年月</span></p></td>
                                        <td colspan="10"
                                            style="width:105.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">参加项目名称</span></p></td>
                                        <td colspan="4"
                                            style="width:41.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">项目</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">来源</span></p></td>
                                        <td colspan="3"
                                            style="width:35.95pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">担任的工作</span></p></td>
                                        <td colspan="5"
                                            style="width:124.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">完成情况及</span><span
                                                    style="font-family:'宋体'">成果</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.kstart1}" name="kstart1"/>
		</span></p></td>
                                        <td colspan="2"
                                            style="width:43.6pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.kend1}" name="kend1"/>
		</span></p></td>
                                        <td colspan="10"
                                            style="width:105.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.pro1}" name="pro1"/>
		</span></p></td>
                                        <td colspan="4"
                                            style="width:41.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.from1}" name="from1"/>
		</span></p></td>
                                        <td colspan="3"
                                            style="width:35.95pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.on1}" name="on1"/>
		</span></p></td>
                                        <td colspan="5"
                                            style="width:124.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.result1}" name="result1"/>

		</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.kstart2}" name="kstart2"/>
		</span></p></td>
                                        <td colspan="2"
                                            style="width:43.6pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.kend2}" name="kend2"/>
		</span></p></td>
                                        <td colspan="10"
                                            style="width:105.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.pro2}" name="pro2"/>
		</span></p></td>
                                        <td colspan="4"
                                            style="width:41.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.from2}" name="from2"/>
		</span></p></td>
                                        <td colspan="3"
                                            style="width:35.95pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.on2}" name="on2"/>
		</span></p></td>
                                        <td colspan="5"
                                            style="width:124.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.result2}" name="result2"/>

		</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.kstart3}" name="kstart3"/>
		</span></p></td>
                                        <td colspan="2"
                                            style="width:43.6pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.kend3}" name="kend3"/>
		</span></p></td>
                                        <td colspan="10"
                                            style="width:105.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.pro3}" name="pro3"/>
		</span></p></td>
                                        <td colspan="4"
                                            style="width:41.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.from3}" name="from3"/>
		</span></p></td>
                                        <td colspan="3"
                                            style="width:35.95pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.on3}" name="on3"/>
		</span></p></td>
                                        <td colspan="5"
                                            style="width:124.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.result3}" name="result3"/>

		</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.kstart4}" name="kstart4"/>
		</span></p></td>
                                        <td colspan="2"
                                            style="width:43.6pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.kend4}" name="kend4"/>
		</span></p></td>
                                        <td colspan="10"
                                            style="width:105.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.pro4}" name="pro4"/>
		</span></p></td>
                                        <td colspan="4"
                                            style="width:41.45pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.from4}" name="from4"/>
		</span></p></td>
                                        <td colspan="3"
                                            style="width:35.95pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.on4}" name="on4"/>
		</span></p></td>
                                        <td colspan="5"
                                            style="width:124.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
		<span style="font-family:'Times New Roman'">
<input style="width: 61.2pt;border: none;" type="text" value="${record.result4}" name="result4"/>

		</span></p></td>
                                    </tr>
                                    <tr style="height:22.7pt">
                                        <td colspan="25"
                                            style="width:448.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'黑体'; vertical-align:-17pt">项目</span><span
                                                    style="font-family:'黑体'; vertical-align:-17pt">申请</span><span
                                                    style="font-family:'黑体'; vertical-align:-17pt">人入校以来的主要专业必修课成绩</span>
                                            </p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">课程名称</span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">类别</span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">学分</span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">成绩</span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">课程名称</span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">类别</span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">学分</span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">成绩</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c1}" name="c1"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb1}" name="lb1"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s1}" name="s1"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj1}" name="cj1"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c2}" name="c2"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb2}" name="lb2"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s2}" name="s2"/></span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj2}" name="cj2"/></span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c3}" name="c3"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb3}" name="lb3"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s3}" name="s3"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj3}" name="cj3"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c4}" name="c4"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb4}" name="lb4"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s4}" name="s4"/></span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj4}" name="cj4"/></span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c5}" name="c5"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb5}" name="lb5"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s5}" name="s5"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj5}" name="cj5"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c6}" name="c6"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb6}" name="lb6"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s6}" name="s6"/></span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj6}" name="cj6"/></span></p></td>
                                    </tr>

                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c7}" name="c7"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb7}" name="lb7"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s7}" name="s7"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj7}" name="cj7"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c8}" name="c8"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb8}" name="lb8"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s8}" name="s8"/></span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj8}" name="cj8"/></span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c9}" name="c9"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb9}" name="lb9"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s9}" name="s9"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj9}" name="cj9"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c10}" name="c10"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb10}" name="lb10"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s10}" name="s10"/></span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj10}" name="cj10"/></span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c11}" name="c11"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb11}" name="lb11"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s11}" name="s11"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj11}" name="cj11"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c12}" name="c12"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb12}" name="lb12"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s12}" name="s12"/></span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj12}" name="cj12"/></span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c13}" name="c13"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb13}" name="lb13"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s13}" name="s13"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj13}" name="cj13"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c14}" name="c14"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb14}" name="lb14"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s14}" name="s14"/></span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj14}" name="cj14"/></span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c15}" name="c15"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb15}" name="lb15"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s15}" name="s15"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj15}" name="cj15"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c16}" name="c16"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb16}" name="lb16"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s16}" name="s16"/></span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj16}" name="cj16"/></span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c17}" name="c17"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb17}" name="lb17"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s17}" name="s17"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj17}" name="cj17"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c18}" name="c18"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb18}" name="lb18"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s18}" name="s18"/></span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj18}" name="cj18"/></span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c19}" name="c19"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb19}" name="lb19"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s19}" name="s19"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj19}" name="cj19"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c20}" name="c20"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb20}" name="lb20"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s20}" name="s20"/></span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj20}" name="cj20"/></span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c21}" name="c21"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb21}" name="lb21"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s21}" name="s21"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj21}" name="cj21"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c22}" name="c22"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb22}" name="lb22"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s22}" name="s22"/></span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj22}" name="cj22"/></span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c23}" name="c23"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb23}" name="lb23"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s23}" name="s23"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj23}" name="cj23"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c24}" name="c24"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb24}" name="lb24"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s24}" name="s24"/></span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj24}" name="cj24"/></span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c25}" name="c25"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb25}" name="lb25"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s25}" name="s25"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj25}" name="cj25"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c26}" name="c26"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb26}" name="lb26"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s26}" name="s26"/></span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj26}" name="cj26"/></span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td colspan="5"
                                            style="width:106.65pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c27}" name="c27"/></span></p></td>
                                        <td colspan="5"
                                            style="width:37.05pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb27}" name="lb27"/></span></p></td>
                                        <td style="width:22.15pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.s27}" name="s27"/></span></p></td>
                                        <td colspan="3"
                                            style="width:29.85pt; border-style:solid double solid solid; border-width:0.75pt 1.5pt 0.75pt 0.75pt; padding-right:4.65pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj27}" name="cj27"/></span></p></td>
                                        <td colspan="5"
                                            style="width:57.25pt; border-style:solid solid solid double; border-width:0.75pt 0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:4.65pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.c28}" name="c28"/></span></p></td>
                                        <td colspan="4"
                                            style="width:65.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.lb28}" name="lb28"/></span></p></td>
                                        <td style="width:24.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                    <input style="width: 31.2pt;border: none;" type="text" value="${record.s28}" name="s28"/>
                                                </span></p></td>
                                        <td style="width:30.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 31.2pt;border: none;" type="text" value="${record.cj28}" name="cj28"/></span></p></td>
                                    </tr>          <tr style="height:28.35pt">
                                        <td colspan="25"
                                            style="width:448.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'黑体'; vertical-align:-18pt">项目组成员情况（不包括</span><span
                                                    style="font-family:'黑体'; vertical-align:-18pt">项目</span><span
                                                    style="font-family:'黑体'; vertical-align:-18pt">申请</span><span
                                                    style="font-family:'黑体'; vertical-align:-18pt">人和导师）</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">姓　名</span></p></td>
                                        <td colspan="5"
                                            style="width:55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">学号</span></p></td>
                                        <td colspan="3"
                                            style="width:25.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">性别</span></p></td>
                                        <td colspan="7"
                                            style="width:97.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">身份证号</span></p></td>
                                        <td colspan="4"
                                            style="width:49.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">所在学院</span></p></td>
                                        <td colspan="2"
                                            style="width:27.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">年级</span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">专业</span></p></td>
                                    </tr>

                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.meb1}" name="meb1"/></span></p></td>
                                        <td colspan="5"
                                            style="width:55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.num1}" name="num1"/></span></p></td>
                                        <td colspan="3"
                                            style="width:25.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.sex1}" name="sex1"/></span></p></td>
                                        <td colspan="7"
                                            style="width:97.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.sfz1}" name="sfz1"/></span></p></td>
                                        <td colspan="4"
                                            style="width:49.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.xy1}" name="xy1"/></span></p></td>
                                        <td colspan="2"
                                            style="width:27.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.nj1}" name="nj1"/></span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.zy1}" name="zy1"/></span></p></td>
                                    </tr>

                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">电话</span></p></td>
                                        <td colspan="5"
                                            style="width:55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">手机</span></p></td>
                                        <td colspan="10"
                                            style="width:133.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">Email</span></p></td>
                                        <td colspan="6"
                                            style="width:87.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">分工</span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">签名</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.dh1}" name="dh1"/>
			</span></p></td>
                                        <td colspan="5"
                                            style="width:55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.sj1}" name="sj1"/>
			</span></p></td>
                                        <td colspan="10"
                                            style="width:133.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.email1}" name="email1"/>
			</span></p></td>
                                        <td colspan="6"
                                            style="width:87.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.fg1}" name="fg1"/>
			</span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.qm1}" name="qm1"/>
			</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td rowspan="4"
                                            style="width:43.1pt; border-style:solid solid double; border-width:0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">参加科研情况</span></p></td>
                                        <td colspan="15"
                                            style="width:199.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">项目名称及来源</span></p></td>
                                        <td colspan="6"
                                            style="width:87.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">起止年月</span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">完成情况及成果</span></p></td>
                                    </tr>
                                    <tr style="height:18.15pt">
                                        <td colspan="15"
                                            style="width:199.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.kymc1}" name="kymc1"/>

			</span></p></td>
                                        <td colspan="6"
                                            style="width:87.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.qz1}" name="qz1"/>

			</span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.cg1}" name="cg1"/>
			</span></p></td>
                                    </tr>
                                    <tr style="height:18.15pt">
                                        <td colspan="15"
                                            style="width:199.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.kymc2}" name="kymc2"/>

			</span></p></td>
                                        <td colspan="6"
                                            style="width:87.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.qz2}" name="qz2"/>

			</span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.cg2}" name="cg2"/>
			</span></p></td>
                                    </tr>
                                    <tr style="height:18.15pt">
                                        <td colspan="15"
                                            style="width:199.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.kymc3}" name="kymc3"/>

			</span></p></td>
                                        <td colspan="6"
                                            style="width:87.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.qz3}" name="qz3"/>

			</span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.cg3}" name="cg3"/>
			</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">姓　名</span></p></td>
                                        <td colspan="5"
                                            style="width:55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">学号</span></p></td>
                                        <td colspan="3"
                                            style="width:25.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">性别</span></p></td>
                                        <td colspan="7"
                                            style="width:97.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">身份证号</span></p></td>
                                        <td colspan="4"
                                            style="width:49.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">所在学院</span></p></td>
                                        <td colspan="2"
                                            style="width:27.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">年级</span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">专业</span></p></td>
                                    </tr>

                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.meb2}" name="meb2"/></span></p></td>
                                        <td colspan="5"
                                            style="width:55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.num2}" name="num2"/></span></p></td>
                                        <td colspan="3"
                                            style="width:25.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.sex2}" name="sex2"/></span></p></td>
                                        <td colspan="7"
                                            style="width:97.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.sfz2}" name="sfz2"/></span></p></td>
                                        <td colspan="4"
                                            style="width:49.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.xy2}" name="xy2"/></span></p></td>
                                        <td colspan="2"
                                            style="width:27.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.nj2}" name="nj2"/></span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			<input style="width: 61.2pt;border: none;" type="text" value="${record.zy2}" name="zy2"/></span></p></td>
                                    </tr> <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">电话</span></p></td>
                                        <td colspan="5"
                                            style="width:55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">手机</span></p></td>
                                        <td colspan="10"
                                            style="width:133.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">Email</span></p></td>
                                        <td colspan="6"
                                            style="width:87.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">分工</span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">签名</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td style="width:43.1pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.dh2}" name="dh2"/>
			</span></p></td>
                                        <td colspan="5"
                                            style="width:55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.sj2}" name="sj2"/>
			</span></p></td>
                                        <td colspan="10"
                                            style="width:133.4pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.email2}" name="email2"/>
			</span></p></td>
                                        <td colspan="6"
                                            style="width:87.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.fg2}" name="fg2"/>
			</span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.qm2}" name="qm2"/>
			</span></p></td>
                                    </tr>
                                    <tr style="height:19.85pt">
                                        <td rowspan="4"
                                            style="width:43.1pt; border-style:solid solid double; border-width:0.75pt 0.75pt 1.5pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">参加科研情况</span></p></td>
                                        <td colspan="15"
                                            style="width:199.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">项目名称及来源</span></p></td>
                                        <td colspan="6"
                                            style="width:87.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">起止年月</span></p></td>
                                        <td colspan="3"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">完成情况及成果</span></p></td>
                                    </tr>
                                    <tr style="height:18.15pt">
                                        <td colspan="15"
                                            style="width:199.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.kymc4}" name="kymc4"/>

			</span></p></td>
                                        <td colspan="6"
                                            style="width:87.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.qz4}" name="qz4"/>

			</span></p></td>
                                        <td colspan="4"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.cg4}" name="cg4"/>
			</span></p></td>
                                    </tr>

                                    <tr style="height:18.15pt">
                                        <td colspan="15"
                                            style="width:199.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.kymc5}" name="kymc5"/>

			</span></p></td>
                                        <td colspan="6"
                                            style="width:87.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.qz5}" name="qz5"/>

			</span></p></td>
                                        <td colspan="5"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.cg5}" name="cg5"/>
			</span></p></td>
                                    </tr>

                                    <tr style="height:18.15pt">
                                        <td colspan="15"
                                            style="width:199.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.kymc6}" name="kymc6"/>

			</span></p></td>
                                        <td colspan="6"
                                            style="width:87.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.qz6}" name="qz6"/>

			</span></p></td>
                                        <td colspan="6"
                                            style="width:86.5pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
			 <input style="width: 31.2pt;border: none;" type="text" value="${record.cg6}" name="cg6"/>
			</span></p></td>
                                    </tr>

                                    <tr style="height:0pt">
                                        <td style="width:53.9pt"></td>
                                        <td style="width:18.2pt"></td>
                                        <td style="width:36.2pt"></td>
                                        <td style="width:5.7pt"></td>
                                        <td style="width:3.45pt"></td>
                                        <td style="width:2.25pt"></td>
                                        <td style="width:22.9pt"></td>
                                        <td style="width:7.4pt"></td>
                                        <td style="width:5.8pt"></td>
                                        <td style="width:9.5pt"></td>
                                        <td style="width:32.95pt"></td>
                                        <td style="width:11.75pt"></td>
                                        <td style="width:15pt"></td>
                                        <td style="width:13.9pt"></td>
                                        <td style="width:7.1pt"></td>
                                        <td style="width:17.9pt"></td>
                                        <td style="width:13.35pt"></td>
                                        <td style="width:11.3pt"></td>
                                        <td style="width:18.4pt"></td>
                                        <td style="width:17.05pt"></td>
                                        <td style="width:6pt"></td>
                                        <td style="width:32.2pt"></td>
                                        <td style="width:20.95pt"></td>
                                        <td style="width:35.35pt"></td>
                                        <td style="width:41pt"></td>
                                    </tr>
                                </table>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'Times New Roman'; font-weight:bold">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-left:21pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'宋体'; font-weight:bold">二、</span><span
                                        style="font-family:'宋体'; font-weight:bold">项目研究方案及摘要</span></p>
                                <table cellspacing="0" cellpadding="0"
                                       style="width:463.35pt; border-collapse:collapse;margin-left: auto;margin-right: auto">
                                    <tr style="height:168.35pt">
                                        <td style="width:451.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:14pt; font-size:12pt"><span
                                                    style="font-family:'黑体'; vertical-align:-15pt">项目摘要（限50字</span><span
                                                    style="font-family:'黑体'; vertical-align:-15pt">以内</span><span
                                                    style="font-family:'黑体'; vertical-align:-15pt">）</span></p>
                                            <p style="margin-top:14pt; margin-bottom:14pt; font-size:10.5pt"><span
                                                    style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p>
                                                 <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                           name="xmzy">${record.xmzy}</textarea>
                                            </p>

                                        </td>
                                    </tr>
                                    <tr style="height:544.2pt">
                                        <td style="width:451.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:14pt; font-size:12pt"><span
                                                    style="font-family:'黑体'; vertical-align:-15pt">项目研究方案（可</span><span
                                                    style="font-family:'黑体'; vertical-align:-15pt">另</span><span
                                                    style="font-family:'黑体'; vertical-align:-15pt">附纸）</span></p>
                                            <p style="margin-top:14pt; margin-bottom:14pt; font-size:10.5pt"><span
                                                    style="font-family:'宋体'; font-weight:bold; vertical-align:-15pt">（一）立论依据</span><span
                                                    style="font-family:'宋体'; vertical-align:-15pt">（项目的背景，理论与实践意义，拟研究问题的国内外现状分析，预见其成果应用后的影响</span><span
                                                    style="font-family:'宋体'; vertical-align:-15pt">与作用</span><span
                                                    style="font-family:'宋体'; vertical-align:-15pt">，本项目的新意和独到之处）</span>
                                            </p>
                                            <p>
                                                 <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                           name="yjfa">${record.yjfa}</textarea>
                                            </p>

                                            <p style="margin-top:14pt; margin-bottom:14pt; font-size:10.5pt"><span
                                                    style="font-family:'宋体'; font-weight:bold; vertical-align:-15pt">（二）研究目标、内容、拟解决的关键问题</span><span
                                                    style="font-family:'宋体'; vertical-align:-15pt">（包括实验方案的设计、技术路线等）</span>
                                            </p>
                                            <p>
                                                 <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                           name="yjsj">${record.yjsj}</textarea>
                                            </p>

                                            <p style="margin-top:14pt; margin-bottom:14pt; font-size:10.5pt"><span
                                                    style="font-family:'宋体'; font-weight:bold; vertical-align:-15pt">（三）研究的进度安排</span><span
                                                    style="font-family:'宋体'; font-weight:bold; vertical-align:-15pt"> </span>
                                            </p>
                                            <p>
                                                 <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                           name="ap">${record.ap}</textarea>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'; font-weight:bold">（四）研究工作的条件保障</span><span style="font-family:'宋体'">（实验室、研究基地等）</span></p>
                                            <p>
                                                 <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                           name="tj">${record.tj}</textarea>
                                            </p>
                                            <p style="margin-top:14pt; margin-bottom:14pt; font-size:10.5pt"><span
                                                    style="font-family:'宋体'; font-weight:bold">（五）成果提供形式</span></p>
                                            <p style="margin-top:14pt; margin-bottom:14pt; font-size:10.5pt"><span
                                                    style="font-family:'宋体'">&#xa0;</span></p>
                                            <p>
                                                 <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                           name="cgxs">${record.cgxs}</textarea>
                                            </p>

                                        </td>
                                    </tr>
                                </table>
                                <br style="page-break-before:always; clear:both"/>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-indent:28pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'宋体'; font-weight:bold">三、</span><span
                                        style="font-family:'宋体'; font-weight:bold">申请资助金额和经费预算</span></p>
                                <table cellspacing="0" cellpadding="0"
                                       style="border-collapse:collapse;margin-left: auto;margin-right: auto">
                                    <tr style="height:37.25pt">
                                        <td colspan="9"
                                            style="width:439.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold; vertical-align:-23pt">项目经费总额及来源（</span><span
                                                    style="font-family:'宋体'; font-weight:bold; vertical-align:-23pt">单位：</span><span
                                                    style="font-family:'宋体'; font-weight:bold; vertical-align:-23pt">元）</span>
                                            </p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td rowspan="2"
                                            style="width:45.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">经费总额</span></p></td>
                                        <td colspan="2" rowspan="2"
                                            style="width:45.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">人均经费</span></p></td>
                                        <td colspan="6"
                                            style="width:325.8pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">经费来源</span></p></td>
                                    </tr>
                                    <tr style="height:55.35pt">
                                        <td colspan="2"
                                            style="width:53pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">大学生创新</span><span
                                                    style="font-family:'宋体'">创业训练计划</span><span
                                                    style="font-family:'宋体'">资助</span></p></td>
                                        <td style="width:46pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">申请</span><span style="font-family:'宋体'">学校资助</span>
                                            </p></td>
                                        <td style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">学院</span><span style="font-family:'宋体'">配套</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">资助</span></p></td>
                                        <td style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">教师课题费资助</span></p></td>
                                        <td style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">其他</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">（说明经费来源）</span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td style="width:45.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
			<span style="font-family:'Times New Roman'">
				<input style="width: 61.2pt;border: none;" type="text" value="${record.jfze}" name="jfze"/></span></p></td>
                                        <td colspan="2"
                                            style="width:45.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.rjjf}" name="rjjf"/></span></p></td>
                                        <td colspan="2"
                                            style="width:53pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.dxscxcyxljhzz}" name="dxscxcyxljhzz"/></span></p></td>
                                        <td style="width:46pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.sqxxzz}" name="sqxxzz"/></span></p></td>
                                        <td style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.xxptzz}" name="xxptzz"/></span></p></td>
                                        <td style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.jsktf}" name="jsktf"/></span></p></td>
                                        <td style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                    <input style="width: 61.2pt;border: none;" type="text" value="${record.qt}" name="qt"/>
                                                </span></p></td>
                                    </tr>
                                    <tr style="height:21.75pt">
                                        <td colspan="9"
                                            style="width:439.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold">经费支出预算</span><span
                                                    style="font-family:'宋体'; font-weight:bold">（单位：元）</span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">预算支出科目</span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">支出金额</span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">预算根据及理由</span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm1}" name="yszckm1"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc1}" name="zc1"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy1}" name="zcyy1"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm2}" name="yszckm2"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc2}" name="zc2"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy2}" name="zcyy2"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm3}" name="yszckm3"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc3}" name="zc3"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy3}" name="zcyy3"/></span></p></td>
                                    </tr>

                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm4}" name="yszckm4"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc4}" name="zc4"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy4}" name="zcyy4"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm5}" name="yszckm5"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc5}" name="zc5"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy5}" name="zcyy5"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm6}" name="yszckm6"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc6}" name="zc6"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy6}" name="zcyy6"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm7}" name="yszckm7"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc7}" name="zc7"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy7}" name="zcyy7"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm8}" name="yszckm8"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc8}" name="zc8"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy8}" name="zcyy8"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm9}" name="yszckm9"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc9}" name="zc9"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy9}" name="zcyy9"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm10}" name="yszckm10"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc10}" name="zc10"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy10}" name="zcyy10"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm11}" name="yszckm11"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc11}" name="zc11"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy11}" name="zcyy11"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm12}" name="yszckm12"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc12}" name="zc12"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy12}" name="zcyy12"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm13}" name="yszckm13"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc13}" name="zc13"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy13}" name="zcyy13"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm14}" name="yszckm14"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc14}" name="zc14"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy14}" name="zcyy14"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm15}" name="yszckm15"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc15}" name="zc15"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy15}" name="zcyy15"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm16}" name="yszckm16"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc16}" name="zc16"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy16}" name="zcyy16"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm17}" name="yszckm17"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zc17}" name="zc17"/></span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy17}" name="zcyy17"/></span></p></td>
                                    </tr>
                                    <tr style="height:25.5pt">
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.yszckm18}" name="yszckm18"/></span></p></td>
                                        <td colspan="2"
                                            style="width:61.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">
                                                    <input style="width: 61.2pt;border: none;" type="text" value="${record.zc18}" name="zc18"/>
                                                </span></p></td>
                                        <td colspan="5"
                                            style="width:271.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"> <input style="width: 61.2pt;border: none;" type="text" value="${record.zcyy18}" name="zcyy18"/></span></p></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td style="width:56.7pt"></td>
                                        <td style="width:39.3pt"></td>
                                        <td style="width:17.4pt"></td>
                                        <td style="width:54.6pt"></td>
                                        <td style="width:9.2pt"></td>
                                        <td style="width:56.8pt"></td>
                                        <td style="width:72pt"></td>
                                        <td style="width:72pt"></td>
                                        <td style="width:72pt"></td>
                                    </tr>
                                </table>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-indent:28pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'宋体'; font-weight:bold">四</span><span
                                        style="font-family:'宋体'; font-weight:bold">、指导教师简况</span></p>
                                <table cellspacing="0" cellpadding="0"
                                       style="border-collapse:collapse;margin-left: auto;margin-right: auto">

                                    <tr style="height:28.35pt">
                                        <td colspan="2"
                                            style="width:43.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">姓　名</span></p></td>
                                        <td style="width:37.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.teaname}" name="teaname"/></span></p></td>
                                        <td style="width:30pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">性别</span></p></td>
                                        <td style="width:37.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">><input style="width: 61.2pt;border: none;" type="text" value="${record.teasex}" name="teasex"/></span></p></td>
                                        <td style="width:37.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">民族</span></p></td>
                                        <td style="width:37.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.teamz}" name="teamz"/></span></p></td>
                                        <td style="width:55.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">出生年月</span></p></td>
                                        <td style="width:91.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.teacsny}" name="teacsny"/></span></p></td>
                                    </tr>
                                    <tr style="height:28.35pt">
                                        <td colspan="2"
                                            style="width:43.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">所在学院</span></p></td>
                                        <td colspan="3"
                                            style="width:126pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.teaxy}" name="teaxy"/></span></p></td>
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">最终学历</span><span
                                                    style="font-family:'Times New Roman'">/</span><span
                                                    style="font-family:'宋体'">学位</span></p></td>
                                        <td colspan="2"
                                            style="width:157.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.teaxl}" name="teaxl"/></span></p></td>
                                    </tr>
                                    <tr style="height:28.35pt">
                                        <td colspan="2"
                                            style="width:43.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">职称</span></p></td>
                                        <td style="width:37.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.teazc}" name="teazc"/></span></p></td>
                                        <td style="width:30pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">职务</span></p></td>
                                        <td style="width:37.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.teazw}" name="teazw"/></span></p></td>
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">研究方向</span></p></td>
                                        <td colspan="2"
                                            style="width:157.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.teafx}" name="teafx"/></span></p></td>
                                    </tr>
                                    <tr style="height:28.35pt">
                                        <td colspan="2"
                                            style="width:43.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">通讯地址</span></p></td>
                                        <td colspan="3"
                                            style="width:126pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.teadz}" name="teadz"/></span></p></td>
                                        <td style="width:37.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">邮编</span></p></td>
                                        <td style="width:37.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.teayb}" name="teayb"/></span></p></td>
                                        <td style="width:55.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">E</span><span
                                                    style="font-family:'Times New Roman'">mail</span></p></td>
                                        <td style="width:91.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.teamail2}" name="teamail2"/></span></p></td>
                                    </tr>
                                    <tr style="height:28.35pt">
                                        <td colspan="2"
                                            style="width:43.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">电话</span></p></td>
                                        <td colspan="3"
                                            style="width:126pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.teadh}" name="teadh"/></span></p></td>
                                        <td colspan="2"
                                            style="width:85.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">手机</span></p></td>
                                        <td colspan="2"
                                            style="width:157.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"><input style="width: 61.2pt;border: none;" type="text" value="${record.teasj}" name="teasj"/></span></p></td>
                                    </tr>
                                    <tr>
                                        <td style="width:13.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"></span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"></span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"></span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"></span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"></span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"></span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">当前从事的教学、研究工作简介</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"></span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"></span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"></span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'"></span></p></td>
                                        <td colspan="8"
                                            style="width:420pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p>
                                                 <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                           name="teanowdesc">${record.teanowdesc}</textarea>
                                            </p></td>
                                    </tr>

                                    <tr style="height:0pt">
                                        <td style="width:24pt"></td>
                                        <td style="width:30pt"></td>
                                        <td style="width:48pt"></td>
                                        <td style="width:40.8pt"></td>
                                        <td style="width:48pt"></td>
                                        <td style="width:48pt"></td>
                                        <td style="width:48pt"></td>
                                        <td style="width:66pt"></td>
                                        <td style="width:102pt"></td>
                                    </tr>
                                </table>
                                <p style="margin-top:0pt; margin-left:78pt; margin-bottom:0pt; text-indent:-36pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'宋体'; font-weight:bold">五、</span><span
                                        style="font:7pt 'Times New Roman'">&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0; </span><span
                                        style="font-family:'宋体'; font-weight:bold">指导教师对该项目</span><span
                                        style="font-family:'宋体'; font-weight:bold">的评价</span></p>
                                <table cellspacing="0" cellpadding="0"
                                       style="width:450.75pt; border-collapse:collapse;margin-left: auto;margin-right: auto">
                                    <tr>
                                        <td style="width:439.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'; vertical-align:-15pt">（一）对申请课题的价值、研究方案的可行性、工作基础等方面的评价与建议</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'; vertical-align:-15pt">（二）</span><span
                                                    style="font-family:'宋体'; vertical-align:-15pt">对项目团队的专业基础、工作态度、学风及研究能力的评价与建议</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'; vertical-align:-15pt">&#xa0;</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:220.5pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:220.5pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">指导</span><span
                                                    style="font-family:'宋体'">教</span><span style="font-family:'宋体'">师（签名）：</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:189pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　年　　月　　日</span>
                                            </p></td>
                                    </tr>
                                </table>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-indent:28pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'Times New Roman'; font-weight:bold">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-indent:28pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'宋体'; font-weight:bold">六</span><span
                                        style="font-family:'宋体'; font-weight:bold">、</span><span
                                        style="font-family:'宋体'; font-weight:bold">推荐学院</span><span
                                        style="font-family:'宋体'; font-weight:bold">审核</span><span
                                        style="font-family:'宋体'; font-weight:bold">意见</span></p>
                                <table cellspacing="0" cellpadding="0"
                                       style="width:450.75pt; border-collapse:collapse;margin-left: auto;margin-right: auto">
                                    <tr>
                                        <td style="width:439.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'; vertical-align:-15pt">请</span><span
                                                    style="font-family:'宋体'; vertical-align:-15pt">对本《申</span><span
                                                    style="font-family:'宋体'; vertical-align:-15pt">报</span><span
                                                    style="font-family:'宋体'; vertical-align:-15pt">书》中各项内容的真实性、</span><span
                                                    style="font-family:'宋体'; vertical-align:-15pt">方案及</span><span
                                                    style="font-family:'宋体'; vertical-align:-15pt">经费预算的合理性及本</span><span
                                                    style="font-family:'宋体'; vertical-align:-15pt">单位</span><span
                                                    style="font-family:'宋体'; vertical-align:-15pt">所能提供的支持条件等签署具体意见</span>
                                            </p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">推荐</span><span style="font-family:'宋体'">工作组</span><span
                                                    style="font-family:'宋体'">负责人（签</span><span style="font-family:'宋体'">名</span><span
                                                    style="font-family:'宋体'">）：</span><span style="font-family:'宋体'">               推荐</span><span
                                                    style="font-family:'宋体'">学院</span><span
                                                    style="font-family:'宋体'">公章：</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">　　　　　　　　　　　　　　　　　　　　</span><span
                                                    style="font-family:'宋体'">                     </span><span
                                                    style="font-family:'宋体'">　　年　　月　　日</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p></td>
                                    </tr>
                                </table>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <p style="margin-top:0pt; margin-left:30pt; margin-bottom:0pt; text-align:center; line-height:150%; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'宋体'; font-weight:bold">七、</span><span
                                        style="font-family:'宋体'; font-weight:bold">学校</span><span
                                        style="font-family:'宋体'; font-weight:bold">评审</span><span
                                        style="font-family:'宋体'; font-weight:bold">意见</span></p>
                                <table cellspacing="0" cellpadding="0"
                                       style="border-collapse:collapse;margin-left: auto;margin-right: auto">
                                    <tr>
                                        <td style="width:439.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">是否同意立项，对项目实施的意见及建议</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:225.75pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">专家组组长</span><span
                                                    style="font-family:'宋体'">（签章）：</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">　</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">　　　　　　　　　　　　　　　　　　　　　　</span><span
                                                    style="font-family:'宋体'">                 </span><span
                                                    style="font-family:'宋体'">　年　　月　　日</span></p></td>
                                    </tr>
                                    <tr>
                                        <td style="width:439.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'; vertical-align:-15pt">学校意见</span><span
                                                    style="font-family:'宋体'; vertical-align:-15pt">：</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">　　　　　　　　　　　　　　　　　</span><span
                                                    style="font-family:'宋体'">       </span><span
                                                    style="font-family:'宋体'">　签章：</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">　　　　　　　　　　　　　　　　　　　　　　</span><span
                                                    style="font-family:'宋体'">                     </span><span
                                                    style="font-family:'宋体'">年　　月　　日</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; line-height:150%; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'Times New Roman'">&#xa0;</span></p></td>
                                    </tr>
                                </table>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <div style="-aw-different-first-page:true; -aw-headerfooter-type:linked"><p
                                        style="margin-top:0pt; margin-right:18pt; margin-bottom:0pt; text-align:right; widows:0; orphans:0; font-size:9pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p></div>
                            </div>

                            <div class="form-group">
                                <c:if test="${edit==false || edit==null}">
                                    <a href="${path }/admin/project/view?id=${record.projectid}"
                                       class="btn btn-gray btn-single">返回</a></c:if>
                                <button type="button" class="btn btn-secondary btn-single pull-right"
                                        onclick="subform(0)">保存
                                </button>
                                &nbsp;
                                <button type="button" class="btn btn-info btn-single pull-right"
                                        onclick="subform(1)">提交
                                </button>
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

    });
</script>
</html>
