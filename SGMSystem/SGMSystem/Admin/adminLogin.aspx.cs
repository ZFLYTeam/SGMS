using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;

namespace SGMSystem
{
    /// <summary>
    /// 管理员登录页面
    /// 张嘉 2014/12/17
    /// </summary>
    public partial class adminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ///如果管理员在session中则删除
            if (Session["admin"] != null)
            {
                Session.Abandon();
            }
        }

        /// <summary>
        /// 点击登录按钮验证成功跳转
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //使用TableAdapter，先声明
            t_adminTableAdapter t_adminTA = new t_adminTableAdapter();
            //把登录数据集返回的table放进DataTable dt
            DataTable dt = t_adminTA.GetAdminByLogin(txtUserName.Text, txtPassword.Text);
            ///把返回的属性赋值给admin
            AdminModel admin = new AdminModel();
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