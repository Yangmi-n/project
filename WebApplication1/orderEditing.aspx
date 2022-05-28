<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="orderEditing.aspx.cs" Inherits="WebApplication1.orderEditing" %>
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
        <h3 style="margin:10px 0px 10px 10px">当前页面：订单编辑</h3>
          <table border="1" class="tab1"cellspacing="0"cellspadding="0">
              <tr><td align="right"width="510px">序列：</td><td align="left"><asp:TextBox ID="txtorderid" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right"width="510px">订单编号：</td><td align="left"><asp:TextBox ID="txtordername" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">订单数量：</td><td align="left"><asp:TextBox ID="txtordernum" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">联系电话：</td><td align="left"><asp:TextBox ID="txtordertel" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right">邮编编号：</td><td align="left"><asp:TextBox ID="txtorderyoubian" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right"width="510px">发货地址：</td><td align="left"><asp:TextBox ID="txtorderfh" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right"width="510px">收货地址：</td><td align="left"><asp:TextBox ID="txtordersh" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">是否支付：</td><td align="left"><asp:TextBox ID="txtorderzhif" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">添加时间：</td><td align="left"><asp:TextBox ID="txtordertime" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right">商品价格：</td><td align="left"><asp:TextBox ID="txtorderprice" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right">商品总额：</td><td align="left"><asp:TextBox ID="txtordercount" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr ><td colspan="2"align="center" class="auto-style1"><asp:Button ID="btnOrderEditing" runat="server" Text="确认修改" ForeColor="Black" Width="100px" OnClick="btnOrderEditing_Click1"/></td></tr>
           </table >
    </div>
</asp:Content>
