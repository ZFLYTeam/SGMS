using System;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace SGMSystem.Teacher
{
    public partial class TeachCourseResult : System.Web.UI.Page
    {
        view_courseManageTableAdapter view_courseManageTableAdapte = new view_courseManageTableAdapter();
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
            if (!IsPostBack)
            {
                TeacherModel tm = (TeacherModel)Session["teacher"];
                int teacherId = tm.id;
                DataTable dt = view_courseManageTableAdapte.GetTeachCourseResultByTeacherId(teacherId);
                listTeacherCourseResult.DataSource = dt;
                listTeacherCourseResult.DataBind();
            }
        }


        protected void listTeacherCourseResult_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                t_courseManageTableAdapter t_courseManageTableAdapte = new t_courseManageTableAdapter();
                DataTable dt = t_courseManageTableAdapte.GetData();
                int id = Convert.ToInt32(e.CommandArgument);
                t_courseManageTableAdapte.UpdateCourseManage1(id);
                Response.Redirect("TeachCourseResult.aspx");
            }

        }

        protected void btnTeachCourseChooseReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeachCourseChoose.aspx");
        }
    }
}