using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XiaoMu.Hands
{
    /// <summary>
    /// ShopCartHandler 的摘要说明
    /// </summary>
    public class WebApplication1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string pName = context.Request.QueryString["pName"];
            string price = context.Request.QueryString["price"];
            int userid = 1;          // 
            if (BLL.DBmaneage.Banlce(userid, pName))
            {
                //dynamic dynamic = new { status="200",message="结算成功"};
                context.Response.Write("200");
                return;
            }
            context.Response.Write("400");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}