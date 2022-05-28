using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AdminUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string sql = "select * from mv_UserBasicInfo";
            //GridView1.DataSource = BLL.DBmaneage.GetDataTable(sql);
            //GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {  
            Response.Redirect("userEditing.aspx");
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userAdd.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string name = GridView1.Rows[e.RowIndex].Cells[1].Text;
            string pwd = GridView1.Rows[e.RowIndex].Cells[2].Text;
            string sql = string.Format("delete from mv_UserBasicInfo where MV_userName='{0}'", name);
            BLL.DBmaneage.ExecuteNonQuery(sql);
            Response.Redirect("userManager.aspx");
        }
        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        //}
    }
}