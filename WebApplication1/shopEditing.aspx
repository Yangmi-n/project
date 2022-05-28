<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="shopEditing.aspx.cs" Inherits="WebApplication1.shopEditing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <style>
        .tab1 {
            width:1325px;
            height:150px;
            margin-left:10px;
            color:black;
        }
           .auto-style1 {
               margin-top: 15px;
           }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="right"style="text-align:center;">
        <h3 style="margin:10px 0px 10px 10px">当前页面：商品编辑</h3>
          <table border="1" class="tab1"cellspacing="0"cellspadding="0">
              <tr><td align="right"width="510px">商品编号：</td><td align="left"><asp:TextBox ID="txtshopid" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right"width="510px">商品名称：</td><td align="left"><asp:TextBox ID="txtshopname" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">商品价格：</td><td align="left"><asp:TextBox ID="txtshopprice" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">商品图片：</td><td align="left"><asp:TextBox ID="txtshopimg" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right">商品分类：</td><td align="left"><asp:TextBox ID="txtshopclassify" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr ><td colspan="2"align="center" class="auto-style1"><asp:Button ID="btnshopEditing" runat="server" Text="确认修改" ForeColor="Black" Width="100px" OnClick="btnshopEditing_Click" /></td></tr>
           </table >
    </div>
</asp:Content>
