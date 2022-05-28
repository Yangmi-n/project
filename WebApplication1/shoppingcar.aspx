<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="shoppingcar.aspx.cs" Inherits="WebApplication1.shoppingcar1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="css/vue.js"></script>
    <script src="JS/jquery.min.js"></script>
    <style type="text/css">
        #container {
            width: 1325px;
            position: absolute;
            background-color: rgba(0,0,0,0.02);
            left: 185px;
            top: 100px;
            overflow: hidden;
        }

        .bg {
            background-image: url(images/list_bg.gif);
            background-repeat: no-repeat;
            width: 1325px;
        }

        .tophei {
            font-weight: bold;
            height: 60px;
            height: 60px;
        }

        td {
            text-align: center;
        }

        .shopimg {
            width: 200px;
            height: 160px;
            margin: 10px 0px;
        }


        .iconimg {
            width: 35px;
            height: 35px;
        }

        .txtweight {
            width: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="right-middle">
        <div id="container">
              <table border="0" cellspacing="0" cellpadding="0" class="bg">
    <tr >
      <td class="tophei"style="text-align:right">
	    <input id="all" type="checkbox" value="全选" onclick="check();" />全选
	  </td >
      <td class="tophei">商品图片</td>
      <td class="tophei">商品名称/介绍</td>
      <td class="tophei">单价</td>
        <td class="tophei">数量</td>
    </tr>
    <tr>
	  <td colspan="6"><hr style="border:1px  #CCCCCC dashed" /></td>
    </tr>
    <tr>
      <td style="text-align:right"><input name="product" type="checkbox" value="1" /></td>
      <td><img src="img/caom.jpg" alt="alt" class="shopimg"/></td>
      <td>
	    美味零食，便宜好吃，快来进行抢购<br/>
        出售者：ling112233<br/>
        <img src="img/点赞.png" alt="alt" class="iconimg"/> &nbsp;&nbsp;
	    <img src="img/铃声,铃铛.png" alt="alt" class="iconimg" />
	  </td>
       <td>单价<input type="text"  v-model="price" />{{str}}</td>
      <td>数量:<input type="button" value="+"  @click="add"/><input type="text" v-model="num" class="txtweight"/><input type="button" value="-" @click="sub" />{{msg}}</td>
    </tr>
    <tr>
	  <td colspan="6"><hr style="border:1px  #CCCCCC dashed" /></td>
    </tr>
      <tr>
          <td style="text-align:right;font-size:19px;font-weight:bold;line-height:80px;" colspan="6">总金额:{{money|fmoney}}</td>
      </tr>
                   <tr>
          <td style="text-align:right;font-size:19px;font-weight:bold;line-height:80px;" colspan="6">
              <asp:Button ID="Button1" runat="server" Text="下单" CssClass="border" ForeColor="White" Height="35px" Width="80px" OnClick="Button1_Click" /></td>
      </tr>
  </table>
            </div>
    </div>
     <script type="text/JavaScript">
         function check() {
             var oInput = document.getElementsByName("product");
             for (var i = 0; i < oInput.length; i++) {
                 if (document.getElementById("all").checked == true) {
                     oInput[i].checked = true;
                 } else {
                     oInput[i].checked = false;
                 }
             }
         }
         var vn = new Vue({
             el: "#container",
             data: {
                 price: 0,
                 num: 1,
                 msg: "",
                 str: ""
             },
             methods: {
                 add: function () {
                     this.num++;
                 },
                 sub: function () {
                     if (this.num > 1)
                         this.num--;
                 }
             },
             computed: {
                 money: function () {
                     return this.num * this.price;
                 }
             },
             watch: {
                 num: function (newNum, oldNum) {
                     //console.log(newNum, oldNum);
                     if (newNum > 100) {
                         this.msg = "最大为100，不能超过！";
                         this.num = 100;
                     }
                     else
                         if (newNum < 100)
                             this.msg = "";
                 },
                 price: function (newPrice, oldPrice) {
                     if (newPrice < 0) {
                         this.str = "不能为负数!";
                         this.price = 0;
                     }
                     else {
                         if (oldPrice == 0)
                             this.str = "";
                     }

                 }
             },
             filters: {
                 fmoney: function (m) {


                     return "￥" + m;
                 }
             }
         });
     </script>
</asp:Content>
