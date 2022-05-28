<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="userManager.aspx.cs" Inherits="WebApplication1.AdminUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
       <style>
        .tab1 {
            width:1325px;
            height:150px;
            margin-left:10px;
            color:black;
        }
    .auto-style1 {
        margin-top: 15px;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="right" style="text-align:center;margin-left:10px;">
        <h3 style="margin:10px 0px 10px 10px">当前页面：用户管理</h3>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" Height="193px" Width="1309px" ShowFooter="True" ShowHeaderWhenEmpty="True" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="MV_userId" DataSourceID="SqlDataSource1">
              <Columns>
                  <asp:BoundField DataField="MV_userId" HeaderText="ID" ReadOnly="True" SortExpression="MV_userId" />
                  <asp:BoundField DataField="MV_userName" HeaderText="用户名" SortExpression="MV_userName" />
                  <asp:BoundField DataField="MV_userPwd" HeaderText="密码" SortExpression="MV_userPwd" />
                  <asp:BoundField DataField="MV_userPwd2" HeaderText="确认密码" SortExpression="MV_userPwd2" />
                  <asp:BoundField DataField="MV_qution" HeaderText="密保问题" SortExpression="MV_qution" />
                  <asp:BoundField DataField="MV_answer" HeaderText="密保答案" SortExpression="MV_answer" />
                  <asp:BoundField DataField="MV_acount" HeaderText="账户余额" SortExpression="MV_acount" />
                  <asp:BoundField DataField="MV_sex" HeaderText="性别" SortExpression="MV_sex" />
                  <asp:BoundField DataField="MV_addr" HeaderText="地址" SortExpression="MV_addr" />
                  <asp:BoundField DataField="MV_pNumber" HeaderText="联系方式" SortExpression="MV_pNumber" />
                  <asp:BoundField DataField="MV_email" HeaderText="电子邮箱" SortExpression="MV_email" />
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MV_ConvenienceStoreConnectionString %>" SelectCommand="SELECT [MV_userId], [MV_userName], [MV_userPwd], [MV_qution], [MV_answer], [MV_userPwd2], [MV_acount], [MV_sex], [MV_addr], [MV_pNumber], [MV_email] FROM [mv_UserBasicInfo]"></asp:SqlDataSource>
          <asp:Button ID="Button2" runat="server" CssClass="auto-style1" Height="33px" OnClick="Button2_Click" Text="添加" Width="107px" />
          </div>
</asp:Content>
