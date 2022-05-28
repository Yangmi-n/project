using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class DBHelper
    {
        public static string connst = "Data Source=.;Initial Catalog = MV_ConvenienceStore; Integrated Security = True" /*"Data Source=.;Initial Catalog=MV_ConvenienceStore;Integrated Security=True"*/;
        public static SqlConnection conn = null;
        public static DataTable GetDataTable(string sql)
        {
            if (conn == null)
                conn = new SqlConnection(connst);
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            DataTable ta = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            da.Fill(ta);
            conn.Close();
            return ta;
        }
        public static bool ExecuteNonQuery(string sql)
        {
            if (conn == null)
                conn = new SqlConnection(connst);
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            SqlCommand comm = new SqlCommand(sql,conn);
            int i = comm.ExecuteNonQuery();
            conn.Close();
            return i > 0;
        }    
    
        //管理员登录
        public static bool Slogin(string sname, string spwd)
        {
            string sql = string.Format("select *  from mv_AdminLogin where MV_AdminName='{0}' and MV_AdminPwd='{1}' ", sname, spwd);
            if (DAL.DBHelper.GetDataTable(sql).Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        //用户的数据更新
        public static bool UpdatePwd(string newpwd, string name)
        {
            string sql = string.Format("update mv_UserBasicInfo set  MV_userPwd= '{0}'  where MV_userName= '{1}' ", newpwd,name );
            return DAL.DBHelper.ExecuteNonQuery(sql);
            
        }
        //商品更新
        public static bool InsertShopEditing(string shopid, string shopprice, string shopimg, string shopclassify, string shopname)
        {
            string sql = string.Format("update mv_GoodsInfo set MV_goodsId= '{0}',MV_goodsPrice='{1}',MV_img='{2}'MV_introDtion='{3}' where MV_goodsName='{4}'", shopid,shopprice,shopimg,shopclassify,shopname);
            return DAL.DBHelper.ExecuteNonQuery(sql);
        }
        //商品种类更新
        public static bool InsertclassifyEditing(string classifyid, string classifyprice, string classifyimg, string classifyclassify, string classifypname)
        {
            string sql = string.Format("update mv_GoodsInfo set MV_goodsId= '{0}',MV_goodsPrice='{1}',MV_img='{2}',MV_introDtion='{3}' where MV_goodsName='{4}'", classifyid, classifyprice, classifyimg, classifyclassify, classifypname);
            return DAL.DBHelper.ExecuteNonQuery(sql);
        }

       



        //订单更新
        public static bool InsertorderEditing(string orderid,string ordernum,string ordertel, string orderbianhao, string orderfh, string ordersh, string orderzhif, string ordertime, string orderprice, string ordercount,string ordernameid)
        {
            string sql = string.Format("update mv_Orders set MV_ordersId= '{0}',MV_ordersNum='{1}',MV_orderPhone='{2}',MV_orderYouzbian='{3}',MV_orderFaddress='{4}',MV_orderSoaddress='{5}',MV_orderPayment='{6}',MV_orderDatetime='{7}',MV_orderPrice='{8}',MV_orderCount='{9}'where MV_userId='{10}'", orderid, ordernum, ordertel, orderbianhao, orderfh, ordersh, orderzhif, ordertime, orderprice, ordercount, ordernameid);
            return DAL.DBHelper.ExecuteNonQuery(sql);
        }
      

        //普通用户登录
        public static bool Login(string name, string pwd)
        {
            string sql = string.Format("select *  from mv_UserBasicInfo where MV_userName='{0}' and MV_userPwd='{1}' ", name, pwd);
            if (DAL.DBHelper.GetDataTable(sql).Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        //用户添加
        public static bool UserMAddpwd2(string userAname, string userApwd)
        {
            string sql = "update mv_UserBasicInfo set  MV_userName= " + userAname + "where MV_userPwd =" + userApwd+ "";
            return DAL.DBHelper.ExecuteNonQuery(sql);
        }
       //商品种类添加
        public static bool ClassifyAdd2(string shopclassifyid, string shopclassifyname)
        {
            string sql = "select * from mv_GoodsInfo  MV_goodsId="+ shopclassifyid + "where MV_goodsName="+ shopclassifyname + "";
            return DAL.DBHelper.ExecuteNonQuery(sql);
        }
        //检测用户
        public static bool CheckUser(string username)
        {
            string sql = string.Format("select *  from mv_UserBasicInfo where MV_userName='{0}", username);
            if (DAL.DBHelper.GetDataTable(sql).Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool CheckLoginUser(string name)
        {
            string sql = string.Format("select *  from mv_UserBasicInfo where MV_userName='{0}", name);
            if (DAL.DBHelper.GetDataTable(sql).Rows.Count >0)
            {
                return false;

            }
            else
            {
                return true;
            }
        }

        //string sql = string.Format("select * from mv_GoodsInfo where MV_goodsName like %");
        //用户的重名查询
        public static DataTable GetUserInfoByName(string name)
        {
            string sql = "select * from mv_UserBasicInfo where MV_userName ='" + name + "'";
            return DAL.DBHelper.GetDataTable(sql);
        }
        //用户注册页面
        public static DataTable getRegisterInfoByName(string sname)
        {
            string sql = "select * from mv_UserBasicInfo where MV_userName ='" + sname + "'";
            return DAL.DBHelper.GetDataTable(sql);
        }
        //商品查询商品名是否存在
        public static DataTable GetshopName(string shopname)
        {
            string sql = "select * from mv_GoodsInfo where MV_goodsName ='" + shopname+ "'";
            return DAL.DBHelper.GetDataTable(sql);
        }
        //商品种类查询商品是否存在
        public static DataTable GetclassifyName(string classifypname)
        {
            string sql = "select * from mv_GoodsInfo where MV_goodsName ='" + classifypname + "'";
            return DAL.DBHelper.GetDataTable(sql);
        }
        //订单查询
        public static DataTable GetorderName(string ordernameid)
        {
            string sql = "select * from mv_Orders where MV_userId='" + ordernameid + "'";
            return DAL.DBHelper.GetDataTable(sql);
        }

        //搜索sql语句查询订单是否同名
        public static DataTable Orderselect(string orderAddname)
        {
            string sql = "select * from mv_Orders where MV_userId ='" + orderAddname + "'";
            return DAL.DBHelper.GetDataTable(sql);
        }
        //搜索sql语句查询用户名是否同名
        public static DataTable UserMAddpwd(string userAname)
        {
            string sql = "select * from mv_UserBasicInfo where MV_userName='" + userAname + "'";
            return DAL.DBHelper.GetDataTable(sql);
        }
        //搜索sql语句查询商品名是否同名
        public static DataTable ShopAdd(string shopAddname)
        {
            string sql = "select * from mv_GoodsInfo where  MV_goodsName ='" + shopAddname+ "'";
            return DAL.DBHelper.GetDataTable(sql);
        }
        //搜索sql语句查询商品种类名是否同名
        public static DataTable ClassifyAdd(string shopclassifyname)
        {
            string sql = "select * from mv_GoodsInfo where  MV_goodsName ='" + shopclassifyname + "'";
            return DAL.DBHelper.GetDataTable(sql);
        }
        public static DataTable GetUserID(string id)
        {
            string sql = "select * from mv_UserBasicInfo where MV_loginId ='" + id + "'";
            return DAL.DBHelper.GetDataTable(sql);
        }
        public static DataTable Getnew()
        {
            string sql = "select * from mv_GoodsInfo";
            return DAL.DBHelper.GetDataTable(sql);
        }
        //查询商品
        public static DataTable getDTbyCate(string cate)
        {
            string sql = "select * from mv_GoodsInfo where MV_goodsId='" + cate + "'";
            DataTable dt = DAL.DBHelper.GetDataTable(sql);
            return dt;
        }
        //商品分类
        public static DataTable getDTbyShop(string cate2)
        {
            string sql = "select * from mv_GoodsInfo where MV_introDtion='" + cate2 + "'";
            DataTable dt = DAL.DBHelper.GetDataTable(sql);
            return dt;
        }

        //public static bool Xiugai(string txtuser, string txtold, string txtnewpwd, string txtrealpwd) {
        //    string sql = "update mv_AdminLogin set MV_AdminName='txtuser' and MV_AdminPwd='txtnewpwd'values()";
        //}

        //下拉框搜索
        //public static DataTable getDataTable(string sql)
        //{
        //    string sql = "select * from Newstype where NewType='" + cate + "'";
        //    DataTable dt = DAL.DBHelper.GetDataTable(sql);
        //    return dt;
        //}
    }
}
