<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="orderAdd.aspx.cs" Inherits="WebApplication1.orderAdd" %>
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
        <h3 style="margin:10px 0px 10px 10px">当前页面：添加订单</h3>
          <table border="1" class="tab1"cellspacing="0"cellspadding="0">
              <tr><td align="right"width="510px">ID：</td><td align="left"><asp:TextBox ID="orderid" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right"width="510px">订单号：</td><td align="left"><asp:TextBox ID="orderuser" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">订单数量：</td><td align="left"><asp:TextBox ID="ordernum" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">联系电话：</td><td align="left"><asp:TextBox ID="ordertel" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right">邮编编号：</td><td align="left"><asp:TextBox ID="orderbianhao" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right"width="510px">发货地址：</td><td align="left"><asp:TextBox ID="orderfaddr" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right"width="510px">收货地址：</td><td align="left"><asp:TextBox ID="ordersaddr" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">是否支付：</td><td align="left"><asp:TextBox ID="orderzhif" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">添加时间：</td><td align="left"><asp:TextBox ID="ordertime" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right">单价：</td><td align="left"><asp:TextBox ID="orderprice" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">总金额：</td><td align="left"><asp:TextBox ID="ordercount" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr ><td colspan="2"align="center" class="auto-style1"><asp:Button ID="btnOrderAdd" runat="server" Text="确认添加" ForeColor="Black" Width="100px" OnClick="btnOrderAdd_Click"/></td></tr>
           </table >
    </div>
</asp:Content>
