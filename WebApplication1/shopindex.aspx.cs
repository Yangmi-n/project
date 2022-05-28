using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace eshop
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {  if (!IsPostBack)
            { 
                if (Request.Cookies["MV_userName"] != null && Request.Cookies["MV_headimg"] != null)
                  {
                    LinkButton1.Text = Request.Cookies["MV_userName"].Value + ",欢迎您！"; 
                    Image1.Visible = true;
                    Image1.ImageUrl = Request.Cookies["MV_headimg"].Value;
                   }
                string sql = "select*from phoneType";
                Repeater1.DataSource = DBhelper.getDataTable(sql);
                Repeater1.DataBind();
                string str = "select*from phones";
                Repeater2.DataSource = DBhelper.getDataTable(str);
                Repeater2.DataBind();
                DataTable tcar = new DataTable();
                tcar = DBhelper.getDataTable("select * from shopcar");
                int sum = 0;
                for (int x = 0; x < tcar.Rows.Count; x++)
                { 
                    sum += int.Parse(tcar.Rows[x]["goodsnum"].ToString());
                }   
                Label1.Text = sum.ToString(); 
            }
        }
        protected void LinkButton_Click(object sender, EventArgs e)
        { 
            LinkButton lb = (LinkButton)sender;
            int id = int.Parse(lb.CommandName);
            string sql = "select * from phones where typeid='" + id + "'";
            Repeater2.DataSource = DBhelper.getDataTable(sql);
            Repeater2.DataBind();
        }
          protected void Button1_Click(object sender, EventArgs e)
        {  
            int x = int.Parse(Label1.Text);
             x++;
            Label1.Text = x.ToString();
            Button sd = (Button)sender;
            int i = int.Parse(sd.CommandArgument);
            string str = "select *from shopcar where goodsid='" + i + "'";
            if (DBhelper.getDataTable(str).Rows.Count > 0)
            {  
                string stw = "update shopcar set goodsnum=goodsnum+1 where goodsid='" + i + "'";
                if (DBhelper.executeNonQuery(stw))
                {
                    Response.Write("<script>alert('已经有该商品')</script>");
                }
            }
              else{ 
                string sql = "insert into shopCar(goodsid)values(" + i + ")";
                if (DBhelper.executeNonQuery(sql))
                {
                    Response.Write("<script>alert('成功加入购物车')</script>");
                }
            }
        } 
        protected void LinkButton1_Click1(object sender, EventArgs e) 
        {
            if (LinkButton1.Text == "登录▼")
            {
                Response.Redirect("denglu.aspx");
            }
        }
    }
}