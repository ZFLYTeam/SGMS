using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;
using System.Web.Security;

namespace SGMSystem.Teacher
{
    public partial class TeachUpdate : System.Web.UI.Page
    {
        t_teacherTableAdapter t_teacherTa = new t_teacherTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            TeacherModel s = null;
            if (Session["teacher"] != null)
            {
                s = (TeacherModel)Session["teacher"];
            }
            else
            {
                Response.Redirect("../index.aspx");
            }
        }

        protected void btnTeachUpdate_Click(object sender, EventArgs e)
        {
            if (txtPassWord.Text == "")
            {
                lblError.Text = "原密码不能为空";
            }
            else if (txtNewPassWord.Text == "")
            {
                lblError.Text = "新密码不可为空";
            }
            else if (txtSurePassWord.Text == "")
            {
                lblError.Text = "确认密码不可为空";
            }
            else
            {
                TeacherModel teacher = (TeacherModel)Session["teacher"];
                int tId=teacher.id;
                t_teacherTa.UpdatePassword(FormsAuthentication.HashPasswordForStoringInConfigFile(txtNewPassWord.Text, "MD5"), tId);
                Response.Redirect("Defualt.aspx");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeachUpdate.aspx");
        }
    }
}