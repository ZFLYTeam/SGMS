using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace SGMSystem
{
    /// <summary>
    /// 张嘉 2014年12月12日 管理员表Dao（Data Access Object）建立
    /// </summary>
    public class AdminDao
    {
        DbUtil dbUtil = new DbUtil();
        SqlConnection sqlCon = null;

        /// <summary>
        /// 验证管理员登录
        /// </summary>
        /// <param name="admin"></param>
        /// <returns>Admin</returns>
        public Admin login(Admin admin){
            sqlCon = dbUtil.getCon();
            Admin resultUser = null;
            string cmdText = "select * from t_admin where userName='" + admin.userName + "' and password='" + admin.password + "'";//查询用户字符串
            SqlCommand sqlCmd = new SqlCommand(cmdText, sqlCon);//查询对象
            SqlDataReader sqlDr = sqlCmd.ExecuteReader();//创建逐行数据读取器对象
            if (sqlDr.Read())
            {
                resultUser = new Admin();
                resultUser.userName = (string)sqlDr["userName"];
                resultUser.password = (string)sqlDr["password"];
                ///调用StringUtil工具类的方法判断属否头像为空
                if (StringUtil.isNotEmpty((string)sqlDr["headImage"]))
                {
                    resultUser.headImage = (string)sqlDr["headImage"];
                }
                resultUser.id = (int)sqlDr["id"];
            }
            sqlDr.Close();
            dbUtil.close(sqlCon);
            return resultUser;
        }
    }
}