using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class shopAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnshopAdd_Click(object sender, EventArgs e)
        {   string shopAddid = txtshopAdd.Text;string shopAddname= txtshopName.Text;
            string shopAddprice = txtshopPrice.Text;string shopAddimg = txtshopIma.Text;
            string shopAddclassify = txtshopClassify.Text;DataTable table =BLL.DBmaneage.ShopAdd(shopAddname) ;
            if (table.Rows.Count >= 1)
            {Response.Write("<script>alert('商品已存在!');</script>"); return;}
            string sql = string.Format("insert into mv_GoodsInfo(MV_goodsId,MV_goodsName,MV_goodsPrice,MV_img,MV_introDtion) values ('" +txtshopAdd.Text + "','" + txtshopName.Text + "','" + txtshopPrice.Text + "','" + txtshopIma.Text + "','" + txtshopClassify.Text + "')");
            if (BLL.DBmaneage.Shopchar(sql)){Response.Write("<script>alert('添加成功');window.location='shopManager.aspx'</script>");}
            else{ Response.Write("<script>alert('添加失败');</script>");}
        }
    }
}