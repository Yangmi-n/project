<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopindex.aspx.cs" Inherits="eshop.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        * {
        margin:0px;
        padding:0px; 
        list-style:none;
        }
        #box{
        width:1500px;
        height:790px;
        background-image:url(img/qiuqiu.jpg);
        margin:0px auto;/*块级元素居中*/
        position:relative;

        }
        #content{
        width:920px;
       
        margin:0px auto;
        padding-top:70px;

        
        }
        #header{
        height:245px;
        background-image:url("img/touxiang.jpg" );
        }
        #header p{
            margin-top:70px;
            color:yellow;
            font-size:12px;
            font-family:'Microsoft YaHei';
        }
            #header ul {
            height:45px;
            width:423px;
            background-color:pink;
            margin-top:60px;
            }
                #header ul li {
                float:left;
                margin-left:30px;
                color:black;
                line-height:45px; 
                
                }
            #header a {
            color:black;
            text-decoration:none;

            
            }
      

                #header a:hover {
                color:white;

                
                }
        #left {
        width:870px;
        float:left;
         height:450px;   
         padding-left:50px;
         background-color:pink;
        }
            #left h1 {
            margin-bottom:40px;
            margin-top:40px;

            
            
            }
       
        #left dl {
            float: left;
            margin-right: 20px;
        }
        .d1{
            text-decoration: underline;
            font-size: 10px;
            color: #971414;
            margin-bottom:10px;
        }
        .d2{
            margin-bottom:5px;
            width: 116px;
            height: 25px;
            background-color:pink;
            text-align: center;
            line-height: 25px;
            color:yellow;
        }
        #car {
            position: absolute;
            top: 50px;
            left:750px;
        }
        .bt{
            width:116px;
            height:25px;
             background-color:pink;
            border:0px;
            text-align:center;
            line-height:25px;
            color:black;
            border:1px solid white;
            font-size:12px;
            }
        .num {
        width:20px;
        height:20px;
        display:block;/*以块状显示*/
        background-color:red;
        color:black;
        text-align:center;/*文本水平居中*/
        line-height:20px;/*文本垂直居中*/
        border-radius:50%;
        position:relative;/*相对原来的位置偏移*/
        top:-45px;/*向上移*/
        left:35px;/*向右移*/
        }
        </style>

</head>
<body>
    <form id="form1" runat="server">
         
    <div id="box">
        <div id="car" style="position:absolute;left:1060px;top:220px">
           <a href="shopcar.aspx"> <img src="img/白色购物车.png" width="40px" height="40px"/></a>
            <asp:Label ID="Label1" runat="server" Text="0" CssClass="num"></asp:Label>
           <p style="margin-top:-180px;">
               <asp:Image ID="Image1" runat="server" Visible="false" Height="40px" Width="40px" /></p> 
           <p style="margin-top:-35px;margin-left:45px"><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" ForeColor="Black">登录▼</asp:LinkButton></p>  
          </div>
            <div id="content">
                <div id="header">
                    <img src="img/logo.png" width="100px" height="100px"/>
                    <p style="font-size:33px;color:black;font-family:宋体;position:relative;top:-70px;">好吃美味\便宜省钱——尽在银河零食售卖网上商场</p>
                    <ul style="width:920px;margin-top:0px;">
                        <li><a href="#">首页</a></li>
                            <asp:Repeater ID="Repeater1" runat="server" >
                                <ItemTemplate>
                                    <li>|</li>
                                   <li>
                                       <asp:LinkButton ID="LinkButton" runat="server" OnClick="LinkButton_Click" CssClass="bt1" CommandName='<%#Eval("typeid")%>'><%#Eval("typename")%></asp:LinkButton>
                                    </li>  
                                </ItemTemplate>
                            </asp:Repeater>
                        
                    </ul>    
                    </div>            
               
                <div id="goods">
                    <div id="left">
                        <h1 style="font-family:宋体">零食贩卖</h1>
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <dl>
                                    <dt><a href='shopdetailed.aspx?id=<%#Eval("id") %>'><img src='img/<%#Eval("imgurl") %>'width="70px" height="70px"/></a></dt>
                                    <dd class="d1"><%#Eval("name") %>&nbsp;&nbsp;&yen;<%#Eval("price")%></dd>
                                    <dd class="d2">+关注</dd>
                                    <dd class="d3">
                                        <asp:Button ID="Button1" CssClass="bt" Text="加入购物车" OnClick="Button1_Click" CommandArgument='<%#Eval("id")%>' runat="server" />
                                                             
                                    </dd>     
                                </dl>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>


            </div>
    
    </div>
    </form>
</body>
</html>
