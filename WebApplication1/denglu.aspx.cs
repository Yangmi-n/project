using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication1
{
    public partial class denglu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if (ddl.Text == "管理员"){
                //获得输入的用户名和密码
                string sname = TextBox1.Text.Trim();
                string spwd = TextBox2.Text.Trim();
                //判断用户类型
                if (sname != null && spwd != null){
                    bool flag = BLL.DBmaneage.Slogin(sname, spwd);
                    if (flag){
                        Response.Write("<script>alert('登录成功！');location.href='Admin.aspx';</script>");
                    }
                    else{
                        Response.Write("<script>alert('用户名或密码或类型错误！')</script>"); }
                }
            }
            else{
                string name = TextBox1.Text.Trim();
                string pwd = TextBox2.Text.Trim();
                //查询指定记录
                string sql = "select * from mv_UserBasicInfo where MV_userName='" + name + "' and MV_userPwd='" + pwd + "'";
                _ = new DataTable();
                DataTable ta = BLL.DBmaneage.GetDataTable(sql);
                if (ta.Rows.Count > 0) //如果数量大于0，表示有该用户，登录成功
                {   //定义Cookie保存值
                    HttpCookie co = new HttpCookie("MV_userName", name);//（名称，值）  保存用户名
                    HttpCookie cx = new HttpCookie("MV_headimg", ta.Rows[0]["MV_headimg"].ToString());//保存头像
                    co.Expires = DateTime.Now.AddHours(24);   //24小时后失效
                    cx.Expires = DateTime.Now.AddDays(1);    // 1天后失效
                     //添加到Cookies集合中                              
                    Response.Cookies.Add(co);
                    Response.Cookies.Add(cx);
                    Response.Write("<script>alert('登录成功！');location.href='index.aspx';</script>");
                }
                else{ 
                    Response.Write("<script>alert('用户名或密码或类型错误！')</script>");
                } 
            }  
        } 
        protected void btn2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx"); 
        }
        protected void cZhi_Click(object sender, EventArgs e)
        {
          TextBox1.Text = "";
          TextBox2.Text = "";
        }
    }
}