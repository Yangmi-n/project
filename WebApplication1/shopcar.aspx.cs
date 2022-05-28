using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace eshop
{
    public partial class shopcar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { if (!IsPostBack) {  loadGridView(); calTotal(); } }
        private void calTotal()
        { decimal money = 0;for (int i = 0; i < GridView1.Rows.Count; i++)
            {   CheckBox c = (CheckBox)GridView1.Rows[i].FindControl("CheckBox2");
                if (c.Checked){
                    Label p = (Label)GridView1.Rows[i].FindControl("Label2"); decimal price = Convert.ToDecimal(p.Text);
                    TextBox t = (TextBox)GridView1.Rows[i].FindControl("TextBox1");int num = int.Parse(t.Text);
                    money += price * num;}}Label1.Text = money.ToString();}
        private void loadGridView()
        { GridView1.DataSource = DBhelper.getDataTable("select * from phones a,shopcar b where a.id=b.goodsid");GridView1.DataBind();}
        protected void Button1_Click(object sender, EventArgs e)
        {  Button sd = (Button)sender;int x = int.Parse(sd.CommandName);  DataTable tx = new DataTable();
            tx=DBhelper.getDataTable("select * from shopcar where goodsid='"+x+"'");int num = int.Parse(tx.Rows[0]["goodsnum"].ToString());
            if (num > 1){string sql = "update shopcar set goodsnum=goodsnum-1 where goodsid='" + x + "'";
                DBhelper.executeNonQuery(sql);loadGridView(); calTotal(); } }
        protected void Button2_Click(object sender, EventArgs e)
        { Button sd = (Button)sender;int x = int.Parse(sd.CommandName); 
            string sql = "update shopcar set goodsnum=goodsnum+1 where goodsid='" + x + "'";
            DBhelper.executeNonQuery(sql); loadGridView(); calTotal();}
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        { CheckBox ck = (CheckBox)sender;for (int i = 0; i < GridView1.Rows.Count; i++){ 
           CheckBox c = (CheckBox)GridView1.Rows[i].FindControl("CheckBox2");c.Checked = ck.Checked; }calTotal(); }
        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        { calTotal();CheckBox c = (CheckBox)sender;if (!c.Checked){
                CheckBox ck = (CheckBox)GridView1.HeaderRow.FindControl("CheckBox1");
                ck.Checked = false; }} protected void LinkButton1_Click(object sender, EventArgs e)
        { LinkButton sd = (LinkButton)sender; int x = int.Parse(sd.CommandName); 
            string sql = "delete from shopcar where goodsid='"+x+"'";
            DBhelper.executeNonQuery(sql);loadGridView();calTotal();}

        protected void Button3_Click(object sender, EventArgs e)
        {for (int i = 0; i < GridView1.Rows.Count; i++){ CheckBox c = (CheckBox)GridView1.Rows[i].FindControl("CheckBox2");
                if (c.Checked){ string name = GridView1.Rows[i].Cells[1].Text;
                    string sql = "delete from shopcar where goodsid=(select id from phones where name='"+name+"')";
                    DBhelper.executeNonQuery(sql);} }
            loadGridView();calTotal();}
        protected void Button4_Click(object sender, EventArgs e)
        {string orderid = "";string year = DateTime.Now.Year.ToString();string month;
            if(DateTime.Now.Month<10)month = "0" + DateTime.Now.Month.ToString();
            else month = DateTime.Now.Month.ToString();
            string day = DateTime.Now.Day >= 10 ? DateTime.Now.Day.ToString() : "0" + DateTime.Now.Day.ToString();
            string hour = DateTime.Now.Hour >= 10 ? DateTime.Now.Hour.ToString() : "0" + DateTime.Now.Hour.ToString(); ;
            string min = DateTime.Now.Minute > 9 ? DateTime.Now.Minute.ToString() : "0" + DateTime.Now.Minute.ToString();
            string sec = DateTime.Now.Second > 9 ? DateTime.Now.Second.ToString() : "0" + DateTime.Now.Second.ToString();
            orderid = year + month + day + hour + min + sec;
            for (int i = 0; i < GridView1.Rows.Count; i++){ CheckBox c = (CheckBox)GridView1.Rows[i].FindControl("CheckBox2");
                if (c.Checked){ string goodsname = GridView1.Rows[i].Cells[1].Text;DataTable tt = new DataTable();
                    tt = DBhelper.getDataTable("select id from phones where name='"+goodsname+"'");int goodsid = int.Parse(tt.Rows[0]["id"].ToString());
                    TextBox tx = (TextBox)GridView1.Rows[i].FindControl("TextBox1"); int num = int.Parse(tx.Text);
                    string sql = string.Format("insert into orders values('{0}','{1}','{2}')", orderid, goodsid, num);
                    DBhelper.executeNonQuery(sql); } }
            Response.Redirect("payMoney.aspx?money=" + Label1.Text + "&orderid=" + orderid);
            
            

        }
    }
}