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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) { 
              
            }
        }

        protected void btnOk_Click1(object sender, EventArgs e)
        {if (txtusername.Text.Trim() == ""|| tbpwd.Text.Trim() == "" || tbpwd2.Text.Trim() == ""|| tbEmail.Text.Trim() == "" || 
                tbaddress.Text.Trim() == "" && qestion.Text.Trim() == "" || answer.Text.Trim() == "" || phone.Text.Trim() == "")
            { Response.Write("<script>alert('必填选项不能为空');window.location='register.aspx'</script>");}
            else{if (tbpwd.Text.Trim() != tbpwd2.Text.Trim())
                { Response.Write("<script>alert('密码不一致');window.location='register.aspx'</script>");}
                else{ string sname = txtusername.Text.Trim();
                    DataTable table = BLL.DBmaneage.getRegisterInfoByName(sname);
                    if (table.Rows.Count >= 1)
                    { Response.Write("<script>alert('用户名已存在,不可以重复注册!');</script>");
                        return; }
                    int id = 1;
                    string sql = "select top 1 * from mv_UserBasicInfo order by MV_userId desc ";
                    table = BLL.DBmaneage.GetDataTable(sql);
                    if (table.Rows.Count >= 1)
                    {id = (int)table.Rows[0].ItemArray[0] + 1; }
                    sql = string.Format("insert into mv_UserBasicInfo(MV_userId,MV_userName,MV_userPwd2,MV_userPwd,MV_qution,MV_answer,MV_sex,MV_addr,MV_pNumber,MV_email)"
                        +" values (" + id + ",'" + txtusername.Text + "','" + tbpwd.Text + "','" + tbpwd2.Text + "','" + qestion.Text + "','" + answer.Text + "'," +
                        "'" + rdoList.SelectedValue + "','" + tbaddress.Text + "','" + phone.Text + "','" + tbEmail.Text + "')");
                    if (BLL.DBmaneage.insertregister(sql))
                    { Response.Write("<script>alert('注册成功请登录');window.location='denglu.aspx'</script>"); }
                    else{ Response.Write("<script>alert('注册失败');</script>");}
                }
              }
        }
    }

}