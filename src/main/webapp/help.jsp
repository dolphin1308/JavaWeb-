<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页--兰州景区</title>
    <jsp:include page="include/headtag.jsp"/>
</head>
<body>
<jsp:include page="include/head.jsp"/>
<jsp:include page="include/menu.jsp"/>

<div style="margin-top: 65px;margin-left: 300px">
    <div id="page-wrapper" style="margin-top: 50px;">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="text-left">帮助中心</h3>
                </div>
            </div>
            <hr />
            <ul class="nav nav-tabs">
                <li class="active"><a href="#common" data-toggle="tab">常见问题</a></li>
                <li><a href="#complaint" data-toggle="tab">帐号申诉</a></li>
                <li class="dropdown"><a class="dropdown-toggle"
                                        data-toggle="dropdown" href="#" aria-expanded="false"> 预约指南 <span
                        class="caret"></span>
                </a>
                    <ul class="dropdown-menu">
                        <li><a href="#order" data-toggle="tab">兰州景区须知总则</a></li>
                        <li class="divider"></li>
                        <li><a href="#netbooking" data-toggle="tab">网站兰州景区流程</a></li>
                        <li class="divider"></li>
                        <li><a href="#appoint" data-toggle="tab">如何查询/取消预约</a></li>
                    </ul></li>
                <li class="dropdown"><a class="dropdown-toggle"
                                        data-toggle="dropdown" href="#" aria-expanded="false"> 帐号指南 <span
                        class="caret"></span>
                </a>
                    <ul class="dropdown-menu">
                        <li><a href="#howsign" data-toggle="tab">如何注册</a></li>
                        <li class="divider"></li>
                        <li><a href="#howlogin" data-toggle="tab">如何登陆</a></li>
                        <li class="divider"></li>
                        <li><a href="#account" data-toggle="tab">帐号管理</a></li>
                    </ul></li>
            </ul>
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active in text-left" id="common">
                    <div class="col-md-12 ">
                        <div class="col-md-2">
                            <p class="text-left">问题列表</p>
                        </div>
                    </div>
                    <br /> <br />
                    <div style="border-bottom: 1px solid #ccc;"></div>


                </div>
                <div class="tab-pane fade text-left" id="complaint">
                    <div class="col-md-12 ">
                        <div class="col-md-2">
                            <p class="text-left solid">找回帐号</p>
                        </div>
                    </div>
                    <br /> <br />
                    <div style="border-bottom: 1px solid #ccc;"></div>
                    <p>
                        1、您可以邮件至<a href="mailto:gmail@gmail.com">gmail@gmail.com</a>平台服务邮箱备案，在邮件中需要提供本人手持有效证件的人证合一照片，并附带您需要修改的实名信息内容，以及本人联系方式，我们会在
                        5个工作日内协助处理完成，并及时通知您。<br>
                        2、邮件中请注明您遇到的问题和要修改的信息（如:姓名填写错误无法通过实名认证；手机号绑定错误找不到原绑定手机等。）<br>

                        3、为确保您要求修改信息的真实性和准确性，请您本人手持身份证并拍摄一张您与身份证的人证合一照片（如下图所示），上传时请您保证证件号码的清晰。<br>
                    </p>
                    <a href="javascript:void(0);" class="help_rzhytp"><img
                            src="http://img.bjguahao.gov.cn/ws/1.0/hs/images/rzhy.gif"
                            name="hospitalImage"></a>
                </div>
                <div class="tab-pane fade text-left" id="order">
                    <div class="col-md-12 ">
                        <div class="col-md-2">
                            <p class="text-left">挂号须知</p>
                        </div>
                    </div>
                    <br /> <br />
                    <div style="border-bottom: 1px solid #ccc;"></div>
                    <p>
                    <div class="help_right_content">
                        为保证您预约挂号成功，请您认真阅读预约服务须知：<br>
                        预约电话：
                        <strong>一、预约范围</strong><br>
                        一年内（自然年）累计爽约6次，取消6个月的预约资格。<br>
                        <strong>八、黑名单用户的判定及处罚</strong><br> 8.1 判定<br>
                        <table class="help_right_content_table" cellpadding="0"
                               cellspacing="0" border="0">
                            <tbody>
                            <tr>
                                <td bgcolor="#e9e9f1">编号</td>
                                <td bgcolor="#e9e9f1">定义范围</td>
                                <td bgcolor="#e9e9f1" align="left">解释</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>注册环节</td>
                                <td align="left">身份证号不符合规范；</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>预约环节</td>
                                <td align="left">同一手机号在现有预约规则下3个月内预约大于15个号源（不含15个）；</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>取消环节</td>
                                <td align="left">频繁取消，1个月内频繁取消大于15个号源（不含15个）；</td>
                            </tr>
                            </tbody>
                        </table>
                        8.2 黑名单用户处罚规则<br>
                        <table class="help_right_content_table" cellpadding="0"
                               cellspacing="0" border="0">
                            <tbody>
                            <tr>
                                <td bgcolor="#e9e9f1" align="left">操作</td>
                                <td bgcolor="#e9e9f1">权限</td>
                            </tr>
                            <tr>
                                <td align="left">登录</td>
                                <td>√</td>
                            </tr>
                            <tr>
                                <td align="left">使用个人中心</td>
                                <td>X</td>
                            </tr>
                            <tr>
                                <td align="left">预约</td>
                                <td>X</td>
                            </tr>
                            <tr>
                                <td align="left">取消预约</td>
                                <td>√</td>
                            </tr>
                            <tr>
                                <td align="left">注册信息修改</td>
                                <td>X</td>
                            </tr>
                            </tbody>
                        </table>
                        <strong>九、特别声明</strong><br> 9.1
                        建议也可以直接向我们反馈。<br>
                    </div>


                </div>
                <div class="tab-pane fade text-left" id="netbooking">
                    <br/>
                    1、网站预约如何预约？ <br>
                    <p align="center">
                        <img src="${mybasePath}assets/img/helpImg/order1.png">
                    </p>
                    <br> 2、选择预约地区。 <br>
                    <p align="center">
                        <img src="${mybasePath}assets/img/helpImg/order2.png">
                    </p>
                    <br> 3选择预约景区<br>
                    <p align="center">
                        <img src="${mybasePath}assets/img/helpImg/order3.png">
                    </p>
                    <br> 4选择预约时间<br>
                    <p align="center">
                        <img src="${mybasePath}assets/img/helpImg/order4.png">
                    </p>
                    <br> 5确认个人信息，提交订单<br>
                    <p align="center">
                        <img src="${mybasePath}assets/img/helpImg/order5.png">
                    </p>
                    <br> 温馨提示：<br> ①请按照帮助流程挂号？<br>
                    首次预约后需要完善个人信息，完善个人信息后方可预约。<br> * 如果有任何问题，请联系客服<br>
                </div>
                <div class="tab-pane fade" id="appoint">
                    <br/>
                    登陆个人中心进行订单管理。<br>
                    <p align="center">
                        <img src="${mybasePath}assets/img/helpImg/order6.png">
                    </p>
                </div>
                <div class="tab-pane fade text-left" id="howsign">
                    <div class="col-md-12 ">
                        <div class="col-md-2">
                            <p class="text-left">注册问题</p>
                        </div>
                    </div>
                    <br /> <br />
                    <div style="border-bottom: 1px solid #ccc;"></div>
                    <dl id="idl">
                        <c:forEach var="signQA" items="${signQA }" varStatus="status">
                            <dt id="dt${signQA.id }" style="margin: 10px 0px 10px 20px;">${signQA.question }</dt>
                            <dd style="display: none; margin-left: 40px;">${signQA.answer }</dd>
                            <div
                                    style="border-bottom: 1px dashed #ccc; width: 1300px; margin-left: 20px;"></div>
                        </c:forEach>
                    </dl>



                </div>
                <div class="tab-pane fade text-left" id="howlogin">
                    <h3>如何登录</h3>
                    <div class="help_right_content">
                        1、网站预<br>
                        <p align="center">
                            <img src="${mybasePath}assets/img/helpImg/login1.png">
                        </p>
                        <br> 2、登录， 1，如果没有注册，进入注册页面注册账号 2，邮箱作为唯一标识，请谨慎注册，更换邮箱需要联系客服。 <br>
                        <p align="center">
                            <img src="${mybasePath}assets/img/helpImg/login2.png">
                        </p>
                        <br> 3、新注册用户登陆后需要完善信息<br>
                        <p align="center">
                            <img src="${mybasePath}assets/img/helpImg/login3.png">
                        </p>
                        <br> 温馨提示：<br> ① 关于注册用户首次登录网上预约平台信息认证问题？<br>
                        首次登录后需要完善个人信息，完善个人信息后方可预约挂号。<br> * 如果您信息显示已注册，请联系客服<br>

                    </div>
                </div>
                <div class="tab-pane fade" id="account">
                    <br/>
                    登陆个人中心进行账户管理。<br>
                    <p align="center">
                        <img src="${mybasePath}assets/img/helpImg/account.png">
                    </p>
                </div>
            </div>
        </div>

        <!-- /. PAGE INNER  -->
    </div>
</div>

</body>
</html>
