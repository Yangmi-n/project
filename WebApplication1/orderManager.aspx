<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="orderManager.aspx.cs" Inherits="WebApplication1.orderManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="right"style="text-align:center;margin-left:10px;">
        <h3 style="margin:10px 0px 0px 10px">当前页面：订单管理</h3>
          <p style="text-align:right;margin-bottom:10px;">
           关键字：<asp:DropDownList ID="DropDownList1" runat="server">
                   <asp:ListItem>按订单号</asp:ListItem>
               </asp:DropDownList><asp:TextBox ID="txtsearchorder" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="查找" OnClick="Button1_Click" />
           </p>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1313px" Height="407px" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MV_ordersId" HeaderText="序号" SortExpression="MV_ordersId" />
                <asp:BoundField DataField="MV_userId" HeaderText="订单号" SortExpression="MV_userId" />
                <asp:BoundField DataField="MV_ordersNum" HeaderText="订单数量" SortExpression="MV_ordersNum" />
               <asp:BoundField DataField="MV_orderCount" HeaderText="总金额" SortExpression="MV_orderCount" />
                <asp:BoundField DataField="MV_orderPhone" HeaderText="联系电话" SortExpression="MV_orderPhone" />
                <asp:BoundField DataField="MV_orderYouzbian" HeaderText="邮政编号" SortExpression="MV_orderYouzbian" />
                <asp:BoundField DataField="MV_orderFaddress" HeaderText="发货地址" SortExpression="MV_orderFaddress" />
                <asp:BoundField DataField="MV_orderSoaddress" HeaderText="收货地址" SortExpression="MV_orderSoaddress" />
                <asp:BoundField DataField="MV_orderPayment" HeaderText="是否支付" SortExpression="MV_orderPayment" />
                <asp:BoundField DataField="MV_orderDatetime" HeaderText="添加时间" SortExpression="MV_orderDatetime" />
                <asp:BoundField DataField="MV_orderPrice" HeaderText="单价" SortExpression="MV_orderPrice" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" OnClientClick="return confirm('确认删除吗？')"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MV_ConvenienceStoreConnectionString %>" SelectCommand="SELECT [MV_ordersId], [MV_userId], [MV_ordersNum], [MV_orderCount], [MV_orderPhone], [MV_orderYouzbian], [MV_orderFaddress], [MV_orderSoaddress], [MV_orderPayment], [MV_orderDatetime], [MV_orderPrice] FROM [mv_Orders]"></asp:SqlDataSource>
         <asp:Button ID="btntianjia" runat="server" CssClass="auto-style1" Height="33px" Text="添加" Width="107px" OnClick="btntianjia_Click" style="margin-left: 0px; margin-right: 0px; margin-top: 35px" />
    </div>
</asp:Content>
