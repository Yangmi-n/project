<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payMoney.aspx.cs" Inherits="eshop.payMoney" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
        <br />
        支付方式：<asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="0">微信支付</asp:ListItem>
            <asp:ListItem Value="1">银行卡支付</asp:ListItem>
            <asp:ListItem Value="2">支付宝支付</asp:ListItem>

             </asp:RadioButtonList>
        <br />
        <asp:Button ID="Button1" runat="server" Text="确定"  OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="取消"  OnClick="Button2_Click"/>
         </div>
    </form>
</body>
</html>
