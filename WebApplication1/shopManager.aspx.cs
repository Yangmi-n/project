using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class shopmanage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string sql = "select * from mv_GoodsInfo";
            //GridView1.DataSource = BLL.DBmaneage.GetDataTable(sql);
            //GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("shopEditing.aspx");
        }

        protected void btntianjia_Click(object sender, EventArgs e)
        {
            Response.Redirect("shopAdd.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {   string name = GridView1.Rows[e.RowIndex].Cells[1].Text;
            string pwd = GridView1.Rows[e.RowIndex].Cells[2].Text;
            string sql = string.Format("delete from mv_GoodsInfo where MV_goodsName='{0}'", name);
            BLL.DBmaneage.ExecuteNonQuery(sql); Response.Redirect("shopManager.aspx");}
        protected void Button1_Click(object sender, EventArgs e)
        {  string res = "select [MV_goodsName],[MV_introDtion],[MV_goodsPrice],[MV_goodsId],[MV_img] from [mv_GoodsInfo] where([MV_goodsName] like'%" + txtsearch.Text.ToString() + "%') order by [MV_goodsName] desc";
            SqlDataSource1.SelectCommand = res;GridView1.DataSourceID ="SqlDataSource1";GridView1.DataBind();
        }
    }
}