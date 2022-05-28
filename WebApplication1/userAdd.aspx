<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="userAdd.aspx.cs" Inherits="WebApplication1.userMtianjia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
          <style>
             .tab1 {
            width:1325px;
            height:150px;
            margin-left:10px;
            color:black;
        }
          .auto-style1 {
              height: 54px;
          }
              .auto-style2 {
                  height: 27px;
              }
              .auto-style3 {
                  width: 1325px;
                  height: 147px;
                  margin-left: 10px;
                  color: black;
              }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="right"style="text-align:center;">
        <h3 style="margin:10px 0px 10px 10px">当前页面：添加用户</h3>
          <table border="1" class="auto-style3"cellspacing="0"cellspadding="0">
              <tr><td align="right"width="510px" class="auto-style2">学 号：</td><td align="left" class="auto-style2"><asp:TextBox ID="userAddid" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right"width="510px" class="auto-style2">用户名：</td><td align="left" class="auto-style2"><asp:TextBox ID="userAdd" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">密 码：</td><td align="left"><asp:TextBox ID="userAddpwd" runat="server" TextMode="Password" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right"width="510px" class="auto-style2">确认密码：</td><td align="left" class="auto-style2"><asp:TextBox ID="txtpwd2" runat="server" Width="300px" TextMode="Password"></asp:TextBox></td></tr>
              <tr><td align="right"width="510px" class="auto-style2">密保问题：</td><td align="left" class="auto-style2"><asp:TextBox ID="txtquestion" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right"width="510px" class="auto-style2">密保答案：</td><td align="left" class="auto-style2"><asp:TextBox ID="txtansew" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right"width="510px" class="auto-style2">账户余额：</td><td align="left" class="auto-style2"><asp:TextBox ID="txtcount" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right"width="510px" class="auto-style2">性别：</td><td align="left" class="auto-style2"><asp:TextBox ID="txtsex" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right"width="510px" class="auto-style2">地址：</td><td align="left" class="auto-style2"><asp:TextBox ID="txtaddr" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right"width="510px" class="auto-style2">联系方式：</td><td align="left" class="auto-style2"><asp:TextBox ID="txttel" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right"width="510px" class="auto-style2">电子邮箱：</td><td align="left" class="auto-style2"><asp:TextBox ID="txtemail" runat="server" Width="300px"></asp:TextBox></td></tr>
              <tr ><td colspan="2" align="center" class="auto-style1"><asp:Button ID="btntianjia" runat="server" Text="确认添加" ForeColor="Black" Width="100px" OnClick="btntianjia_Click" /></td></tr>
           </table >
    </div>
</asp:Content>
