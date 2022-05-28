using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class shopclassifyEditing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEditing_Click(object sender, EventArgs e)
        {
            string classifyid = txtclassifyid.Text;
            string classifypname = txtclassifyname.Text;
            string classifyprice = txtclassifyprice .Text;
            string classifyimg = txtclassifyimg.Text;
            string classifyclassify = txtclassifyclssify.Text;
            DataTable table = BLL.DBmaneage.GetclassifyName(classifypname);
            if (table.Rows.Count <= 0)
            {
                Response.Write("<script>alert('种类没找到!');</script>");
                return;
            }
            if (BLL.DBmaneage.InsertclassifyEditing(classifyid, classifyprice, classifyimg, classifyclassify, classifypname))
            {
                Response.Write("<script>alert('编辑成功!');window.location='classifyManager.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('编辑失败!');</script>");
            }

        }
    }
}