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
                              action="<c:if test="${edit==true }">${path }/admin/endapply/update</c:if><c:if test="${edit==false }">${path }/admin/endapply/add</c:if><c:if test="${edit==null }">${path }/admin/endapply/save</c:if>"
                              method="post">
                            <input type="hidden" name="id" value="${record.id }">
                            <input type="hidden" name="projectid" value="${record.projectid }">
                            <div>
                                <p style="margin-top:0pt; margin-bottom:15.6pt; text-align:center; widows:0; orphans:0; font-size:16pt">
                                    <span style="font-family:'黑体'; font-weight:bold">学生</span><span
                                        style="font-family:'黑体'; font-weight:bold">创新实验</span><span
                                        style="font-family:'黑体'; font-weight:bold">项目</span><span
                                        style="font-family:'黑体'; font-weight:bold">延期</span><span
                                        style="font-family:'黑体'; font-weight:bold">结题</span><span
                                        style="font-family:'黑体'; font-weight:bold">申请表</span></p>
                                <p style="margin-top:0pt; margin-bottom:6.25pt; text-indent:204pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                    <span style="font-family:'仿宋_GB2312'">申请时间：        年</span><span
                                        style="font-family:'仿宋_GB2312'">    </span><span
                                        style="font-family:'仿宋_GB2312'">月</span><span style="font-family:'仿宋_GB2312'">    </span><span
                                        style="font-family:'仿宋_GB2312'">日</span></p>
                                <table cellspacing="0" cellpadding="0" style="width:423.75pt; border-collapse:collapse;margin-left: auto;margin-right: auto;">
                                    <tr style="height:23.25pt">
                                        <td colspan="2"
                                            style="width:79.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">项目名称</span><span
                                                    style="font-family:'仿宋_GB2312'">/编号</span></p></td>
                                        <td colspan="3"
                                            style="width:322.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">${record.projectname}</span></p></td>
                                    </tr>
                                    <tr style="height:22.5pt">
                                        <td colspan="2"
                                            style="width:79.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">项目负责人</span></p></td>
                                        <td style="width:90.6pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">${record.preusername}</span></p></td>
                                        <td style="width:81.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">协议完成时间</span></p></td>
                                        <td style="width:128.7pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"><input
                                                        style="    width: 52.2pt;    border: none;" type="text"
                                                        value="${record.endtime}" name="endtime"/></span></p></td>
                                    </tr>
                                    <tr style="height:23.25pt">
                                        <td colspan="2"
                                            style="width:79.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">   延期至</span></p></td>
                                        <td colspan="3"
                                            style="width:322.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'"><input
                                                        style="    width: 252.2pt;    border: none;" type="text"
                                                        value="${record.deadline}" name="deadline"/></span></p></td>
                                    </tr>
                                    <tr style="height:169.55pt">
                                        <td style="width:25.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">延期</span><span
                                                    style="font-family:'仿宋_GB2312'">结题</span><span
                                                    style="font-family:'仿宋_GB2312'">理由</span></p></td>
                                        <td colspan="4"
                                            style="width:376.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p> <textarea
                                                        style="height: 90.15pt;    width: 376.2pt;       border: none;margin-top:5pt;"
                                                        name="resean">${record.resean}</textarea></p>
                                        </td>
                                    </tr>
                                    <tr style="height:108pt">
                                        <td style="width:25.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">指导老师意见</span></p></td>
                                        <td colspan="4"
                                            style="width:376.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p><textarea
                                                        style="height: 90.15pt;    width: 376.2pt;       border: none;margin-top:5pt;"
                                                        name="teacomment">${record.teacomment}</textarea></p>

                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:246pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                                <span style="font-family:'仿宋_GB2312'; font-size:12pt">签  名：</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:258pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                                <span style="font-family:'仿宋_GB2312'; font-size:12pt">年    月    日</span>
                                            </p></td>
                                    </tr>
                                    <tr style="height:109.5pt">
                                        <td style="width:25.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">学院意见</span></p></td>
                                        <td colspan="4"
                                            style="width:376.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                           <p><textarea
                                                        style="height: 90.15pt;    width: 376.2pt;       border: none;margin-top:5pt;"
                                                        name="xycomment">${record.xycomment}</textarea></p>

                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:246pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                                <span style="font-family:'仿宋_GB2312'; font-size:12pt">院系盖章</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:258pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                                <span style="font-family:'仿宋_GB2312'; font-size:12pt">年    月    日</span>
                                            </p></td>
                                    </tr>
                                    <tr style="height:104.95pt">
                                        <td style="width:25.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'仿宋_GB2312'">学校意见</span></p></td>
                                        <td colspan="4"
                                            style="width:376.2pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p><textarea
                                                        style="height: 90.15pt;    width: 376.2pt;       border: none;margin-top:5pt;"
                                                        name="xycomment">${record.xycomment}</textarea>
                                            </p>

                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:246pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                                <span style="font-family:'仿宋_GB2312'; font-size:12pt">单位盖章</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-indent:258pt; text-align:justify; line-height:20pt; widows:0; orphans:0">
                                                <span style="font-family:'仿宋_GB2312'; font-size:12pt">年    月    日</span>
                                            </p></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td style="width:36pt"></td>
                                        <td style="width:54pt"></td>
                                        <td style="width:101.4pt"></td>
                                        <td style="width:92.1pt"></td>
                                        <td style="width:139.5pt"></td>
                                    </tr>
                                </table>
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

    });
</script>
</html>
