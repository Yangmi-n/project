using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class shopdetailed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request["id"] != null)
                {//获得传入的手机编号
                    int id = int.Parse(Request["id"].ToString());
                    lblid.Text = id.ToString();//保留id
                    //查询相应编号的记录
                    DataTable ta = new DataTable();
                    ta = BLL.DBmaneage.GetDataTable("select * from mv_GoodsInfo where MV_goodsId='" + id + "'");
                    //将表中记录内容放入页面控件中
                    Image1.ImageUrl = ta.Rows[0]["MV_img"].ToString();
                    lblname.Text = ta.Rows[0]["MV_goodsName"].ToString();
                    lblprice.Text = "￥" + ta.Rows[0]["MV_goodsPrice"].ToString();
                    lbldetail.Text = ta.Rows[0]["MV_introDtion"].ToString();
                    lblnum.Text = ta.Rows[0]["MV_goodsNum"].ToString();
                }
            }
        }
        protected void goshoping_Click(object sender, EventArgs e)
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
                    //Response.Write("<script>alert('已经有该商品')</script>");
                }
            }
            else
            {
                //没有该手机,重新插入

                string sql = "insert into mv_Goodscar(id,goodsId,goodsNum) values ("+ i+ ","  + i + ", 1)";
                if (BLL.DBmaneage.ExecuteNonQuery(sql))
                {
                    //Response.Write("<script>alert('成功加入购物车')</script>");
                }
            }
            Page_Load(new object(), new EventArgs());
        }
    }
}