using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code;

namespace SGMSystem
{
    /// <summary>
    /// 老师模板页 
    /// 张嘉 2014/12/17
    /// </summary>
    public partial class Tech : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TeacherModel teacher = null;
            /*判断是否登录
            if (Session["teacher"] != null)
            {
                teacher = (TeacherModel)Session["teacher"];
                lblUser.Text = teacher.TeacherName;
            }
            else
            {
                Response.Redirect("../index.aspx");
            }
             */
            string date = DateTime.Now.ToString("yyyy年MM月dd日");
            string weekday = DateTime.Now.ToString("dddd");
            string time = DateTime.Now.ToString("hh:mm:ss");
            lblTime.Text = (date + " " + weekday + " " + time);
        }
    }
}