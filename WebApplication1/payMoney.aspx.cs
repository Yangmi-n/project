using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop
{
    public partial class payMoney : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {if (!IsPostBack){ if (Request["money"] != null && Request["orderid"] != null){
                    decimal money = Convert.ToDecimal(Request["money"].ToString());
                    string orderid = Request["orderid"].ToString();
                    Label2.Text = orderid;Label1.Text = "应付总金额为：" + money.ToString();}}}
        protected void Button1_Click(object sender, EventArgs e)
        {Response.Write("<script>alert('支付成功！');window.location='home.aspx'</script>");}

        protected void Button2_Click(object sender, EventArgs e)
        {
            string orderid = Label2.Text;
            string sql = "delete from orders where orderid='"+orderid+"'";
            DBhelper.executeNonQuery(sql);
            Response.Write("<script>alert('订单已取消！')</script>");
            Response.Write("<script>window.opener=null;window.open('','_self');window.close();</script>");
        }
    }
}