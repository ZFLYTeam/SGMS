using System;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace SGMSystem.Student
{
    public partial class StuCourseResult1 : System.Web.UI.Page
    {
       protected void Page_Load(object sender, EventArgs e)

        {
            view_SCTableAdapter view_SC = new view_SCTableAdapter();
            view_studentTableAdapter view_studentTa = new view_studentTableAdapter();
            StudentModel student = (StudentModel)Session["student"];
            int studentId = student.id;
            String academyName = view_studentTa.GetDataById(studentId).Rows[0]["academyName"].ToString();
            if (!IsPostBack)
            {
                DataTable dt = view_SC.GetDataByStuId(studentId);
                listStudentCourseResult.DataSource = dt;
                listStudentCourseResult.DataBind();
            }
        }
         protected void listStudentCourseResult_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                t_scTableAdapter t_scTA = new t_scTableAdapter();
                DataTable dt = t_scTA.GetData();
                string courseName = (e.CommandArgument).ToString();
                //t_scTA.DeleteSc(courseName);
                Response.Redirect("StuCourseResult.aspx");
            }
        }
        protected void btnStudentCourseChooseReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentCourseChoose.aspx");
        }
    }
}