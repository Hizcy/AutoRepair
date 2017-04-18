﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/style1.css">
    <script src="js/jquery-1.7.2.min.js"></script>
  <script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
</head>
<body>
     <form id="Form1" runat="server">
   <div class="top">
      <div id="top_t">
        <div id="logo" class="fl"></div>
        <div id="photo_info" class="fr">
 <%--         <div id="photo" class="fl">
            <a href="#"><img src="images/a.png" alt="" width="60" height="60"></a>
          </div>--%>
          <div id="base_info" class="fr">
            <div class="help_info"><span style="color: #bac2c8;font-size:16px">欢迎你：</span>
              <a href="1" id="hp" style="color: #bac2c8;font-size: 16px;">张三</a>
              <a href="2" id="gy" style="color: #bac2c8;font-size: 16px;">退出</a>
             <%-- <a href="3" id="out">&nbsp;</a>--%>
            </div>
          <%--  <div class="info_center">
              admin
              <span id="nt">通知</span><span><a href="#" id="notice">3</a></span>
            </div>--%>
          </div>
        </div>
      </div>
      <div id="side_here">
        <div id="side_here_l" class="fl"></div>
        <div id="here_area" class="fl">当前位置：</div>
      </div>
    </div>
    <div class="side">
        <div class="sideMenu" style="margin:0 auto">
          <h3>维修记录</h3>
          <ul>
            <li class=""><a>维修记录1</a></li>
            <li class=""><a>维修记录2</a></li>
            <li class=""><a>维修记录3</a></li>
            <li class=""><a>维修记录4</a></li>
            <li class=""><a>维修记录5</a></li>
          </ul>
          <h3> 我的车辆</h3>
          <ul>
            <li class=""><a>我的车辆1</a></li>
            <li class=""><a>我的车辆2</a></li>
            <li class=""><a>我的车辆3</a></li>
            <li class=""><a>我的车辆4</a></li>
            <li class=""><a>我的车辆5</a></li>
          </ul>
          <h3> 我的预约</h3>
          <ul>
            <li class=""><a>我的预约1</a></li>
            <li class=""><a>我的预约2</a></li>
          </ul>
          <h3>个人中心</h3>
          <ul>
            <li class=""><a>个人中心1</a></li>
            <li class=""><a>个人中心2</a></li>
          </ul>
       
       </div>
    </div>
    <div class="main">
       <iframe name="right" id="rightMain" src="main.html" frameborder="no" scrolling="auto" width="100%" height="auto" allowtransparency="true"></iframe>
    </div>
    <div class="bottom">
      <div id="bottom_bg">版权 车辆电子管理档案</div>
    </div>
    <div class="scroll">
          <a href="javascript:;" class="per" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(1);"></a>
          <a href="javascript:;" class="next" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(2);"></a>
    </div>
         
</form>
    <script type="text/javascript">
        $('.sideMenu li a').click(function () {
           
            $('.sideMenu li').removeClass('on');
            $(this).parent().addClass('on');
        })
        $(function () {
            $(".sideMenu").slide({
                titCell: "h3",
                targetCell: "ul",
                defaultIndex: 0,
                effect: 'slideDown',
                delayTime: '500',
                trigger: 'click',
                triggerTime: '150',
                defaultPlay: true,
                returnDefault: false,
                easing: 'easeInQuint',
                endFun: function () {
                    scrollWW();
                }
            });
            $(window).resize(function () {
                scrollWW();
            });
        });
        function scrollWW() {
            if ($(".side").height() < $(".sideMenu").height()) {
                $(".scroll").show();
                var pos = $(".sideMenu ul:visible").position().top - 38;
                $('.sideMenu').animate({ top: -pos });
               
            } else {
                $(".scroll").hide();
                $('.sideMenu').animate({ top: 0 });
                n = 1;
                
            }
        }

        var n = 1;
        function menuScroll(num) {
            var Scroll = $('.sideMenu');
            var ScrollP = $('.sideMenu').position();
            /*alert(n);
            alert(ScrollP.top);*/
            if (num == 1) {
                Scroll.animate({ top: ScrollP.top - 38 });
                n = n + 1;
            } else {
                if (ScrollP.top > -38 && ScrollP.top != 0) { ScrollP.top = -38; }
                if (ScrollP.top < 0) {
                    Scroll.animate({ top: 38 + ScrollP.top });
                } else {
                    n = 1;
                }
                if (n > 1) {
                    n = n - 1;
                }
            }
        }
  </script>
</body>
</html>
