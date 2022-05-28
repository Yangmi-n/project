<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="userEditing.aspx.cs" Inherits="WebApplication1.userMxiugai" %>
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
        <h3 style="margin:10px 0px 10px 10px">当前页面：修改密码</h3>
          <table border="1" class="tab1"cellspacing="0"cellspadding="0">
             <%-- <tr><td align="right"width="510px">学 号：</td><td align="left"><asp:TextBox ID="txtid" runat="server" Width="300px"></asp:TextBox></td></tr>--%>
               <tr><td align="right"width="510px">用户名：</td><td align="left"><asp:TextBox ID="txtuser" runat="server" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">旧密码：</td><td align="left"><asp:TextBox ID="txtoldpwd" runat="server" TextMode="Password" Width="300px"></asp:TextBox></td></tr>
               <tr><td align="right">新密码：</td><td align="left"><asp:TextBox ID="txtnewpwd" runat="server" TextMode="Password" Width="300px"></asp:TextBox></td></tr>
              <tr><td align="right">确认密码：</td><td align="left"><asp:TextBox ID="txtrealpwd" runat="server" TextMode="Password" Width="300px"></asp:TextBox></td></tr>
              <tr ><td colspan="2"align="center" class="auto-style1"><asp:Button ID="Button1" runat="server" Text="确认修改" ForeColor="Black" Width="100px" OnClick="Button1_Click" /></td></tr>
           </table >
    </div>
</asp:Content>
