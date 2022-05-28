<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="orderManager1.aspx.cs" Inherits="WebApplication1.orderManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #box1{
        width:1319px;
        margin:10px;
        }
        #search {
        text-align:center;
        margin-bottom:20px;
        }
         .tab {
             margin:0px auto;
             width:1319px;
         }
        #cover {
        width:1330px;
        height:100%;
        opacity:0.3;
        background-color:black;
        
        }
        #showData {
        width:400px;
        height:630px;
        border-radius:20px 20px 20px 20px;
        position:absolute;
        margin-left:460px;
        color:white;
        left:0px;
        top:100px;
        background-color:rgba(0,0,0,0.5);
        z-index:99999;
        }
            #showData td{
                 height:40px;
            }
    </style>
    <script src="css/vue.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="right">
         <div id="box1">
          <h3>已生成订单列表有：</h3>
          <br />
        <div id="search">
            输入订单编号：<input type="text" v-model="txt"/>&nbsp;&nbsp;
            购买人：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <input type="button"value="查询" @click="select" />
           <%-- <asp:Button ID="Button1" runat="server" Text="Button" />--%>
            <input type="button"value="新增" @click="add"/>
        </div>
        <table cellspacing="0"width="800" border="1"class="tab">
            <tr>
                <td align="center">序号</td>
                <td align="center">订单号</td>
                <td align="center">总金额</td>
                <td align="center">购买人</td>
                <td align="center">联系电话</td>
                <td align="center">邮政编码</td>
                <td align="center">发货地址</td>
                <td align="center">是否支付</td>
                <td align="center">是否发货</td>
                <td align="center">确认支付</td>
                <td align="center">添加时间</td>
                <td align="center">价格</td>
                <td align="center">操作</td>
            </tr>   
            <tr v-for="(s,n) in books">
                <td>{{s.id}}</td>
                <td>{{s.name}}</td>
                <td>{{s.author}}</td>
                <td>{{s.publisher}}</td>
                <td>{{s.pages}}</td>
                <td>{{s.year}}</td>
                <td>{{s.price}}</td>
                <td><input type="button"value="删除" @click="del(n)" />
                    <input type="button"value="编辑" @click="edit(n)"/>
                </td>
            </tr>   
        </table>
        <div id="cover" v-show="isShow">

        </div>
        <div id="showData" v-show="isShow">
            <table width="400">
                <br />
                   <tr><td align="right">序号：</td><td><input type="text" v-model="id" v-bind:readonly="isReadOnly"/></td></tr>
                   <tr><td align="right">订单号：</td><td><input type="text"v-model="name" /></td> </tr>
                   <tr><td align="right">总金额：</td><td><input type="text"v-model="author" /></td> </tr>
                   <tr><td align="right">购买人：</td><td><input type="text" v-model="publisher"/></td>   </tr>
                   <tr><td align="right">联系电话：</td><td><input type="text"v-model="author" /></td> </tr>
                   <tr><td align="right">邮政编码：</td><td><input type="text" v-model="publisher"/></td>   </tr>
                   <tr><td align="right">发货地址：</td><td><input type="text"v-model="author" /></td> </tr>
                   <tr><td align="right">是否支付：</td><td><input type="text" v-model="publisher"/></td>   </tr>
                   <tr><td align="right">是否发货：</td><td><input type="text"v-model="pages" /></td>   </tr>
                   <tr><td align="right">确认收货：</td><td><input type="text"v-model="year" /></td> </tr>
                   <tr><td align="right">添加时间：</td> <td><input type="text" v-model="price"/></td>    </tr>
                   <tr><td align="right">价格：</td> <td><input type="text" v-model="price"/></td>    </tr>
                   <tr><td align="right">操作：</td><td><input type="text"v-model="year" /></td> </tr>
                   <tr><td colspan="2"align="center">
                        <input type="button"value="提交" @click="submit"/>
                        <input type="button"value="取消" @click="cancel"/>
                    </td></tr>
              
            </table>
        </div>
    </div>
    </div>
     <script>
         var v = new Vue({
             el: "#box1",
             data: {
                 totalBooks: [],//所有记录
                 books: [{ id: "10001", name: "Vue高效前端", author: "黑马程序员", publisher: "清华大学出版社", pages: "450", year: "2019", price: "45.5", id: "10001", name: "Vue高效前端", author: "黑马程序员", publisher: "清华大学出版社", pages: "450", year: "2019" }],
                 isShow: false,//幕罩是否显示或隐藏
                 id: "",
                 name: "",
                 author: "",
                 publisher: "",
                 pages: "",
                 year: "",
                 price: "",
                 isReadOnly: false,//是否只读 s="abcdefg" s.indexOf("b")=1 s.indexOf("a")=0 s.indexOf("a")=0
                 isEdit: false,//是否编辑
                 index: 0,//要修改的记录号
                 txt: "",//要查询的内容
             },
             created: function () {
                 this.totalBooks = this.books;
             },
             methods: {
                 cancel: function () {
                     this.isShow = false;
                     this.isReadOnly = false;
                     this.isEdit = false;
                     //清空文本框
                     this.id = "";
                     this.name = "";
                     this.author = "";
                     this.publisher = "";
                     this.pages = "";
                     this.year = "";
                     this.price = "";

                 },
                 select: function () {
                     if (this.txt.trim() == "") {
                         //显示所有记录
                         this.books = this.totalBooks;
                     } else {
                         this.books = [];//清除原所有记录
                         //查询图书名称中包含有输入文字的记录
                         for (var i = 0; i < this.totalBooks.length; i++) {
                             if (this.totalBooks[i].name.indexOf(this.txt.trim()) >= 0)//包含输入文本  找得到的话
                                 this.books.push(this.totalBooks[i]);
                         }
                     }
                 },
                 del: function (i) {
                     if (confirm("真的删除吗？")) {
                         var id = this.books[i].id;//保留要删除记录的编号
                         this.books.splice(i, 1);//删除从第i条记录开始的1条记录
                         for (var k = 0; k < this.totalBooks.length; k++) {
                             if (this.totalBooks[i].id == id) {
                                 this.totalBooks.splice(k, 1);
                                 break;
                             }
                         }
                     }
                 },
                 add: function () {
                     this.isShow = true;
                 },
                 submit: function () {
                     //验证
                     if (this.id.trim() == "") {
                         alert("图书编号不能为空！");
                         return;
                     }
                     if (this.id.trim().length != 5) {
                         alert("编号格式不正确！");
                         return;
                     }
                     if (this.year.trim().length != 4) {
                         alert("年份不正确！");
                         return;
                     }
                     //获取值
                     var tp = { id: "", name: "", author: "", publisher: "", pages: "", year: "", price: "", id: "", name: "", author: "", publisher: "", pages: "", year: "" };
                     tp.id = this.id;
                     tp.name = this.name;
                     tp.author = this.author;
                     tp.publisher = this.publisher;
                     tp.pages = this.pages;
                     tp.year = this.year;
                     tp.price = this.price;
                     if (!this.isEdit) {
                         //添加
                         //this.books.push(tp)
                         this.totalBooks.push(tp);
                         this.books = this.totalBooks;
                     } else {
                         //修改
                         this.books[this.index] = tp;//修改的显示数组中的值
                         //修改所有记录数组中的值
                         for (var i = 0; i < this.totalBooks.length; i++) {
                             if (this.totalBooks[i].id = this.id)
                                 this.totalBooks[i] = tp;
                             break;
                         }
                         this.isReadOnly = false;//还原变量值
                         this.isEdit = false;//还原变量值
                     }
                     //this.books.push(tp);
                     this.isShow = false;//隐藏幕罩
                     //清空文本框
                     this.id = "";
                     this.name = "";
                     this.author = "";
                     this.publisher = "";
                     this.pages = "";
                     this.year = "";
                     this.price = "";
                 },
                 edit: function (i) {
                     this.index = i,
                         this.isEdit = true;
                     this.isReadOnly = true;
                     this.isShow = true;
                     this.id = this.books[i].id;
                     this.name = this.books[i].name;
                     this.author = this.books[i].author;
                     this.publisher = this.books[i].publisher;
                     this.pages = this.books[i].pages;
                     this.year = this.books[i].year;
                     this.price = this.books[i].price;
                 },
             }
         });
     </script>
</asp:Content>
