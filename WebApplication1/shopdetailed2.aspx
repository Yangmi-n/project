<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="shopdetailed2.aspx.cs" Inherits="WebApplication1.shopdetailed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        .right-middle {

            margin-left:20px;
        }
        .right-middle>dl {
            height:400px; 
            width:1200px;
            
            border-bottom:1px solid #808080;
            
        }
        .right-middle dl > dd {
           
            height:70px;
            line-height:70px;
            border-bottom:1px dashed #808080;
            width:850px;
           
        }
            .gomai {
                padding:5px 10px 5px 10px;
                background-color:black;
                color:white;
                font-family:宋体；
            }
 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="right-middle">
          <br />
        <h3>商品详情&nbsp;&nbsp;Product</h3>
        <hr />
                        <dl>
                            <dt style="float: right;margin-right: 70px;">
                                <asp:Image ID="Image1" runat="server" Height="250px" Width="300px" />
                              <%--<img src="img/q5.jpg"  width="300px" height="250px"/>--%></dt>
                            <dd>商品名称：<asp:Label ID="lblname" runat="server" Text="Label"></asp:Label><asp:Label ID="lblid" runat="server" Text="Label" Visible="false"></asp:Label></dd>
                            <dd>销售价格：<asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label></dd>
                            <dd>销量：<asp:Label ID="lblnum" runat="server" Text="Label"></asp:Label></dd>
                            <dd style="margin-bottom: 30px;">商品详情:<asp:Label ID="lbldetail" runat="server" Text="Label"></asp:Label></dd>
                            <dt style="float: right; margin-right: 200px; margin-top: -40px">
                                <%--<asp:Button ID="Button1" runat="server" Text="购买" CssClass="btngou" />--%>
                                <asp:LinkButton ID="goshoping" runat="server" CssClass="gomai" OnClick="goshoping_Click" CommandArgument='<%#Eval("MV_goodsId")%>'>购买</asp:LinkButton>
                            </dt>
                        </dl>
    </div>
</asp:Content>
