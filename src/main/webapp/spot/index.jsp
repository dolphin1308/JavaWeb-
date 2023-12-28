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
    <div id="page-inner">
        <div class="container">
        <div id="myCarousel" class="carousel slide" style="height: 300px; width: 1000px; " align="center">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner" style="width: 950px;height: 300px; ">
                <div class="item active">
                    <img src="images/bg01.jpg" style=" height:300px;width: 950px;" alt="First slide"><br><br>
                    <div class="carousel-caption" style="color: #2e2e2e">甘肃博物馆</div>
                </div>
                <div class="item">
                    <img src="images/bg02.jpg" style=" height:300px; width: 950px;" alt="Second slide"><br><br>
                    <div class="carousel-caption" style="color: #2e2e2e">黄河母亲</div>
                </div>
                <div class="item">
                    <img src="images/bg03.jpg" style="height:300px; width: 950px;"  alt="Third slide"><br><br>
                    <div class="carousel-caption" style="color: #2e2e2e">中山桥</div>
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <table border="1" width="1000px;" height="550px;" >
            <tbody>
            <tr>
                <td width="760px">
                    <table border="1" width="760px;" height="550px;"cellpadding="0" cellspacing="0">
                        <tbody>
                        <tr>
                            <td width="760px;" height="150px;" align="center" valign="top">
                                <div style="font-size: 30px;font-family: 华文行楷">Tips</div><br>
                                <div>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在游览风景区之际，请以文明之姿，呵护环境之美。让我们共同遵守以下行为准则：不随意抛掷垃圾，尊重自然与人文，保持安静和谐的氛围，不破坏植被和动物栖息地，不攀爬禁止区域，不涂写或刻画于景区设施上。让我们携手努力，共同维护景区的瑰丽景色，让每一次旅行都成为美好的回忆。
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td width="760px;" height="400px;">
                                <table border="1" width="760px;" height="400px;"cellpadding="0" cellspacing="0">
                                    <tbody>
                                    <tr>
                                        <td width="500px;" align="center">
                                            <table border="0" width="500px;" height="400px;">
                                                <tbody>
                                                <tr>
                                                    <td valign="top">
                                                        <div align="center" style="margin-top: 5px;font-family: 华文楷体;font-weight: bolder;font-size: 22px;">
                                                            名胜古迹
                                                        </div>
                                                        <div align="center" style="font-family: 华文楷体;font-weight: bolder;font-size: 16px;">
                                                            青城镇、五泉山公园、白塔山公园、黄河铁桥、黄河母亲雕塑等。<br>
                                                            这些景点既展示了兰州的历史文化，也体现了其自然风光和人文景观。<br>
                                                        </br>此外，游客在兰州旅行时，还可以选择作为起点，前往甘肃的其他著名景点，<br>
                                                        </br>如嘉峪关、酒泉、张掖、敦煌的雅丹和鸣沙山等地。
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style=" height: 290px;background-image: url(images/timg.jpg) ;background-size: 500px;" valign="left">
                                                        <table border="0" width="365px;" height="200px;" style="margin-top: 20px;">
                                                            <tbody>
                                                            <tr>
                                                                <td width="90px;"></td>
                                                                <td valign="top">
                                                                    <div align="center"   style="margin-top: 5px; font-size: 20px;">游玩指南</div>
                                                                    <div style="font-size: 14px;font-family: 华文楷体;font-weight: bolder">
                                                                        一、提前规划行程：在出发前，了解目的地的文化、气候和交通情况，以便更好地安排行程。<br>
                                                                        二、尊重当地风俗：在游览过程中，尊重当地的风俗习惯，避免做出冒犯或不恰当的行为。<br>
                                                                        三、保持环境整洁：保护环境，不乱扔垃圾，不破坏自然景观和文物古迹。<br>
                                                                        四、学会排队等待：在旅游高峰期或人流密集的地方，学会排队等待，避免拥挤和冲突<br>
                                                                        五、保持安全意识：在游览过程中，保持安全意识，注意人身和财物安全，遵守交通规则。<br>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>

                                                </tbody>
                                            </table>
                                        </td>
                                        <td width="260px;" valign="top" >
                                            <div style="height: 50px; font-family: 华文隶书;font-size: 25px; font-weight: bolder" align="center" >最新公告</div>
                                            <div style="font-family: 华文宋体;font-size: 18px;font-weight: bolder">
                                                <a style="text-decoration-line: none">【预约必看】&nbsp;&nbsp;2023过年期间各大景区预约安排</a></div><br>
                                            <div style="font-family: 华文宋体;font-size: 18px;font-weight: bolder">
                                                <a style="text-decoration-line: none">【人文景观】&nbsp;&nbsp;打开“启智”之门，揭开ta的神秘面纱</a></div><br>
                                            <div style="font-family: 华文宋体;font-size: 18px;font-weight: bolder">
                                                <a style="text-decoration-line: none">【推荐路线】&nbsp;&nbsp;不知道怎么玩个遍？看这里</a></div><br>
                                            <div style="font-family: 华文宋体;font-size: 18px;font-weight: bolder">
                                                <a style="text-decoration-line: none">【游玩导读】&nbsp;&nbsp;对不起，这些行为我不会做！</a></div>
