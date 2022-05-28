<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="shopAdd.aspx.cs" Inherits="WebApplication1.shopAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
              <style>
             .tab1 {
            width:1325px;
            height:150px;
            margin-left:10px;
            color:black;
        }
          .auto-style1 {
              height: 36px;
          }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="right"style="text-align:center;">
        <h3 style="margin:10px 0px 10px 10px">当前页面：商品添加</h3>
          <table border="1" class="tab1"cellspacing="0"cellspadding="0">
              <tr><td align="right"width="510px">商品编号：</td><td align="left"><asp:TextBox ID="txtshopAdd" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right"width="510px">商品名称：</td><td align="left"><asp:TextBox ID="txtshopName" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">商品价格：</td><td align="left"><asp:TextBox ID="txtshopPrice" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">商品图片：</td><td align="left"><asp:TextBox ID="txtshopIma" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right">商品分类：</td><td align="left"><asp:TextBox ID="txtshopClassify" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr ><td colspan="2"align="center" class="auto-style1"><asp:Button ID="btnshopAdd" runat="server" Text="确认添加" ForeColor="Black" Width="100px" OnClick="btnshopAdd_Click" /></td></tr>
           </table >
    </div>
</asp:Content>
