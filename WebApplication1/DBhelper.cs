
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace eshop
{
    public class DBhelper
    {
        public static string connstr = "Data Source=.;Initial Catalog=eshop;Integrated Security=True";
        public static SqlConnection conn = null;
        public static void init()
        {
            if (conn == null)
                conn = new SqlConnection(connstr);
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            if (conn.State == ConnectionState.Broken)
            {
                conn.Close();
                conn.Open();
            }
        }

        public static DataTable getDataTable(string sql)
        {
            init();
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable ta = new DataTable();
            da.Fill(ta);
            conn.Close();
            return ta;
        }
        public static bool executeNonQuery(string sql)
        {
            init();
            SqlCommand comm = new SqlCommand(sql, conn);
            int i = comm.ExecuteNonQuery();
            conn.Close();
            return i > 0;
        }
    }
}