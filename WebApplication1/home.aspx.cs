using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class home1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)    //不是回送状态，是第一次加载时
            {
                //判断是否显示头像及用户名
                if (Request.Cookies["MV_userName"] != null && Request.Cookies["MV_headimg"] != null)
                {
                    LinkButton1.Text = Request.Cookies["MV_userName"].Value + ",欢迎您！";
                    Image1.Visible = true;
                    Image1.ImageUrl = Request.Cookies["MV_headimg"].Value;
                }
                string sql = "select * from mv_GoodsInfo";
                Repeater1.DataSource = BLL.DBmaneage.GetDataTable(sql);
                Repeater1.DataBind();
                string sql2 = "select * from mv_GoodsIntro";
                Repeater2.DataSource = BLL.DBmaneage.GetDataTable(sql2);
                Repeater2.DataBind();
            }
        }
        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            string cate = serch.Text.ToString();
            this.Repeater1.DataSource = BLL.DBmaneage.getNewsBycate(cate);
            this.Repeater1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
            if (LinkButton1.Text == "登录▼")
            {
                Response.Redirect("denglu.aspx");
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int i = int.Parse(lbl.Text);
            //判断购物车中是否有该手机
            string str = "select * from mv_Goodscar where Id='" + i + "'";
            if (BLL.DBmaneage.GetDataTable(str).Rows.Count > 0)
            {
                //已经有该手机
                string stw = "update mv_Goodscar set goodsNum=goodsNum+1 where Id='" + i + "'";
                if (BLL.DBmaneage.ExecuteNonQuery(stw))
                {
                    Response.Write("<script>alert('已经有该商品')</script>");
                }
            }
            else
            {
                //没有该手机,重新插入

                string sql = "insert into mv_Goodscar(Id)values(" + i + ")";
                if (BLL.DBmaneage.ExecuteNonQuery(sql))
                {
                    Response.Write("<script>alert('成功加入购物车')</script>");
                }
            }
        }
    }
}