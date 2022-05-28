<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="shopclassify.aspx.cs" Inherits="WebApplication1.shopclassify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .right-middle {
            margin-left:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="right-middle">
          <p style="text-align:right;margin-bottom:20px;margin-top:10px;">搜索：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              <asp:ListItem>商品分类</asp:ListItem>
                   </asp:DropDownList>&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;
              <asp:Button ID="Button1" runat="server" Text="搜索" CssClass="btngou" ForeColor="White" OnClick="Button1_Click" />
          </p>
         <div class="demo demo-1"><div class="scrollbar">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <dl style="float: left; text-align: center; margin-left: 20px; margin-bottom: 10px;">
                        <dt>
                            <img src='<%#Eval("MV_img")%>' width="300px" height="280px" /></dt>
                        <dd style="margin-bottom: 5px; margin-top: 5px;"><span style="margin-right: 20px;"><%#Eval("MV_goodsName")%></span></dd>
                    </dl>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:MV_ConvenienceStoreConnectionString %>' SelectCommand="SELECT [MV_goodsName], [MV_img], [MV_introDtion] FROM [mv_GoodsInfo]"></asp:SqlDataSource>
     </div> </div> 
        </div>
</asp:Content>
