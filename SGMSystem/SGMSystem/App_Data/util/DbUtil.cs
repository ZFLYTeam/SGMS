using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace SGMSystem
{
    public class DbUtil
    {
        //打开数据库连接,返回一个SqlConnection对象
        public SqlConnection getCon()
        {
            string conStr = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
            SqlConnection sqlCon = new SqlConnection(conStr);
            sqlCon.Open();
            return sqlCon;
        }
        //关闭数据库连接，要传入需要关闭的sqlCon对象
        public void close(SqlConnection sqlCon)
        {
            if (sqlCon != null)
            {
                sqlCon.Close();
            }
        }
    }
}