<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="denglu.aspx.cs" Inherits="WebApplication1.denglu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/denglu.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
          <div id="Milkyway">
           <div id="bigcircle">
             <div id="outcircle">
              <img src="../img/6.png" style="position:relative;left:350px;top:-300px"/>
                 <img src="../img/4.png" style="width:300px;height:300px;position:absolute;left:7%;top:7%;"/>
                 <hr style="border:1px solid rgba(255,255,255,0.3);border-radius:100%;width:425px;height:425px;position:absolute;left:-10%;top:-10%;"/>
               <div id="circle1">
                 
               </div>
               <div id="circle2">
                  
               </div>
                  <div id="circle3">

               </div>
                  <div id="circle4">

               </div>
             </div>
               <div id="smallcircle"></div>
               <div id="smallcircle2"></div>
                <div id="smallcircle3"></div>
           </div>
    </div>
      
<div id="app">
      <div class="dlbtn" ><br />
            <h2 style="font-family:宋体;">登陆界面</h2><br />
            <p>用户名:<asp:TextBox ID="TextBox1" runat="server" CssClass="txt"></asp:TextBox>
            </p><br />
             <p>密&nbsp;&nbsp;&nbsp;码:<asp:TextBox ID="TextBox2" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
             </p><br />
            <p style="text-indent:-32px;">类&nbsp;&nbsp;&nbsp;型:<asp:DropDownList ID="ddl" runat="server" CssClass="btn">
                 <asp:ListItem>管理员</asp:ListItem>
                 <asp:ListItem>普通用户</asp:ListItem>
                </asp:DropDownList>&nbsp;<input type="checkbox" checked="checked" style="margin-top:3px;"/><span style="position:relative;top:-3px;">下次自动登录</span>
            </p><br />  <p>
               <asp:Button ID="btn" runat="server" Text="登录" OnClick="btn_Click" Width="80px"></asp:Button>
               <asp:Button ID="btn2" runat="server" Text="注册" CssClass="btn" Width="80px" OnClick="btn2_Click"></asp:Button>
             </p>
            <p  style="margin-top:10px;"><asp:Button ID="cZhi" runat="server" Text="重置" Width="160px" OnClick="cZhi_Click"></asp:Button></p><br />
            <p><span style="position:relative;top:-3px;">忘记密码?</span></p>
        </div>
</div>
    </form>
</body>
</html>
