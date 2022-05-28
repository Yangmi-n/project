<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="classifyManager.aspx.cs" Inherits="WebApplication1.classifyManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="right"style="text-align:center;margin-left:10px;">
        <h3 style="margin:10px 0px 0px 10px">当前页面：种类分类</h3>
          <p style="text-align:right;margin-bottom:10px;">
           关键字：<asp:DropDownList ID="DropDownList1" runat="server">
                   <asp:ListItem>按分类名</asp:ListItem>
               </asp:DropDownList><asp:TextBox ID="txtsearchclassify" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="查找" OnClick="Button1_Click" />
           </p>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1313px" Height="589px" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MV_goodsId" HeaderText="商品ID" SortExpression="MV_goodsId" />
                <asp:BoundField DataField="MV_goodsName" HeaderText="商品名" SortExpression="MV_goodsName" />
                <asp:BoundField DataField="MV_goodsPrice" HeaderText="商品价格" SortExpression="MV_goodsPrice" />
               <asp:BoundField DataField="MV_introDtion" HeaderText="商品分类" SortExpression="MV_introDtion" />
                <asp:BoundField DataField="MV_img" HeaderText="商品图" SortExpression="MV_img" />
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
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MV_ConvenienceStoreConnectionString %>" SelectCommand="SELECT [MV_goodsId], [MV_goodsName], [MV_goodsPrice], [MV_introDtion], [MV_img] FROM [mv_GoodsInfo]"></asp:SqlDataSource>
         <br />
         <asp:Button ID="btntianjia" runat="server" CssClass="auto-style1" Height="33px" Text="添加" Width="103px" OnClick="btntianjia_Click" />
    </div>
</asp:Content>
