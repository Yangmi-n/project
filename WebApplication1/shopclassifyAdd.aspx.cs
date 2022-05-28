using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class shopclassifyAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEditing_Click(object sender, EventArgs e)
        {
            string shopclassifyid = txtshopClassifyid.Text;
            string shopclassifyname = txtshopClassifyname.Text;
            string shopclassifypeice = txtshopClassifyprice.Text;
            string shopclassifyimg = txtshopClassifyimg.Text;
            string shopclassifyclassify =txtshopClassifyclassify.Text;
            DataTable table = BLL.DBmaneage.ClassifyAdd(shopclassifyname);
            if (table.Rows.Count >= 1)
            {
                Response.Write("<script>alert('种类已存在!');</script>");
                return;
            }
            string sql = string.Format("insert into mv_GoodsInfo(MV_goodsId, MV_goodsName, MV_goodsPrice, MV_img, MV_introDtion) values ('" +txtshopClassifyid.Text + "', '" + txtshopClassifyname.Text + "', '" + txtshopClassifyprice.Text + "', '" + txtshopClassifyimg.Text + "', '" +txtshopClassifyclassify.Text + "')");
            if (BLL.DBmaneage.Classifyinsert(sql))
            {
                Response.Write("<script>alert('添加成功');window.location='classifyManager.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('添加失败');</script>");
            }
        }
    }
}