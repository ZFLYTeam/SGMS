using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code;

namespace SGMSystem
{
    public partial class Stu : System.Web.UI.MasterPage
    {
        /// <summary>
        /// 学生母版页
        /// 张嘉 2014/12/17
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            StudentModel student = null;
            //判断是否登录
            if (Session["student"] != null)
            {
                student = (StudentModel)Session["student"];
                lblUser.Text = student.name;
            }
            else
            {
                Response.Redirect("../index.aspx");
            }
            string date = DateTime.Now.ToString("yyyy年MM月dd日");
            string weekday = DateTime.Now.ToString("dddd");
            string time = DateTime.Now.ToString("hh:mm:ss");
            lblTime.Text = (date + " " + weekday + " " + time);
        }
    }
}