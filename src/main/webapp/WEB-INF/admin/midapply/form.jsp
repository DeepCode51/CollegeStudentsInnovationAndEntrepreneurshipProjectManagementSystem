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
                              action="<c:if test="${edit==true }">${path }/admin/midapply/update</c:if><c:if test="${edit==false }">${path }/admin/midapply/add</c:if><c:if test="${edit==null }">${path }/admin/midapply/save</c:if>"
                              method="post">
                            <input type="hidden" name="id" value="${record.id }">
                            <input type="hidden" name="projectid" value="${record.projectid }">
                            <div>
                                <p style="margin-top:7.8pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:15pt">
                                    <span style="font-family:'宋体'; font-weight:bold">项目</span><span
                                        style="font-family:'宋体'; font-weight:bold">编号：</span>
                                    <input style="border:none;border-bottom: solid;width:132pt;"
                                           value="${record.projectname}" name="projectname"/>
                                </p>
                                <p style="margin-top:0pt; margin-bottom:0pt; font-size:12pt;text-align: center;"><img
                                        src="${path}/static/admin/images/schoollogo.png" width="554" height="176" alt=""
                                        style="-aw-left-pos:0pt; -aw-rel-hpos:column; -aw-rel-vpos:paragraph; -aw-top-pos:0pt; -aw-wrap-type:inline"/>
                                </p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; line-height:32pt; widows:0; orphans:0">
                                    <span style="font-family:'仿宋_GB2312'; font-size:16pt; letter-spacing:1pt">    </span><span
                                        style="font-family:'仿宋_GB2312'; font-size:16pt; letter-spacing:1pt"> </span><span
                                        style="font-family:'黑体'; font-size:24pt; font-weight:bold">大学生创新创业训练计划项目</span>
                                </p>
                                <p style="margin-top:23.4pt; margin-bottom:15.6pt; text-align:center; widows:0; orphans:0; font-size:24pt">
                                    <span style="font-family:'黑体'; font-weight:bold; letter-spacing:1pt">中期</span><span
                                        style="font-family:'黑体'; font-weight:bold; letter-spacing:1pt">检查报告</span></p>
                                <p style="margin-top:7.8pt; margin-bottom:7.8pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'仿宋_GB2312'"> </span><span
                                        style="font-family:'仿宋_GB2312'"> </span></p>
                                <p style="margin-top:10pt; margin-bottom:10pt; text-indent:-16.05pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'华文中宋'">项目名称：</span>
                                    <input style="border:none;border-bottom: solid;width:132pt;"
                                           value="${record.projectname}" name="projectname"/>
                                </p>
                                <p style="margin-top:10pt; margin-bottom:10pt; text-indent:44.95pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'华文中宋'">项目类别：</span><span
                                        style="font-family:'华文中宋'; text-decoration:underline">  </span>
                                    <c:if test="${record.protype==0}">
                                        <span style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">√</span>
                                    </c:if>
                                    <c:if test="${record.protype!=0}">
                                       <span
                                               style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">□</span>
                                    </c:if>
                                    <span
                                            style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">创新计划 </span>
                                    <c:if test="${record.protype==1}">
                                        <span style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">√</span>
                                    </c:if>
                                    <c:if test="${record.protype!=1}">
                                       <span
                                               style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">□</span>
                                    </c:if><span
                                        style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">创业训练</span><span
                                        style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline"> </span>
                                    <c:if test="${record.protype==2}">
                                        <span style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">√</span>
                                    </c:if>
                                    <c:if test="${record.protype!=2}">
                                       <span
                                               style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">□</span>
                                    </c:if>
                                    <span
                                            style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">创业</span><span
                                        style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">实践</span><span
                                        style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline"> </span>
                                </p>
                                <p style="margin-top:10pt; margin-bottom:10pt; text-indent:44.95pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'华文中宋'">项目级别：</span><span
                                        style="font-family:'华文中宋'; text-decoration:underline">  </span> <c:if
                                        test="${record.prolevel==2}">
                                    <span style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">√</span>
                                </c:if>
                                    <c:if test="${record.prolevel!=2}">
                                       <span
                                               style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">□</span>
                                    </c:if><span
                                        style="font-family:'华文中宋'; text-decoration:underline">国家级   </span><c:if
                                        test="${record.prolevel==1}">
                                    <span style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">√</span>
                                </c:if>
                                    <c:if test="${record.prolevel!=1}">
                                       <span
                                               style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">□</span>
                                    </c:if><span
                                        style="font-family:'华文中宋'; text-decoration:underline">省级    </span><c:if
                                        test="${record.prolevel==0}">
                                    <span style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">√</span>
                                </c:if>
                                    <c:if test="${record.prolevel!=0}">
                                       <span
                                               style="font-family:'华文中宋'; font-size:12pt; text-decoration:underline">□</span>
                                    </c:if><span
                                        style="font-family:'华文中宋'; text-decoration:underline">校</span><span
                                        style="font-family:'华文中宋'; text-decoration:underline">级</span><span
                                        style="font-family:'宋体'; text-decoration:underline">  </span></p>
                                <p style="margin-top:10pt; margin-bottom:10pt; text-indent:-16.05pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'华文中宋'">申请单位：</span>
                                    <input style="border:none;border-bottom: solid;width:132pt;"
                                           value="${record.applycrew}" name="applycrew"/>
                                </p>
                                <p style="margin-top:10pt; margin-bottom:10pt; text-indent:-0.05pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'华文中宋'">项目负责人：</span>
                                    <input style="border:none;border-bottom: solid;width:132pt;"
                                           value="${record.preusername}" name="preusername"/>
                                </p>
                                <p style="margin-top:10pt; margin-bottom:10pt; text-indent:-0.05pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'华文中宋'">项目组成员：</span>
                                    <input style="border:none;border-bottom: solid;width:132pt;"
                                           value="${record.promeb}" name="promeb"/>
                                </p>
                                <p style="margin-top:10pt; margin-bottom:10pt; text-indent:-11.05pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'华文中宋'">指导教师：</span>
                                    <input style="border:none;border-bottom: solid;width:132pt;"
                                           value="${record.teaname}" name="teaname"/>
                                </p>
                                <p style="margin-top:10pt; margin-bottom:10pt; text-indent:-11.05pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'华文中宋'">资助金额：</span>
                                    <input style="border:none;border-bottom: solid;width:132pt;"
                                           value="${record.amount}" name="amount"/>
                                </p>
                                <p style="margin-top:10pt; margin-bottom:10pt; text-indent:-5.05pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'华文中宋'">研究时间：</span> <input
                                        style="border:none;border-bottom: solid;width:60pt;"
                                        value="${record.starttime}" name="starttime"/><span
                                        style="font-family:'华文中宋'">至</span> <input
                                        style="border:none;border-bottom: solid;width:60pt;"
                                        value="${record.endtime}" name="endtime"/></p>
                                <p style="margin-top:10pt; margin-bottom:10pt; text-indent:-27.05pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'华文中宋'">   填报</span><span
                                        style="font-family:'华文中宋'">日期</span><span
                                        style="font-family:'华文中宋'">：</span> <input
                                        style="border:none;border-bottom: solid;width:132pt;"
                                        value="${record.created}" name="created"/></p>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                    <span style="font-family:'黑体'">学院</span><span
                                        style="font-family:'黑体'">教务处制</span></p>
                                <div style="text-align:center">
                                    <table cellspacing="0" cellpadding="0"
                                           style="width:473.25pt; margin-right:auto; margin-left:auto; border-collapse:collapse">
                                        <tr style="height:362.9pt">
                                            <td style="width:461.7pt; border-top-style:solid; border-top-width:0.75pt; border-right-style:solid; border-right-width:0.75pt; border-left-style:solid; border-left-width:0.75pt; border-bottom:0.75pt solid #ffffff; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:10.5pt">
                                                    <span style="font-family:'黑体'; font-weight:bold">（</span><span
                                                        style="font-family:'黑体'; font-weight:bold">以下</span><span
                                                        style="font-family:'黑体'; font-weight:bold">可根据需要另加页）：</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'Times New Roman'">&#xa0;</span><span
                                                        style="font-family:'黑体'">一、主要工作进展和</span><span
                                                        style="font-family:'黑体'">阶段性成果</span></p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="main">${record.main}</textarea>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="height:200pt">
                                            <td style="width:461.7pt; border-top:0.75pt solid #ffffff; border-right-style:solid; border-right-width:0.75pt; border-left-style:solid; border-left-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:4.65pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'黑体'">二、</span><span
                                                        style="font-family:'黑体'">项目</span><span
                                                        style="font-family:'黑体'">内容</span><span
                                                        style="font-family:'黑体'">是否调整</span><span
                                                        style="font-family:'黑体'">，说明原因</span></p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="change">${record.change}</textarea>
                                                </p>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:9pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <div style="text-align:center">
                                    <table cellspacing="0" cellpadding="0"
                                           style="width:475.8pt; margin-right:auto; margin-left:auto; border-collapse:collapse">
                                        <tr style="height:164.65pt">
                                            <td style="width:464.25pt; border-top-style:solid; border-top-width:0.75pt; border-right-style:solid; border-right-width:0.75pt; border-left-style:solid; border-left-width:0.75pt; border-bottom:0.75pt solid #ffffff; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:4.65pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'黑体'">三、项目内容是否按计划进行，是否能如期结题，如果不能，计划何时结题</span>
                                                </p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="ontime">${record.ontime}</textarea>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="height:225.3pt">
                                            <td style="width:464.25pt; border-top:0.75pt solid #ffffff; border-right-style:solid; border-right-width:0.75pt; border-left-style:solid; border-left-width:0.75pt; border-bottom:0.75pt solid #ffffff; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:4.65pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'黑体'">四、经费使用情况和下阶段经费安排计划</span></p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="next">${record.next}</textarea>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="height:198.1pt">
                                            <td style="width:464.25pt; border-top:0.75pt solid #ffffff; border-right-style:solid; border-right-width:0.75pt; border-left-style:solid; border-left-width:0.75pt; border-bottom:0.75pt solid #ffffff; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:4.65pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'黑体'">五、存在问题、建议及需要说明的情况</span></p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="recomment">${record.recomment}</textarea>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="height:89.05pt">
                                            <td style="width:464.25pt; border-top:0.75pt solid #ffffff; border-right-style:solid; border-right-width:0.75pt; border-left-style:solid; border-left-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:7.8pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'黑体'">                             </span><span
                                                        style="font-family:'黑体'">        项目负责人</span><span
                                                        style="font-family:'黑体'">签</span><span style="font-family:'黑体'">字</span><span
                                                        style="font-family:'黑体'">：         </span></p>

                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:9pt">
                                    <span style="font-family:'Times New Roman'">&#xa0;</span></p>
                                <div style="text-align:center">
                                    <table cellspacing="0" cellpadding="0"
                                           style="width:476.15pt; margin-right:auto; margin-left:auto; border-collapse:collapse">
                                        <tr style="height:19.5pt">
                                            <td style="width:464.6pt; border-top-style:solid; border-top-width:0.75pt; border-right-style:solid; border-right-width:0.75pt; border-left-style:solid; border-left-width:0.75pt; border-bottom:0.75pt solid #ffffff; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'黑体'">六、</span><span
                                                        style="font-family:'黑体'">指导教师审查意见：</span></p>

                                            </td>
                                        </tr>
                                        <tr style="height:94.65pt">
                                            <td style="width:464.6pt; border-top:0.75pt solid #ffffff; border-right-style:solid; border-right-width:0.75pt; border-left-style:solid; border-left-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="teacoment">${record.teacoment}</textarea>
                                                </p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'黑体'">                                    </span><span
                                                        style="font-family:'黑体'">指导教师</span><span
                                                        style="font-family:'黑体'">签字：</span></p>
                                                <p style="margin-top:0pt; margin-right:56pt; margin-bottom:0pt; text-indent:280pt; text-align:justify; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'黑体'">年   月   日</span></p></td>
                                        </tr>
                                        <tr style="height:178.7pt">
                                            <td style="width:464.6pt; border-top:0.75pt solid #ffffff; border-right-style:solid; border-right-width:0.75pt; border-left-style:solid; border-left-width:0.75pt; border-bottom-style:solid; border-bottom-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:11pt">
                                                    <span style="font-family:'黑体'">七、</span><span
                                                        style="font-family:'黑体'">专家组</span><span
                                                        style="font-family:'黑体'">审查意见</span><span
                                                        style="font-family:'黑体'">及中期检查结果（优、良、中、合格、不合格）</span><span
                                                        style="font-family:'黑体'">：</span>                                        </span>
                                                </p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="teacoment">${record.procoment}</textarea>
                                                </p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'黑体'">                   </span><span
                                                        style="font-family:'黑体'">专家组成员</span><span
                                                        style="font-family:'黑体'">签字：        </span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:center; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'黑体'">                       年   月   日</span>
                                                </p></td>
                                        </tr>
                                        <tr style="height:221.45pt">
                                            <td style="width:464.6pt; border-style:solid; border-width:0.75pt; padding-right:5.03pt; padding-left:5.03pt; vertical-align:top">
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'黑体'">八、</span><span
                                                        style="font-family:'黑体'">学校意见：</span></p>
                                                <p>
                                                    <textarea style="height: 200.15pt;width: 430.2pt;border: none;"
                                                              name="procoment">${record.schoolcoment}</textarea>
                                                </p>
                                                <p style="margin-top:62.4pt; margin-bottom:0pt; text-indent:168pt; text-align:justify; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'黑体'"> 负责人（签字）：         （公章）</span></p>
                                                <p style="margin-top:0pt; margin-bottom:0pt; text-align:justify; widows:0; orphans:0; font-size:14pt">
                                                    <span style="font-family:'黑体'">                                       年   月   日</span>
                                                </p></td>
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
                                        <button type="submit" class="btn btn-info btn-single pull-right">提交</button>
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
