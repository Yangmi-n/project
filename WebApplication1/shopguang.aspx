<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="shopguang.aspx.cs" Inherits="WebApplication1.shopguang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="css/scorlly.js"></script>
     <style>
            .right-middle{
                height:1050px;
                 border:0px solid red;
            }
        #main{
	width:1309px;
    z-index:999;
}  #main >a>img {
                width:207px;height:200px;
                margin-right:10px;
            }
#adver{
	position:absolute;
	left:1382px;
	top:105px;
	z-index:2;
}
        #closeDiv {
            position: relative;
            right: 0px;
            bottom: 0px;
            text-align: right;
            font-size: 12px;
            cursor: pointer;
        }
         .demo{
	  width   : 1320px;
	  height  : 1050px;
	  overflow: auto;
	  float   : left;
	  margin  : 5px;
	  border  : none;
	  border:0px solid black;
  }
  .scrollbar {
	  width : 1320px;
	  height: 1050px;
	  margin: 0 auto;
	  border:0px solid red;
  }
  /*滚动条整体样式*/
  .demo-1::-webkit-scrollbar {
	   border:0px solid green;
	  width : 10px;  /*高宽分别对应横竖滚动条的尺寸*/
	  height: 1px;
  }
  /*滚动条里面小方块*/
  .demo-1::-webkit-scrollbar-thumb { 
	  border-radius: 10px;
	  box-shadow   : inset 0 0 5px rgba(0, 0, 0, 0.2);
	   border:0px solid red;
	  background   : #535353;
  }
  /*滚动条里面轨道*/
  .demo-1::-webkit-scrollbar-track { 
	  box-shadow   : inset 0 0 5px rgba(0, 0, 0, 0.2);
	  border-radius: 10px;
	  border:0px solid pink;
	  background   : #ededed;
  }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="right-middle">
         <div class="demo demo-1"><div class="scrollbar">
        <div id="adver"><img src="img/e4.jpg" width="100px"height="100px"/><div id="closeDiv" onClick="closeAdv()"><span style="color:white">关闭</span></div></div>
<div id="main">
    <a href="shopdetailed.aspx">
    <img src="img/aix.jpg" /><img src="img/candy.jpg" /><img src="img/caom.jpg" />
    <img src="img/g1.jpg" /><img src="img/g2.jpg" /><img src="img/g3.jpg" />
    <img src="img/b4.jpg" /><img src="img/g5.jpg" /><img src="img/gaod.jpg" />
    <img src="img/g4.jpg" /><img src="img/e2.jpg" /><img src="img/green.jpg" />
    <img src="img/guan.jpg" /><img src="img/q2.jpg" /><img src="img/g6.jpg" />
    <img src="img/guaz.jpg" /><img src="img/sup.jpg" /><img src="img/a4.jpg" />
    <img src="img/a1.jpg" /><img src="img/a2.jpg" /><img src="img/q1.jpg" />
    <img src="img/baoz.jpg" /><img src="img/a5.jpg" /><img src="img/q3.jpg" />
    <img src="img/heiq.jpg" /><img src="img/e5.jpg" /><img src="img/q4.jpg" />
    <img src="img/g7.jpg" /><img src="img/bei.jpg" /><img src="img/q6.jpg" />
    <img src="img/e4.jpg" /><img src="img/jianguo.jpg" /><img src="img/a6.jpg" />
    <img src="img/hez.jpg" /><img src="img/q5.jpg" /><img src="img/g8.jpg" />
    <img src="img/a3.jpg" /><img src="img/meis.jpg" /><img src="img/ta1.jpg" />
    <img src="img/g9.jpg" /><img src="img/a7.jpg" /><img src="img/q7.jpg" />
    <img src="img/q9.jpg" /><img src="img/q8.jpg" /><img src="img/songs.jpg" />
    <img src="img/qiaoqiao.jpg" /><img src="img/ta3.jpg" /><img src="img/e6.jpg" />
    <img src="img/ta2.jpg" /><img src="img/ruant.jpg" /><img src="img/a8.jpg" />
    <img src="img/a9.jpg" /><img src="img/e7.jpg" /><img src="img/e8.jpg" />
    <img src="img/qioakel.jpg" /><img src="img/ta4.jpg" /><img src="img/s3.jpg" />
    <img src="img/x1.jpg" /><img src="img/e9.jpg" /><img src="img/s2.jpg" />
    <img src="img/ta5.jpg" /><img src="img/w2.jpg" /><img src="img/ta6.jpg" />
    <img src="img/ta7.jpg" /><img src="img/ta8.jpg" /><img src="img/ta9.jpg" />
     <img src="img/tang.jpg" /><img src="img/tiand.jpg" /><img src="img/w1.jpg" />
    <img src="img/w3.jpg" /><img src="img/w4.jpg" /><img src="img/w5.jpg" />
    <img src="img/w6.jpg" /><img src="img/w7.jpg" /><img src="img/w8.jpg" />
    <img src="img/s1.jpg" /><img src="img/x2.jpg" /><img src="img/x3.jpg" />
    <img src="img/x4.jpg" /><img src="img/x5.jpg" /><img src="img/x6.jpg" />
    <img src="img/x7.jpg" /><img src="img/x8.jpg" /><img src="img/x9.jpg" />
    <img src="img/xiong.jpg" /><img src="img/yaz.jpg" /><img src="img/yigt.jpg" />
    <img src="img/youzasp.jpg" /><img src="img/yuanq.jpg" /><img src="img/粥.jpg" />
        </a>
</div>
             </div> </div> 
    </div>    
</asp:Content>
