using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "select * from mv_GoodsIntro";
                Repeater2.DataSource = BLL.DBmaneage.GetDataTable(sql);
                Repeater2.DataBind();
                DataTable tcar = new DataTable();
                tcar = BLL.DBmaneage.GetDataTable("select * from mv_Goodscar");
                int sum = tcar.Rows.Count;
                for (int x = 0; x < tcar.Rows.Count; x++) //累加每条记录的数量
                {
                    try
                    {
                        sum += int.Parse(tcar.Rows[x]["goodsNum"].ToString());
                    }
                    catch (Exception eex)
                    {
                        Console.WriteLine(eex.ToString());
                    }
                }
                lblid.Text = sum.ToString();

            }

        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
                int i = int.Parse(lblid.Text);
                //判断购物车中是否有该手机
                string str = "select * from mv_Goodscar where goodsId='" + i + "'";
                if (BLL.DBmaneage.GetDataTable(str).Rows.Count > 0)
                {
                //已经有该手机
                string stw = "update mv_Goodscar set goodsNum=goodsNum+1 where goodsId='" + i + "'";
                if (BLL.DBmaneage.ExecuteNonQuery(stw))
                    {
                        Response.Write("<script>alert('已经有该商品')</script>");
                    }
                }
                else
                {
                //没有该手机,重新插入

                string sql = "insert into mv_Goodscar(id,goodsId,goodsNum) values (" + i + "," + i + ", 1)";
                if (BLL.DBmaneage.ExecuteNonQuery(sql))
                    {
                        Response.Write("<script>alert('成功加入购物车')</script>");
                    }
                }
        }
    }
}