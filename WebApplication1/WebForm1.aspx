<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="eshop.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body {
          background-image:url(img/qiuqiu.jpg);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table border="1" cellspacing="0">
            
            <tr>
                <td>商品名称:</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>商品类型:</td>
                <td class="auto-style1"><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList> </td>
            </tr>
            <tr>
                <td>价格:</td>
                <td class="auto-style1"><asp:TextBox ID="TextBox3"  runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>是否下架:</td>
                <td class="auto-style1"><asp:CheckBox ID="CheckBox1" runat="server" /> </td>
            </tr>
            <tr>
                <td>图片:</td>
                <td class="auto-style1"> <asp:FileUpload ID="FileUpload1" runat="server" />
                     <asp:Image ID="Image1" runat="server" Height="100px"   Width="100px" />
                     <asp:Button ID="Button1" runat="server"  Text="上传"  OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td> </td>
                <td class="auto-style1"> <asp:Button ID="Button2" runat="server" Text="确定"  OnClick="Button2_Click1"/>
                     <asp:Button ID="Button3" runat="server" Text="取消" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
