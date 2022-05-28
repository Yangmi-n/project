using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class shopEditing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnshopEditing_Click(object sender, EventArgs e)
        {   string shopid = txtshopid.Text;string shopname= txtshopname.Text;
            string shopprice = txtshopprice.Text;string shopimg= txtshopimg.Text;
            string shopclassify = txtshopclassify.Text;DataTable table = BLL.DBmaneage.GetshopName(shopname);
            if (table.Rows.Count <= 0){Response.Write("<script>alert('商品没找到!');</script>");return;}
            if (BLL.DBmaneage.InsertShopEditing(shopid, shopprice, shopimg, shopclassify, shopname))
            {Response.Write("<script>alert('编辑成功!');window.location='shopManager.aspx'</script>");}
            else{Response.Write("<script>alert('编辑失败!');</script>");}
        }
    }
}