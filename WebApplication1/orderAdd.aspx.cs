using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class orderAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOrderAdd_Click(object sender, EventArgs e)
        {
            string orderAddid =orderid.Text;
            string orderAddname = orderuser.Text;
            string orderAddnum = ordernum.Text;
            string orderAddtel = ordertel.Text;
            string orderAddbianhao = orderbianhao.Text;
            string orderAddfaddr = orderfaddr.Text;
            string orderAddsaddr = ordersaddr.Text;
            string orderAddzhifu = orderzhif.Text;
            string orderAddtime = ordertime.Text;
            string orderAddprice = orderprice.Text;
            DataTable table = BLL.DBmaneage.Orderselect(orderAddname);
            if (table.Rows.Count >= 1)
            {
                Response.Write("<script>alert('商品已存在!');</script>");
                return;
            }
            string sql = string.Format("insert into mv_Orders(MV_ordersId,MV_userId,MV_ordersNum,MV_orderPhone,MV_orderYouzbian,MV_orderFaddress,MV_orderSoaddress,MV_orderPayment,MV_orderDatetime,MV_orderPrice,MV_orderCount) values ('" + orderid.Text + "','" + orderuser.Text + "','" + ordernum.Text + "','" + ordertel.Text + "','" + orderbianhao.Text + "','" + orderfaddr.Text + "','" + ordersaddr.Text + "','" + orderzhif.Text + "','" + ordertime.Text + "','" + orderprice.Text + "','" + ordercount.Text + "')");
            if (BLL.DBmaneage.Orderinsert(sql))
            {
                Response.Write("<script>alert('添加成功');window.location='orderManager.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('添加失败');</script>");
            }
        }
    }
}