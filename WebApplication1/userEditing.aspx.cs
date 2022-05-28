using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class userMxiugai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = txtuser.Text;
            string oldpwd = txtoldpwd.Text;
            string newpwd =txtnewpwd.Text;
            string realpwd = txtrealpwd.Text;
            if (!newpwd.Equals(realpwd))
            {Response.Write("<script>alert('两次密码不一致，请修改!');</script>"); return; }
            DataTable table = BLL.DBmaneage.GetUserInfoByName(name);
            if (table.Rows.Count <= 0)
            {Response.Write("<script>alert('用户没找到!');</script>");return;}
            Object[] row = table.Rows[0].ItemArray;
            if (!row[2].Equals(oldpwd))
            { Response.Write("<script>alert('原密码不正确!');</script>");return;}
            if (BLL.DBmaneage.UpdatePwd(name, newpwd))
            {Response.Write("<script>alert('修改成功!');window.location='userManager.aspx'</script>");} 
            else{Response.Write("<script>alert('修改失败!');</script>"); }
        }
    }
}