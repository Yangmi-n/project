<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopclassify2.aspx.cs" Inherits="WebApplication1.shopclassify2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div id="box">
    <div id="top"><ul>
    <li style="margin-left:20px;"><a href="#"><img src="../img/logo.png" style="width:60px;height:60px;margin-top:0px"/><span class="title-coud">银河便利店</span></a></li>
    <li style="margin-left:100px;margin-right:-10px;"><a href="#"class="border">☛</a></li>
    <li><a href="#"class="border"style="margin-right:0px;">搜索:<asp:DropDownList ID="DropDownList1" runat="server" CssClass="border" ForeColor="White">
        <asp:ListItem>按商品ID</asp:ListItem>
        </asp:DropDownList></a></li>
    <li><a href="#"><asp:TextBox ID="serch" runat="server" CssClass="border" ForeColor="White" Height="23px" AutoPostBack="True"></asp:TextBox></a></li>
    <li style="padding-top:14px;line-height:30px;"><a href="#"><asp:ImageButton ID="Select" runat="server" CssClass="border" Height="31px" ImageUrl="~/img/搜索图标.png" Width="24px" OnClick="ImageButton1_Click1" /></a></li>
    <li style="margin-left:260px;">
        <a href="shopdetailed.aspx">
           <%-- <img src="../img/qiuqiu.jpg" />--%>
            <asp:Image ID="Image1" runat="server" Visible="false"/>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">登录▼</asp:LinkButton>
        </a>
    </li>
   <%-- <li><a href="denglu.aspx"><span>登录</span>&nbsp;</a></li>--%>
    <li><a href="mine.aspx">开通VIP</a></li>
    <li><a href="shopdetailed.aspx"><img src="../img/装饰.png"/></a></li>
    <li><a href="shopdetailed.aspx"><img src="../img/白设置.png"/></a></li>
    <li><a href="register.aspx"><img src="../img/私信.png"/></a></li>
    <li><a href="#">|</a></li>          
    <li><a href="shoppingcar.aspx"><img src="../img/白色购物车.png"/></a></li>
    <li><a href="shopguang.aspx"><img src="../img/物流订单.png"/></a></li>
    <li><a href="shopserach.aspx"><img src="../img/商品.png"  /></a></li>
    <li><a href="denglu.aspx"><img src="../img/白色我的.png"  /></a></li>
