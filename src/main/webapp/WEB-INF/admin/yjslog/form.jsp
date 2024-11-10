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
                              action="<c:if test="${edit==true }">${path }/admin/yjslog/update</c:if><c:if test="${edit==false }">${path }/admin/yjslog/add</c:if><c:if test="${edit==null }">${path }/admin/yjslog/save</c:if>"
                              method="post">
                            <input type="hidden" name="id" value="${record.id }">
                            <input type="hidden" name="projectid" value="${record.projectid }">
                            <input type="hidden" name="preuserid" value="${loginUser.id }">
                            <div>
                                <div style="-aw-headerfooter-type:header-primary"><p
                                        style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:9pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p></div>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:18pt">
                                    <span style="font-family:'楷体_GB2312'">攀 枝 花 学 院</span></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:18pt">
                                    <span style="font-family:'宋体'; font-weight:bold">大学生</span><span
                                        style="font-family:'宋体'; font-weight:bold">创新</span><span
                                        style="font-family:'宋体'; font-weight:bold">创业训练计划</span><span
                                        style="font-family:'宋体'; font-weight:bold">项目成果验收</span><span
                                        style="font-family:'宋体'; font-weight:bold">审阅意见书</span></p>
                                <table cellspacing="0" cellpadding="0" style="border-collapse:collapse;margin-right: auto;margin-left: auto">
                                    <tr style="height:38.55pt">
                                        <td colspan="2"
                                            style="width:75.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold">项目名称</span></p></td>
                                        <td colspan="3"
                                            style="width:328.95pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold">
                                                    ${record.projectname}
                                                </span>
                                            </p></td>
                                    </tr>
                                    <tr style="height:303.75pt">
                                        <td colspan="5"
                                            style="width:415.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:10.5pt">
                                                <span style="font-family:'宋体'">项目按申报书完成的情况，成果与创新点：</span></p>
                                            <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="desc">${record.desc}</textarea>
                                            </p>
                                    </tr>
                                    <tr style="height:45.75pt">
                                        <td colspan="2"
                                            style="width:75.55pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold">是否同意结题</span></p></td>
                                        <td colspan="2"
                                            style="width:142.3pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'">同意结题</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'"><input type="radio" required name="aggree" value="0"/></span></p></td>
                                        <td style="width:175.85pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'">不同意结题</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'"><input type="radio" required name="aggree" value="1"/></span></p></td>
                                    </tr>
                                    <tr style="height:130.5pt">
                                        <td style="width:30.6pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold">结</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold">论</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold">或</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold">整</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold">改</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold">意</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold">见</span></p></td>
                                        <td colspan="4"
                                            style="width:373.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                            <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="gyj">${record.gyj}</textarea>
                                            </p></td>
                                    </tr>
                                    <tr style="height:30.45pt">
                                        <td colspan="3"
                                            style="width:84.6pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold">评审组组长</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'Times New Roman'; font-weight:bold">(</span><span
                                                    style="font-family:'宋体'; font-weight:bold">签字</span><span
                                                    style="font-family:'Times New Roman'; font-weight:bold">)</span></p>
                                        </td>
                                        <td colspan="2"
                                            style="width:319.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'Times New Roman'; font-weight:bold">&#xa0;</span>
                                            </p></td>
                                    </tr>
                                    <tr style="height:46.4pt">
                                        <td colspan="3"
                                            style="width:84.6pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'宋体'; font-weight:bold">评审组成员</span></p>
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'Times New Roman'; font-weight:bold">(</span><span
                                                    style="font-family:'宋体'; font-weight:bold">签字</span><span
                                                    style="font-family:'Times New Roman'; font-weight:bold">)</span></p>
                                        </td>
                                        <td colspan="2"
                                            style="width:319.9pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:middle">
                                            <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:12pt">
                                                <span style="font-family:'Times New Roman'; font-weight:bold">&#xa0;</span>
                                            </p></td>
                                    </tr>
                                    <tr style="height:0pt">
                                        <td style="width:41.4pt"></td>
                                        <td style="width:44.95pt"></td>
                                        <td style="width:9.05pt"></td>
                                        <td style="width:144.05pt"></td>
                                        <td style="width:186.65pt"></td>
                                    </tr>
                                </table>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'Times New Roman'; font-size:12pt">                                  </span><span
                                        style="font-family:'Times New Roman'; font-weight:bold">    </span><span
                                        style="font-family:'Times New Roman'; font-size:12pt; font-weight:bold">  </span><span
                                        style="font-family:'宋体'; font-size:12pt; font-weight:bold">评审日期：</span><span
                                        style="font-family:'宋体'; font-size:12pt; font-weight:bold">     </span><span
                                        style="font-family:'宋体'; font-size:12pt; font-weight:bold">年</span><span
                                        style="font-family:'宋体'; font-size:12pt; font-weight:bold">  </span><span
                                        style="font-family:'宋体'; font-size:12pt; font-weight:bold">月</span><span
                                        style="font-family:'宋体'; font-size:12pt; font-weight:bold">  </span><span
                                        style="font-family:'宋体'; font-size:12pt; font-weight:bold">日</span></p></div>


                            <div class="has-error">
                                <span class="help-block">${msg }</span>
                            </div>


                            <div class="form-group">
                                <c:if test="${edit==false }"><a href="${path }/admin/yjslog"
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
        var E = window.wangEditor
        var gyjeditor = new E('#gyjdiv')
        var gyjtext = $('#gyjtext')
        gyjeditor.customConfig.zIndex = 0

        gyjeditor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            gyjtext.val(html)
        }

        gyjeditor.create()
        // 初始化 textarea 的值
        gyjtext.val(gyjeditor.txt.html())
        <c:if test="${edit==false }">
        gyjeditor.$textElem.attr('contenteditable', false)
        </c:if>
        $('#created').datepicker({
            language: 'zh-CN',
            autoclose: true,
            format: 'yyyy/mm/dd'
        });

    });
</script>
</html>
