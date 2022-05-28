using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace eshop
{
    public partial class ZS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)//不是回送状态
            { 
            //绑定数据源gridview
                GridView1.AutoGenerateColumns = false;//不自动生成列
                string sql = "select * from phones a,phonetype b where a.typeid=b.typeid";
                GridView1.DataSource = DBhelper.getDataTable(sql);
                GridView1.DataBind();
                //绑定dropdownlist
                //方法一：
                //string str = "select * from phonetype";
                //DropDownList1.DataSource=DBhelper.getDataTable(str);
                //DropDownList1.DataValueField="typeid";
                //DropDownList1.DataTextField="typename";
                //DropDownList1.DataBind();
                ListItem li = new ListItem();//列表选项
                li.Text = "全部";//选项文本(看得见的文本)
                li.Value = "0";//选项的值   (选中)
                DropDownList1.Items.Add(li);
                //添加表(phonetype)中所有项
                string str = "select * from phonetype";
                DataTable ta = new DataTable();
                ta = DBhelper.getDataTable(str);
                for (int i = 0; i < ta.Rows.Count; i++)
                {
                    ListItem lt = new ListItem();
                    lt.Text = ta.Rows[i]["typename"].ToString();
                    lt.Value = ta.Rows[i]["typeid"].ToString();
                    DropDownList1.Items.Add(lt);
                  
                
                }
     
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //获得传过来的值(id)
            LinkButton sd = (LinkButton)sender;
            int i = int.Parse(sd.CommandName);//commandName=<%#Eval("id")%>
            //删除记录
            string sql = "delete from phones where id='"+i+"'";
            DBhelper.executeNonQuery(sql);
            //重新绑定gridview数据源
            string str = "select * from phones a,phonetype b where a.typeid=b.typeid";
                GridView1.DataSource = DBhelper.getDataTable(str);
                GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //重新绑定数据源
            //选择项的值
            int i = int.Parse(DropDownList1.SelectedValue);//selectedValue:选中项的值
            //选择指定类型(i)的手机
            
                    if (i == 0)//全部
            {
            
            string sql = "select * from phones a,phonetype b where a.typeid=b.typeid ";
            GridView1.DataSource = DBhelper.getDataTable(sql);
            GridView1.DataBind();
         
            }
            else
            { 
            
            string sql = "select * from phones a,phonetype b where a.typeid=b.typeid and a.typeid='"+i+"'";
            GridView1.DataSource = DBhelper.getDataTable(sql);
            GridView1.DataBind();



            
            }
            }
 

        

        protected void LinkButton1_Click2(object sender, EventArgs e)
        {
         //获得传过来的值(id)
            LinkButton sd = (LinkButton)sender;
            int i = int.Parse(sd.CommandName);//commandName=<%#Eval("id")%>
            Response.Redirect("dsz.aspx?id="+i);//response.redirect()网页转向
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            //获得全选按钮 
            CheckBox ck = (CheckBox)sender;
            //改变表格每行复选框 的值与全选按钮值相同
            for (int i = 0; i < GridView1.Rows.Count; i++)
            { 
               //查找到每行的复选框  FindControl查找控件
                CheckBox c = (CheckBox)GridView1.Rows[i].FindControl("CheckBox2");
                c.Checked = ck.Checked;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //删除所选行
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                //查找到每行的复选框  FindControl查找控件
                CheckBox c = (CheckBox)GridView1.Rows[i].FindControl("CheckBox2");
                if (c.Checked)
                { 
                  //删除这一行
                //得到这一行的编号  ta.Rows[i]["id"]
                    int id = int.Parse(GridView1.Rows[i].Cells[1].Text);
                    string sql = "delete from phones where id='"+id+"'";
                    DBhelper.executeNonQuery(sql);
                
                }
            
            }
            //重新绑定GridView1
            string str = "select * from phones a,phonetype b where a.typeid=b.typeid";
            GridView1.DataSource = DBhelper.getDataTable(str);
            GridView1.DataBind();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx"); //转向WebForm1.aspx
        }
    }
}