</ul></div>
  <div id="middle">
    <div class="left">
      <ul>
                          <li style="font-size: 18px; position: relative;"><a href="shopclassify.aspx">生活用品<span class="fuhao">></span></a>
                              <ul>
                     
                                          <li>
                                              <a href="shopclassify.aspx">
                                                  <img src="img/s1.jpg" class="tpian" /></a></li>
                                          <li><a href="shopclassify.aspx">毛巾</a></li>
                                           <li><a href="shopclassify.aspx">
                                      <img src="img/x5.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">纸巾</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/x8.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">洗护</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/x6.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">杯子</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/a3.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">洗吹</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/a4.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">美妆</a></li>
                              </ul>
                          </li>
                          <li><a href="shopclassify.aspx"><span>沐浴露</span></a></li>
                          <li><a href="shopclassify.aspx"><span>毛巾</span></a></li>
                          <li><a href="shopclassify.aspx"><span>杯子</span></a></li>
                          <li style="font-size: 18px; position: relative;"><a href="#">零食专区<span class="fuhao">></span></a>
                              <ul>
                                  <li>
                                      <a href="shopclassify.aspx">
                                          <img src="img/aix.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">黑巧</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/g5.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">蛋糕</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/ta3.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">饼干</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/sup.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">薯片</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/tang.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">糖果</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/q2.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">干面</a></li>
                              </ul>
                          </li>
                          <li><a href="shopclassify.aspx"><span>巧克力</span></a></li>
                          <li><a href="shopclassify.aspx"><span>糖果</span></a></li>
                          <li><a href="shopclassify.aspx"><span>饼干</span></a></li>
                          <li style="font-size: 18px; position: relative;"><a href="#">饮料专区<span class="fuhao">></span></a>
                              <ul>
                                  <li>
                                      <a href="shopclassify.aspx">
                                          <img src="img/s2.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">果汁</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/ta7.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">牛奶</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/w4.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">奶茶</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/e9.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">汽水</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/s3.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">碳酸</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/e6.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">水</a></li>
                              </ul>
                          </li>
                          <li><a href="shopclassify.aspx"><span>牛奶</span></a></li>
                          <li><a href="shopclassify.aspx"><span>奶茶</span></a></li>
                          <li><a href="shopclassify.aspx"><span>气泡水</span></a></li>
                          <li style="font-size: 18px; position: relative;"><a href="#">饮料专区<span class="fuhao">></span></a>
                              <ul>
                                  <li>
                                      <a href="shopclassify.aspx">
                                          <img src="img/s2.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">果汁</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/ta7.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">牛奶</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/w4.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">奶茶</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/e9.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">汽水</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/s3.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">碳酸</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/e6.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">水</a></li>
                              </ul>
                          </li>
                          <li><a href="shopclassify.aspx"><span>牛奶</span></a></li>
                          <li><a href="shopclassify.aspx"><span>果汁</span></a></li>
                          <li><a href="shopclassify.aspx"><span>奶茶</span></a></li>
                          <li style="font-size: 18px; position: relative;"><a href="#">饮料专区<span class="fuhao">></span></a>
                              <ul>
                                  <li>
                                      <a href="shopclassify.aspx">
                                          <img src="img/s2.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">果汁</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/ta7.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">牛奶</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/w4.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">奶茶</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/e9.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">汽水</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/s3.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">碳酸</a></li>
                                  <li><a href="shopclassify.aspx">
                                      <img src="img/e6.jpg" class="tpian" /></a></li>
                                  <li><a href="shopclassify.aspx">水</a></li>
                              </ul>
                          </li>
                          <li><a href="shopclassify.aspx"><span>牛奶</span></a></li>
                          <li><a href="shopclassify.aspx"><span>果汁</span></a></li>
                          <li><a href="shopclassify.aspx"><span>奶茶</span></a></li>
          <h3 style="text-align:center"><a href="#"><span>
                    <img src="img/精品内容图标.png"width="150"height="160"/></span></a></h3>
            </ul>
            <table border="1" id="tab" cellspacing="3">
                <tr><td>FASTF快餐</td><td>CANDY糖果</td><td>CAKE蛋糕</td></tr>
                 <tr><td>JUICE果汁</td><td>BP美妆</td><td>NUT坚果</td></tr>
               </table>
        </div>
        <div class="right">
            <div class="right-top">
                <ul class="right-title">
                    <li><a href="home.aspx">网站首页<ul><li></li></ul></a></li>
                   <%-- <li><a href="shopserach.aspx">商品搜索</a></li>
                    <li><a href="shopclassify.aspx">商品分类</a></li>
                    <li><a href="shopdetailed.aspx">商品详情</a> </li>--%>
                    <li><a href="shopguang.aspx">逛 一 逛</a></li>
                    <li><a href="shoppingcar.aspx">购 物 车</a><span style="position:relative;left:35px;top:7px"><asp:Label ID="Label1" runat="server" Text="Label" CssClass="num"></asp:Label></span></li>
                    <li><a href="mine.aspx">个人中心</a></li>
                </ul>
            </div>
            <div class="right-bottom">
                <p class="font-shop">热卖商品></p>
               <ul>
                   <asp:Repeater ID="Repeater1" runat="server">
                       <ItemTemplate>
                           <li>
                               <dl>
                                   <dt><span id="mm"><a href="shopdetailed.aspx">点击购买</a></span> <img src='<%#Eval("MV_img")%>'/></dt>
                                   <dd style="margin-top: 4px;"><%#Eval("MV_goodsName")%>&nbsp;&nbsp;&nbsp;<span style="font-size: 13px;">零售价:<span style="color: red;"><%#Eval("MV_goodsPrice")%></span>元</span></dd>
                                   <dd style="font-size: 12px;"><span><%#Eval("MV_goodsId")%>号</span><%#Eval("MV_introDtion")%></dd>
                               </dl>
                           </li>
                       </ItemTemplate>
                      
                   </asp:Repeater> 
                  
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MV_ConvenienceStoreConnectionString %>" SelectCommand="SELECT [MV_goodsId], [MV_goodsName], [MV_goodsPrice], [MV_introDtion], [MV_img] FROM [mv_GoodsInfo]"></asp:SqlDataSource>
                  
               </ul>
            </div>
        </div>
    </div>
        <div id="danp">
          <h1 style="font-family:宋体;font-weight:normal;padding-bottom:5px">零食单品</h1>
            <ul>
                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <li>
                            <dl>
                                <dt>
                                    <img src='<%#Eval("MV_imgDtion")%>' /></dt>
                                <dd><%#Eval("MV_goodsInfo")%></dd>
                                <dd><%#Eval("MV_goodsStyNa")%></dd>
                                <dd>
                                    <asp:Button ID="Button1" runat="server" Text="购买" CssClass="btngou" />加入购物车</dd>
                            </dl>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>

                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:MV_ConvenienceStoreConnectionString %>' SelectCommand="SELECT [MV_imgDtion], [MV_goodsInfo], [MV_goodsStyNa] FROM [mv_GoodsIntro]"></asp:SqlDataSource>
            </ul>
        </div>
        <div id="bottom">
            <p>&copy;特别出版社</p>
        </div>
</div>
    </form>
</body>
</html>
