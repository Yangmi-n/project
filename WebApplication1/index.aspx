<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/index.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div id="Milkyway">
        <ul>
            <li style="position:relative;top:240px;left:60px;">
                <a href="home.aspx"  style="color:white">
                  <img src="../img/1.png" width="160" height="160" class="spin "/>
                    <span style="position:absolute;left:0px ;top:0px;">网站首页</span>
                </a>
            </li>
            <li style="position:relative;top:220px;left:140px;">
                <a href="shopserach.aspx"class="shopserach"style="color:white">
                    <img src="../img/2.png" width="110" height="110" class="spin " />
                    <span style="position:absolute;left:0px ;top:0px;">商品搜索</span>
                </a>
            </li>

            <li style="position:relative;top:150px;left:220px;">
                <a href="shopclassify.aspx"class="shopclassify"style="color:white">
                    <img src="../img/3.png" width="190" height="190" class="spin " />
                    <span style="position:absolute;left:0px ;top:0px;">商品分类</span>
                </a>
            </li>
            <li><img src="../img/6.png" /></li>
            <li style="position:relative;top:180px;left:-130px;">
                <a href="shopdetailed.aspx"class="shoppingcar"style="color:white">
                 <img src="../img/4.png" width="125" height="125" class="spin " />
                    <span style="position:absolute;left:0px ;top:0px;">商品详情</span>
                </a>
            </li>

            <li style="position:relative;top:190px;left:-50px;">
                <a href="shopguang.aspx"class="shopguang"style="color:white">
                   <img src="../img/5.png" width="145" height="145" class="spin " />
                    <span style="position:absolute;left:0px ;top:0px;">逛&nbsp;逛</span>
                </a>
            </li>
            <li><img src="../img/6.png" style="position:absolute;left:1200px;top:0px;"/></li>
            <li style="position:relative;top:290px;left:10px;">
                <a href="shoppingcar.aspx"class="shopdetailed"style="color:white">
                   <img src="../img/8.jpg" width="150" height="150" class="spin" style="border-radius:100px" />
                    <span style="position:absolute;left:0px ;top:0px;">购物车</span>
                </a>
            </li>

            <li style="position: relative;top:270px; left:80px;" >
                <a href="mine.aspx"class="mine"style="color:white">
                   <img src="../img/7.png" width="290" height="290" class="spin "/>
                  <span style="position:absolute;left:0px ;top:0px;">个人中心</span>
                </a>
            </li>
            <li style="position:relative;top:390px;left:-400px;" >
                <a href="Admin.aspx"class="mine"style="color:white">
                   <img src="../img/8.png" width="170" height="170" class="spin "/>
                   <span style="position:absolute;left:0px ;top:0px;">后台</span>
                </a>
            </li>
        </ul>
    </div>
    <div style="width:400px;height:310px;position :absolute ;left:160px;top:390px; border:1px solid rgba(255,255,255,0.2);text-align:center;background-color :rgba(0,0,0,0.2)" id="ss" >
        <h1 style="margin:10px 0px;">公告</h1>
        <p style="text-align:center;font-family:宋体;">欢迎来到银河零食贩卖网站</p>
        <p style="margin:10px 40px 5px 50px">即日起,2020年零食贩卖网站正式开通,</p>
        <p style="margin:0px 40px 5px 40px">本网站主要售卖零食，有各种各样的零食，</p>
        <p style="margin:0px 40px 5px 40px">次要是售卖生活中的用品跟护肤美妆用品。</p>
        <p style="margin:0px 40px 5px 40px">如有需求请详见网站首页，期待你的光临！</p>
        <p style="text-align:left;margin:10px 40px 5px 80px">特此公告</p>
        <p style="text-align:right;margin:0px 60px 5px 40px">银河零食贩卖网站</p>
        <p style="text-align:right;margin:0px 60px 5px 40px">2020年12月18日</p>
    </div>

    </form>
</body>
</html>
