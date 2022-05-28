using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace eshop
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
                if (Request["id"] != null)
                {   
                    int id = int.Parse(Request["id"].ToString());
              Label7.Text = id.ToString();DataTable ta = new DataTable();
             //DataTable ta = new DataTable();
                    ta =DBhelper.getDataTable("select * from phones where id='"+id+"'");
          Image1.ImageUrl = "img/" + ta.Rows[0]["imgurl"].ToString();
          Label1.Text = ta.Rows[0]["name"].ToString(); 
                    Label2.Text = "￥" + ta.Rows[0]["price"].ToString(); } } }
        protected void LinkButton1_Click(object sender, EventArgs e)
        { int i = int.Parse(Label7.Text);
            string str = "select *from shopcar where goodsid='" + i + "'";
            if (DBhelper.getDataTable(str).Rows.Count > 0)
            {string stw = "update shopcar set goodsnum=goodsnum+1 where goodsid='" + i + "'";
                if (DBhelper.executeNonQuery(stw)){Response.Write("<script>alert('已经有该商品')</script>");}}
            else{ string sql = "insert into shopCar(goodsid)values(" + i + ")";if (DBhelper.executeNonQuery(sql))
            {Response.Write("<script>alert('成功加入购物车')</script>");} }}
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}