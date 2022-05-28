<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
            body {
               background-image: url('../img/10.jpg');
               background-repeat: no-repeat;
               background-size: 1540px 1000px;
            }
    
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="color:white;margin-left:47%;font-family:华文彩云;">注册新用户</h1>
    <div style="width:44%;height:650px;position :absolute ;left:30%;top:8%;text-align:center;background-color :rgba(255,255,255,0.5);">
     <table width="100%" height="30%"border="0" cellspacing="0"cellspadding="0">
         <tr valign="top">
             <td height="100%"clospan="3"class="l-r-space">
                 <table width="100%" border="0" cellspacing="0"cellspadding="13"style="margin-top:15px;">
                     <tr>
                         <td >
                             <table cellspadding="2"border="0" cellspacing="3"style="text-indent:20px;">
                                 <tr>
                                     <td colspan="2" style="font-size:20px;">下面是必填内容：</td>
                                 </tr>
                                 <tr><td colspan="2"><hr /></td></tr>
                                 <tr>

                                     <td width="150"height="45"class="LeftTD"align="right">用户名称：</td>
                                     <td align="right" >
                                         <asp:TextBox ID="txtusername" runat="server" Width="300px" CausesValidation="True"></asp:TextBox></td>
                                     
                                 </tr>
                                  <tr>
                                      <td width="150"height="45"class="LeftTD"align="right">输入密码：</td>
                                      <td align="right"><asp:TextBox ID="tbpwd" runat="server" TextMode="Password" Width="300px" CausesValidation="True"></asp:TextBox></td>
                                           <td style="text-indent:20px;">
                                                
                                               </td>
                                      </tr>
                                  <tr>
                                      <td width="150"height="45"class="LeftTD"align="right">确认密码：</td>
                                      <td align="right"><asp:TextBox ID="tbpwd2" runat="server" TextMode="Password" Width="300px"></asp:TextBox></td>
                                      <td>
                                          </td>
                                         
                                   
                                  </tr>
                                 <tr>
                                      <td width="150"class="auto-style1"align="right">性别：</td>
                                      <td align="right">
                                          <asp:RadioButtonList ID="rdoList" runat="server" RepeatDirection="Horizontal" Width="300px">
                                              <asp:ListItem Selected="True">女</asp:ListItem>
                                              <asp:ListItem>男</asp:ListItem>
                                          </asp:RadioButtonList></td>
                                      
                                  </tr>
                               
                                 <tr>
                                     <td width="150"height="45"class="LeftTD"align="right">密保问题：</td>
                                     <td align="right"><asp:TextBox ID="qestion" runat="server" Width="300px"></asp:TextBox>
                                         
                                     </td>
                                     
                                 </tr>
                                 <tr> 
                                      <td width="150"height="45"class="LeftTD"align="right">答案：</td>
                                     <td align="right"><asp:TextBox ID="answer" runat="server" Width="300px"></asp:TextBox>
                                        
                                     </td>
                                     
                                 </tr>
                                  
                                 
                                 <tr>
                                      <td width="150"height="45"class="LeftTD"align="right">联系地址：</td>
                                      <td align="right"><asp:TextBox ID="tbaddress" runat="server" Width="300px"></asp:TextBox>
                                        
                                      </td>
                                  
                                  </tr>

                                  <tr>
                                      <td width="150"height="45"class="LeftTD"align="right">电子邮箱：</td>
                                      <td align="right"><asp:TextBox ID="tbEmail" runat="server" Width="300px"></asp:TextBox>
                                      
                                      </td>
                                      <td>
                                          </td>
                                  
                                  </tr>
                                  <tr>
                                      <td width="150"height="45"class="LeftTD"align="right">联系电话：</td>
                                      <td align="right"><asp:TextBox ID="phone" runat="server" Width="300px"></asp:TextBox>
                                        
                                      </td>
                                        <td >
                                           </td>
                
                                  </tr>
                                 <tr>
                                      <td colspan="2"><hr /></td>
                                  </tr>
                                 <tr>
                                     <td colspan="3" valign="middle"height="40">
                                         <asp:Button ID="btnOk" runat="server" Text="提交" Width="200px" OnClick="btnOk_Click1" Height="35px" />
                          
                                     </td>

                                 </tr>
                             </table>
                         </td>
                     </tr>
                 </table>
             </td>
         </tr>
     </table>
    </div>
    </form>
</body>
</html>
