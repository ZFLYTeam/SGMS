using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;

namespace SGMSystem.Teacher
{
    public partial class StudentGradeManage : System.Web.UI.Page
    {
        t_scTableAdapter t_scTa = new t_scTableAdapter();
        view_SCTableAdapter view_scTa = new view_SCTableAdapter();
        view_courseManageTableAdapter view_cm = new view_courseManageTableAdapter();
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
                s = (TeacherModel)Session["teacher"];
                DataTable dt1 = view_cm.GetDataByTeacherId(s.id);
                rptCourse.DataSource = dt1;
                rptCourse.DataBind();

                int courseId = Convert.ToInt32(Context.Request["courseId"]);
                int termId = Convert.ToInt32(Context.Request["termId"]);
                DataTable dt = view_scTa.GetDataByCourseIdAndTermId(termId,courseId);
                listStudentGrade.DataSource = dt;
                listStudentGrade.DataBind();
            }
        }

        protected void listStudentGrade_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "modify")
            {
                Response.Redirect("StudentGradeUpdate.aspx?id=" + id);
            }
           
        }

        protected void listStudentGrade_ItemCreated(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.DataItem != null)
            {
                if (((DataRowView)e.Item.DataItem).Row["couldModify"].ToString() == "0")
                {
                    e.Item.FindControl("btnStudentGradeModify").Visible = false;
                }
                else
                {
                    e.Item.FindControl("btnStudentGradeModify").Visible = true;
                }
            }
        }
    }
}