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
    public partial class StuCourseChoose : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            view_techCourseTableAdapter view_techCourseTA = new view_techCourseTableAdapter();
            view_studentTableAdapter view_studentTa = new view_studentTableAdapter();
            StudentModel student = (StudentModel)Session["student"];
            int studentId = student.id;
            String academyName = view_studentTa.GetDataById(studentId).Rows[0]["academyName"].ToString();
            if (!IsPostBack)
            {
                DataTable dt = view_techCourseTA.GetDataByAcademyName(academyName);
                listStudentCourseChoose.DataSource = dt;
                listStudentCourseChoose.DataBind();
            }
        }

        protected void btnStudentCourseChooseAdd_Click(object sender, EventArgs e)
        {
            foreach (RepeaterItem i in listStudentCourseChoose.Items)
            {
                CheckBox ch = i.FindControl("CheckBoxStudentCourseManage") as CheckBox;
                if (ch.Checked)
                {
                    int cmid = Convert.ToInt32(ch.Attributes["value"]);
                    view_studentTableAdapter view_studentTa = new view_studentTableAdapter();
                    StudentModel student = (StudentModel)Session["student"];
                    int studentId = student.id;
                    t_scTableAdapter t_scTA = new t_scTableAdapter();
                    t_scTA.InsertScBySC(studentId, cmid);
                }
            }
            Response.Redirect("StuCourseResult.aspx");
        }
    }
}