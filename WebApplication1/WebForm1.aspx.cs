using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {if (!IsPostBack){ DropDownList1.DataSource = DBhelper.getDataTable("select * from phonetype");
                DropDownList1.DataValueField = "typeid";DropDownList1.DataTextField = "typename";
                DropDownList1.DataBind();} }
        protected void Button1_Click(object sender, EventArgs e)
        {   string name = FileUpload1.FileName;if (name != "")
            {FileUpload1.SaveAs(Server.MapPath(".") + "\\img\\" + name);Image1.ImageUrl = "img/" + name;}}
        protected void Button2_Click1(object sender, EventArgs e)
        { string name = TextBox2.Text;int typeid = int.Parse(DropDownList1.SelectedValue);
            decimal price = Convert.ToDecimal(TextBox3.Text);
            bool yn = CheckBox1.Checked;string imgurl = Image1.ImageUrl.Substring(3);
            string sql = string.Format("insert into phones values('{0}','{1}','{2}','{3}','{4}','{5}')", name, typeid, price, 0, yn, imgurl);
            DBhelper.executeNonQuery(sql);
            Response.Redirect("ZS.aspx");}
    }
}