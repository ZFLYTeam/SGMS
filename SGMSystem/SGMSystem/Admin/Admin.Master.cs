using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code;

namespace SGMSystem.manager
{
    public partial class manager : System.Web.UI.MasterPage
    {
        /// <summary>
        /// 管理员母版页
        /// 张嘉 2014/12/17
        /// </summary>
        AdminModel admin = null;
        protected void Page_Load(object sender, EventArgs e)
        {
           /*设置登录验证
            * if (Session["admin"] != null)
            {
                admin = (AdminModel)Session["admin"];
                lblUser.Text = admin.userName;
            }
            else
            {
                Response.Redirect("adminLogin.aspx");
            }
            */
            string date = DateTime.Now.ToString("yyyy年MM月dd日");
            string weekday = DateTime.Now.ToString("dddd");
            string time = DateTime.Now.ToString("hh:mm:ss");
            lblTime.Text = (date + " " + weekday + " " + time);
        }
    }
}