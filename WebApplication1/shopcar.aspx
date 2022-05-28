<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopcar.aspx.cs" Inherits="eshop.shopcar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/homestyle.css" rel="stylesheet" />
    <style>
        * {
        margin:0px;
        padding:0px;
        list-style:none;
        }
      
  
        #left h2 {
        color:#645e2d;
        border-bottom:1px dotted black;
        margin:20px 0px 10px 0px;/*上，右，下，左*/
        }
        #tbt {
        width:546px;
        height:28px;
        background-color:#e8e8ec;
        text-align:right;/*文本右对齐*/
        line-height:28px;/*文本垂直居中*/
        }
            #tbt span {
            color:red;
            font-style:italic;/*文本倾斜*/
            }
        .auto-style1 {
            width: 655px;
            height: 162px;
        }
        .auto-style2 {
            margin-left: 0px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div id="box"><div id="top"><ul>
    <li style="margin-left:20px;"><a href="#"><img src="../img/logo.png" style="width:60px;height:60px;margin-top:0px"/><span class="title-coud">银河便利店</span></a></li>
    <li style="margin-left:100px;margin-right:-10px;"><a href="#"class="border">☛</a></li>
     <li><a href="#"class="border"style="margin-right:-7px;">搜索：</a></li>
    <li><a href="#"><asp:TextBox ID="serch" runat="server" CssClass="border" ForeColor="White" Height="23px"></asp:TextBox></a></li>
    <li style="padding-top:14px;line-height:30px;"><a href="#"><asp:ImageButton ID="搜索按钮" runat="server" CssClass="border" Height="31px" ImageUrl="~/img/搜索图标.png" Width="24px" /></a></li>
    <li style="margin-left:460px;">
        <a href="shopdetailed.aspx">
           <%-- <img src="../img/qiuqiu.jpg" />--%>
            <asp:Image ID="Image2" runat="server" Visible="false"/>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click">登录▼</asp:LinkButton>
        </a>
    </li>
   <%-- <li><a href="denglu.aspx"><span>登录</span>&nbsp;</a></li>--%>
    <li><a href="mine.aspx">开通VIP</a></li>
    <li><a href="shopdetailed.aspx"><img src="../img/装饰.png"/></a></li>
    <li><a href="shopdetailed.aspx"><img src="../img/白设置.png"/></a></li>
    <li><a href="register.aspx"><img src="../img/私信.png"/></a></li>
    <li><a href="#">|</a></li>          
    <li><a href="shoppingcar.aspx"><img src="../img/白色购物车.png"/><span style="position:relative;left:-15px;top:3px"><asp:Label ID="lbl" runat="server" Text="0" CssClass="num"></asp:Label></span></a></li>
    <li><a href="shopguang.aspx"><img src="../img/物流订单.png"/></a></li>
    <li><a href="shopserach.aspx"><img src="../img/商品.png"  /></a></li>
    <li><a href="denglu.aspx"><img src="../img/白色我的.png"  /></a></li>
</ul></div>
  <div id="middle"style="height:600px;">
    <div class="left" style="height:600px;">
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
                          <li style="font-size: 18px; position: relative;z-index:99999"><a href="#">饮料专区<span class="fuhao"></span></a>
                              
                          </li>
                          <li><a href="shopclassify.aspx"><span>牛奶</span></a></li>
                          <li><a href="shopclassify.aspx"><span>奶茶</span></a></li>
                          <li><a href="shopclassify.aspx"><span>气泡水</span></a></li>
          <h3 style="text-align:center"><a href="#"><span>
                    <img src="img/精品内容图标.png"width="150"height="160"/></span></a></h3>
            </ul>
        </div>
        <div class="right"style="height:600px">
            <div class="right-top">
                <ul class="right-title">
                    <li><a href="shopindex.aspx">网站首页<ul><li></li></ul></a></li>
                   <%-- <li><a href="shopserach.aspx">商品搜索</a></li>
                    <li><a href="shopclassify.aspx">商品分类</a></li>
                    <li><a href="shopdetailed.aspx">商品详情</a> </li>--%>
                    <li><a href="shopguang.aspx">逛 一 逛</a></li>
                    <li><a href="shopcar.aspx">购 物 车</a></li>
                    <li><a href="ZS.aspx">商品中心</a></li>
                </ul>
            </div>
            <div class="right-bottom" style="margin-top:-200px;height:500px">
             <div id="car">
               <div id="left" style="margin-left:20px;position:relative;top:-20px;text-align:center">
                   <h2>我的购物车</h2>
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1278px" CssClass="auto-style2" Height="367px">
                       <Columns>
                           <asp:TemplateField>
                               <HeaderTemplate>
                                   <asp:CheckBox ID="CheckBox1" runat="server"  AutoPostBack="true"  OnCheckedChanged="CheckBox1_CheckedChanged"/>全选
                               </HeaderTemplate>
                               <ItemTemplate>
                                   <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="true"  OnCheckedChanged="CheckBox2_CheckedChanged" />
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:BoundField DataField="name" HeaderText="商品名称" >
                           <HeaderStyle />
                           </asp:BoundField>
                           <asp:TemplateField HeaderText="单价">
                               <ItemTemplate>
                                   &yen;<asp:Label ID="Label2" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                               </ItemTemplate>
                               <HeaderStyle />
                               <ItemStyle ForeColor="Red" />
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="购买数量">
                               <ItemTemplate>
                                   <asp:Button ID="Button1" OnClick="Button1_Click"  CommandName='<%#Eval("goodsid") %>'  runat="server" Text="-" Width="20px" Height="20px" />
                                   <asp:TextBox ID="TextBox1" runat="server" value='<%#Eval("goodsnum") %>'></asp:TextBox> 
                                   <asp:Button ID="Button2" runat="server" Text="+" Width="20px" Height="20px" OnClick="Button2_Click"    CommandName='<%#Eval("goodsid") %>'/>
                               </ItemTemplate>
                               <HeaderStyle />
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="删除商品">
                               <ItemTemplate>
                                   <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return confirm('确认删除吗？')" OnClick="LinkButton1_Click" CommandName='<%#Eval("goodsid") %>'>删除</asp:LinkButton>
                               </ItemTemplate>
                               <HeaderStyle  />
                           </asp:TemplateField>
                       </Columns>
                   </asp:GridView>
                   <div id="tbt" class="auto-style1">
                        商品总金额：<asp:Label ID="Label1" runat="server" Text="0" ></asp:Label>元
                   </div>
                   <asp:Button ID="Button3" runat="server" Text="删除所选行" OnClientClick="return confirm('确认删除吗？')" OnClick="Button3_Click"/>
                   <asp:Button ID="Button4" runat="server" Text="提交订单" OnClick="Button4_Click"/>
               </div>
               <div id="right">

               </div>
           </div>
        </div>
    </div>
        <div id="bottom"style="position:absolute;top:661px;z-index:9999">
            <p>&copy;特别出版社</p>
        </div>
</div>
    </div>
    </form>
</body>
</html>