<%--                                            <img src="images/timg.jpg" height="150px;" width="250px;">--%>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </td>
                <td width="240px">
                    <table border="0" width="100%" height="550px;" cellpadding="0" cellspacing="0">
                        <tbody>
                        <tr>
                            <td height="46px;" align="center" colspan="3" style="font-size: 20px; color: #f4f4f4; background-color: #00E8D7">
                                热门景区
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td height="126px;" width="75px;" >
                                <img src="images/gb.jpg" style="margin-left: 5px;">
                            </td>
                            <td width="10px;"></td>
                            <td style="" align="left" valign="top" >
                                <table border="0" width="100%" height="126px;" cellspacing="0" cellpadding="0">
                                    <tbody>
                                    <tr>
                                        <td height="22px;" style="font-size: 15px;color: #0000FF">
                                            <a href="searchSpot?office=甘肃博物馆">甘肃博物馆</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="22px;" style="font-size: 15px;color: #000000">
                                            甘肃博物馆
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="" style="font-size: 17px;color: #595959">
                                            &nbsp;&nbsp;&nbsp;&nbsp;甘肃博物馆
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td height="126px;">
                                <img src="images/中山桥.png" style="margin-left: 5px;">
                            </td>
                            <td width="10px;"></td>
                            <td style="" align="left" valign="top" >
                                <table border="0" width="100%" height="126px;" cellspacing="0" cellpadding="0">
                                    <tbody>
                                    <tr>
                                        <td height="22px;" style="font-size: 15px;color: #0000FF">
                                            <a href="searchSpot?office=中山桥">中山桥</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="22px;" style="font-size: 15px;color: #000000">
                                            中山桥
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="" style="font-size: 17px;color: #595959">
                                            &nbsp;&nbsp;&nbsp;&nbsp;中山桥
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td height="126px;">
                                <img src="images/兰州老街.png" style="margin-left: 5px;">
                            </td>
                            <td width="10px;"></td>
                            <td style="" align="left" valign="top" >
                                <table border="0" width="100%" height="126px;" cellspacing="0" cellpadding="0">
                                    <tbody>
                                    <tr>
                                        <td height="22px;" style="font-size: 15px;color: #0000FF">
                                            <a href="searchSpot?office=兰州老街">兰州老街</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="22px;" style="font-size: 15px;color: #000000">
                                            兰州老街
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="" style="font-size: 17px;color: #595959">
                                            &nbsp;&nbsp;&nbsp;&nbsp;兰州老街
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td height="126px;">
                                <img src="images/黄河母亲.png" style="margin-left: 5px;">
                            </td>
                            <td width="10px;"></td>
                            <td style="" align="left" valign="top" >
                                <table border="0" width="100%" height="126px;" cellspacing="0" cellpadding="0">
                                    <tbody>
                                    <tr>
                                        <td height="22px;" style="font-size: 15px;color: #0000FF">
                                            <a href="searchSpot?office=黄河母亲">黄河母亲</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="22px;" style="font-size: 15px;color: #000000">
                                            黄河母亲
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="" style="font-size: 17px;color: #595959">
                                            &nbsp;&nbsp;&nbsp;&nbsp;黄河母亲
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            </tbody>
        </table>
        </div>
    </div>
</div>

</body>
</html>
