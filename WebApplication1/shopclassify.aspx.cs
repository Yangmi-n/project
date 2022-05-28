using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class shopclassify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select * from mv_GoodsInfo";
            Repeater1.DataSource = BLL.DBmaneage.GetDataTable(sql);
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cate2 = TextBox1.Text.ToString();
            this.Repeater1.DataSource = BLL.DBmaneage.getshopclassify(cate2);
            this.Repeater1.DataBind();
        }
    }
}