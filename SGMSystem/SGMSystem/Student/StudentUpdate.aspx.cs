using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SGMSystem.App_Code.DataSetTableAdapters;
using SGMSystem.App_Code;

namespace SGMSystem
{
    public partial class StudentUpdate : System.Web.UI.Page
    {
        /// <summary>
        /// 学生信息更新界面
        /// 游烨 2014/12/29
        /// </summary> 
        t_studentTableAdapter t_stuTA = new t_studentTableAdapter();
        StudentModel student = null;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
                if (Session["student"] != null)
                {
                    student = (StudentModel)Session["student"];
                }
            else
                {
                    Response.Redirect("../index.aspx");
                }
            }
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            student = (StudentModel)Session["student"];
            DataTable dt = t_stuTA.GetStudentById(student.id);
          
            if (txtOldPwd.Text != dt.Rows[0]["password"].ToString())
            {
                lblPrompt.Text = "原密码错误！(┬＿┬)";
            }
            else if (txtNewPwd.Text =="")
            {
                lblPrompt.Text = "新密码不能为空！凸^-^凸";
            }
            else if (txtNewPwd.Text != txtReNewPwd.Text)
            {
                lblPrompt.Text = "两次密码不一致！o(∩_∩)o ";
            }
            else
            {
               t_stuTA.UpdateStudentPwd(txtNewPwd.Text,student.id);
               
            }
        }
    }
}