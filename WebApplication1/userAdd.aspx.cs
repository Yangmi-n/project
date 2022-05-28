using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class userMtianjia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntianjia_Click(object sender, EventArgs e)
        {
            string id = userAddid.Text; string userAname = userAdd.Text;
            string userApwd = userAddpwd.Text; string userApwd2 = txtpwd2.Text;
            string userquestion = txtquestion.Text; string useranswer = txtansew.Text;
            string usercount = txtcount.Text; string usersex = txtsex.Text;
            string useraddr = txtaddr.Text;string usertel = txttel.Text;
            string useremail = txtemail.Text;DataTable table = BLL.DBmaneage.UserMAddpwd(userAname);
            if (table.Rows.Count >= 1) {Response.Write("<script>alert('用户名已存在!');</script>");return;}
            string sql = string.Format("insert into mv_UserBasicInfo(MV_userId,MV_userName,MV_userPwd,MV_userPwd2,MV_qution,MV_answer,MV_acount,MV_sex,MV_addr,MV_pNumber,MV_email) values ('" + userAddid.Text + "','" + userAdd.Text + "','" + userAddpwd.Text + "','" + txtpwd2.Text + "','" + txtquestion.Text + "','" + txtansew.Text + "','" + txtcount.Text + "','" + txtsex.Text + "','" + txtaddr.Text + "','" + txttel.Text + "','" + txtemail.Text + "')");
            if (BLL.DBmaneage.Insert(sql))
            { Response.Write("<script>alert('添加成功');window.location='userManager.aspx'</script>");}
            else
            {Response.Write("<script>alert('添加失败');</script>"); }
        }
    }
}