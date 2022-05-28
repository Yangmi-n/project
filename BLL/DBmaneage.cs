using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace BLL
{
    public class DBmaneage
    {
        public static DataTable GetDataTable(string sql)
        {
            return DAL.DBHelper.GetDataTable(sql);
        }

        public static DataTable UserShopCart(object mV_userId)
        {
            throw new NotImplementedException();
        }

        public static bool ExecuteNonQuery(string sql)
        {
            return DAL.DBHelper.ExecuteNonQuery(sql);
        }

        public static bool Banlce(int userid, string pName)
        {
            throw new NotImplementedException();
        }

        //管理员登录
        public static bool Slogin(string sname, string spwd)
        {
            return DAL.DBHelper.Slogin(sname, spwd);
        }
        //普通用户登录
        public static bool Login(string name, string pwd)
        {
            return DAL.DBHelper.Login(name, pwd);
        }
        //商品添加搜索是否数据库有无同名
        public static DataTable ShopAdd(string shopAddname)
        {
            return DAL.DBHelper.ShopAdd(shopAddname);
        }
        //商品种类添加搜索是否数据库有无同名
        public static DataTable ClassifyAdd(string shopclassifyname)
        {
            return DAL.DBHelper.ClassifyAdd(shopclassifyname);
        }
        //检查登录是否有该用户名
        public static bool CheckLoginUser(string name)
        {
            return DAL.DBHelper.CheckLoginUser(name);
        }
        //用户添加搜索是否数据库有无同名
        public static DataTable UserMAddpwd(string userAname)
        {
            return DAL.DBHelper.UserMAddpwd(userAname);
        }
        //订单添加搜索是否数据库有无同名
        public static DataTable Orderselect(string userAname)
        {
            return DAL.DBHelper.Orderselect(userAname);
        }
        //public static bool CheckUser(string username)
        //{
        //    return DAL.DBHelper.CheckUser(username);
        //}

        //图片显示
        public static DataTable Getnew()
        {
            return DAL.DBHelper.Getnew();
        }
        //用户名编辑搜索是否数据库有无同名
        public static DataTable GetUserInfoByName(string name)
        {
            return DAL.DBHelper.GetUserInfoByName(name);
        }
        //商品编辑查是否存在
        public static DataTable GetshopName(string shopname)
        {
            return DAL.DBHelper.GetshopName(shopname);
        }
        //商品种类名编辑是否存在
        public static DataTable GetclassifyName(string classifypname)
        {
            return DAL.DBHelper.GetclassifyName(classifypname);
        }
        //订单名编辑是否存在
        public static DataTable GetorderName(string ordernameid)
        {
            return DAL.DBHelper.GetorderName(ordernameid);
        }
        //用户注册页面
        public static DataTable getRegisterInfoByName(string sname)
        {
            return DAL.DBHelper.getRegisterInfoByName(sname);
        }
     
        //public static DataTable getUserID(string id)
        //{
        //    return DAL.DBHelper.getUserID(id);
        //}
 
        //用户添加
        public static bool Insert(string sql)
        {
            return DAL.DBHelper.ExecuteNonQuery(sql);
        }
        //用户注册插入数据表
        public static bool insertregister(string sql)
        {
            return DAL.DBHelper.ExecuteNonQuery(sql);
        }
        //用户更新
        public static bool UpdatePwd(string newpwd,string name)
        {
            return DAL.DBHelper.UpdatePwd(newpwd,name);
        }
        //商品更新
        public static bool InsertShopEditing(string shopid, string shopprice, string shopimg, string shopclassify, string shopname)
        {
            return DAL.DBHelper.InsertShopEditing(shopid, shopprice, shopimg, shopclassify, shopname);
        }
        //商品种类更新
        public static bool InsertclassifyEditing(string classifyid, string classifyprice, string classifyimg, string classifyclassify, string classifypname)
        {
            return DAL.DBHelper.InsertclassifyEditing(classifyid, classifyprice, classifyimg, classifyclassify, classifypname);
        }
        //订单编辑更新
        public static bool InsertorderEditing(string orderid,string ordernum,string ordertel,string orderbianhao, string orderfh,string ordersh, string orderzhif, string ordertime, string orderprice,string ordercount,string ordernameid)
        {
            return DAL.DBHelper.InsertorderEditing(orderid,ordernum, ordertel,orderbianhao, orderfh, ordersh, orderzhif, ordertime, orderprice, ordercount, ordernameid);
        }

        //商品添加
        public static bool Shopchar(string sql)
        {
            return DAL.DBHelper.ExecuteNonQuery(sql);
        }
        //商品种类添加
        public static bool Orderinsert(string sql)
        {
            return DAL.DBHelper.ExecuteNonQuery(sql);
        }
        //订单添加
        public static bool Classifyinsert(string sql)
        {
            return DAL.DBHelper.ExecuteNonQuery(sql);
        }
        //public static DataTable getDataTable(string sql)
        //{
        //    return DAL.DBHelper.getDataTable(sql);
        //}
        public static bool ExecuteQuery(string sql)
        {
            return DAL.DBHelper.ExecuteNonQuery(sql);
        }
        //查询商品
        public static DataTable getNewsBycate(string cate)
        {

            return DAL.DBHelper.getDTbyCate(cate);

        }
        //商品分类
        public static DataTable getshopclassify(string cate2)
        {

            return DAL.DBHelper.getDTbyShop(cate2);

        }

        //public static DataTable getDTbyCate(string cate)
        //{
        //    string sql = "select * from Newstype where NewType='" + cate + "'";
        //    DataTable dt = DAL.DBHelper.getDataTable(sql);
        //    return dt;
        //}
    }
}
