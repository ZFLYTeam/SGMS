using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGMSystem
{
    public partial class adminLogin : System.Web.UI.Page
    {
        /// <summary>
        /// 使用数据库连接层代码，先声明数据库连接层类
        /// </summary>
        AdminDao adminDao = new AdminDao();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                Session.Abandon();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            ///使用admin对象之前先new一个 然后给需要的属性赋值
            Admin admin = new Admin();
            admin.userName = txtUserName.Text;
            admin.password = txtPassword.Text;

            ///通过adminDao对象调用其login方法，需要传入参数admin。
            ///参数可以是对象也可以是任何变量
            admin=adminDao.login(admin);//调用赋值完之后的admin对象,返回的对象再赋给admin，节约开销
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