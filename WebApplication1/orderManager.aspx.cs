using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class orderManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string sql = "select * from mv_Orders";
            //GridView1.DataSource = BLL.DBmaneage.GetDataTable(sql);
            //GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("orderEditing.aspx");
        }

        protected void btntianjia_Click(object sender, EventArgs e)
        {
            Response.Redirect("orderAdd.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string name = GridView1.Rows[e.RowIndex].Cells[1].Text;
            string pwd = GridView1.Rows[e.RowIndex].Cells[2].Text;
            string sql = string.Format("delete from mv_Orders where MV_userId='{0}'", name);
            BLL.DBmaneage.ExecuteNonQuery(sql);
            Response.Redirect("orderManager.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string res = "select [MV_ordersId],[MV_userId],[MV_ordersNum],[MV_orderCount],[MV_orderPhone],[MV_orderYouzbian],[MV_orderFaddress],[MV_orderSoaddress],[MV_orderPayment],[MV_orderDatetime],[MV_orderPrice] from [mv_Orders] where([MV_userId] like'%" + txtsearchorder.Text.ToString() + "%') order by [MV_userId] desc";
            SqlDataSource1.SelectCommand = res;
            GridView1.DataSourceID = "SqlDataSource1";
            GridView1.DataBind();
        }
    }
}