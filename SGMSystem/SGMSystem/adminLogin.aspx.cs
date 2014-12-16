using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Data.DataSetTableAdapters;
using System.Data;

namespace SGMSystem
{
    public partial class adminLogin : System.Web.UI.Page
    {
        /// <summary>
        /// 使用数据库连接层代码，先声明数据库连接层类
        /// </summary>
        t_adminTableAdapter t_adminTA = new t_adminTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                Session.Abandon();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //把登录数据集返回的table放进DataTable dt
            DataTable dt = t_adminTA.GetAdminByLogin(txtUserName.Text, txtPassword.Text);
            ///把返回的属性赋值给admin
            Admin admin = new Admin();
            admin.id = (Int32)dt.Rows[0]["id"];
            admin.userName = dt.Rows[0]["userName"].ToString();
            admin.password = dt.Rows[0]["password"].ToString();
            if (admin != null)
            {
                Session["admin"] = admin;
                Response.Redirect("Defualt.aspx");
            }
            else
            {
                lblError.Text = "用户名或密码错误";
            }
        }
    }
}