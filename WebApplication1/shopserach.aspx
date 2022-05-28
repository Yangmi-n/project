<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="shopserach.aspx.cs" Inherits="WebApplication1.shopserach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .right-middle > ul {
           width:1320px;
        }
            .right-middle > ul > li > dl > dd {
                text-align:center;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="right-middle">
        <%--<p style="text-align:right;margin-bottom:20px;margin-top:10px;">搜索：<asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" Text="查找" CssClass="btngou" /></p>
        <ul style="margin-left:10px">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                   <li style="margin-left:10px;"><dl style="float:left;margin-right:5px;margin-bottom:10px;">
                       <dt><img src='<%#Eval("MV_img")%>'width="322"height="203"/></dt>
                       <dd><%#Eval("MV_goodsName")%>&nbsp;&nbsp;&nbsp;<span style="font-size:13px;">零售价:<span style="color:red;"><%#Eval("MV_goodsPrice")%></span>元</span></dd>
                       <dd style="font-size:12px;"><span><%#Eval("MV_goodsId")%>号</span><%#Eval("MV_introDtion")%></dd>
                       
                       </dl></li>
                </ItemTemplate></asp:Repeater>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MV_ConvenienceStoreConnectionString %>" SelectCommand="SELECT [MV_goodsName], [MV_goodsPrice], [MV_introDtion], [MV_img], [MV_goodsId] FROM [mv_GoodsInfo]"></asp:SqlDataSource>
                  <li style="font-size:30px;display:inline-block;margin:80px 0px 0px 90px;"><a href="shopguang.aspx">点我逛逛<<</a></li>
               </ul> --%>
     <%--    <div id="box">
        <div id="car">
           <a href="shopcar.aspx"> <img src="img/g1.jpg" width="40px" height="40px" /></a>
            <asp:Label ID="Label1" runat="server" Text="0" CssClass="num"></asp:Label>
            <asp:Image ID="Image1" runat="server" Visible="false" />
            <asp:LinkButton ID="LinkButton1" runat="server"  OnClick="LinkButton1_Click" ForeColor="White">登录</asp:LinkButton>
          </div>
            <div id="content">
                <div id="header">
                    <img src="img/logo.gif"/>
                    <p style="font-size:18px;">物美价廉\省力省心——尽在Comuication网上商场</p>
                    <ul>
                        <li><a href="#">首页</a></li>
                            <asp:Repeater ID="Repeater1" runat="server" >
                                <ItemTemplate>
                                    <li>|</li>
                                   <li>
                                       <asp:LinkButton ID="LinkButton" OnClick="LinkButton_Click1" CssClass="bt1" CommandName='<%#Eval("typeid")%>'  runat="server"><%#Eval("typename")%></asp:LinkButton>
                                    </li>  
                                </ItemTemplate>
                            </asp:Repeater>
                        
                    </ul>    
                    </div>            
               
                <div id="goods">
                    <div id="left">
                        <h1>疯狂抢购</h1>
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <dl>
                                    <dt><a href='details.aspx?id=<%#Eval("id") %>'><img src='img/<%#Eval("imgurl") %>'/></a></dt>
                                    <dd class="d1"><%#Eval("name") %>&nbsp;&nbsp;&yen;<%#Eval("price")%></dd>
                                    <dd class="d2">+关注</dd>
                                    <dd class="d3">
                                        <asp:Button ID="Button1" CssClass="bt" Text="加入购物车" OnClick="Button1_Click" CommandArgument='<%#Eval("id")%>' runat="server" />
                                                             
                                    </dd>     
                                </dl>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div id="right">
                        <h1>服务宗旨</h1>
                        <asp:LinkButton ID="宗旨一" runat="server">

                                <p></p>

                        </asp:LinkButton>
                    </div>
                </div>


            </div>
    
    </div>
    </div>--%>
</asp:Content>
