using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class orderEditing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOrderEditing_Click1(object sender, EventArgs e)
        {
            string orderid = txtorderid.Text;
            string ordernameid = txtordername.Text;
            string ordernum = txtordernum.Text;
            string ordertel = txtordertel.Text;
            string orderbianhao = txtorderyoubian.Text;
            string orderfh = txtorderfh.Text;
            string ordersh = txtordersh.Text;
            string orderzhif = txtorderzhif.Text;
            string ordertime = txtordertime.Text;
            string orderprice = txtorderprice.Text;
            string ordercount = txtordercount.Text;
            DataTable table = BLL.DBmaneage.GetorderName(ordernameid);
            if (table.Rows.Count <= 0)
            {
                Response.Write("<script>alert('种类没找到!');</script>");
                return;
            }
            if (BLL.DBmaneage.InsertorderEditing(orderid,ordernum, ordertel, orderbianhao, orderfh, ordersh, orderzhif, ordertime, orderprice, ordercount,ordernameid))
            {
                Response.Write("<script>alert('编辑成功!');window.location='orderManager.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('编辑失败!');</script>");
            }
        }
    }
}