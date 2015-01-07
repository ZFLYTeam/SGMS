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
    public partial class TeachCourseChoose : System.Web.UI.Page
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
                DataTable dt = view_courseManageTableAdapte.GetViewCourseManageByTeacherIdIsNull();
                listTeacherCourseChoose.DataSource = dt;
                listTeacherCourseChoose.DataBind();
            }
        }

        protected void btnTeachCourseChooseAdd_Click(object sender, EventArgs e)
        {
            foreach (RepeaterItem i in listTeacherCourseChoose.Items)
            {
                CheckBox ch = i.FindControl("CheckBoxTeachCourseManage") as CheckBox;
                if (ch.Checked)
                {
                    int id = Convert.ToInt32(ch.Attributes["value"]);
                    TeacherModel tm = (TeacherModel)Session["teacher"];
                    int teacherId = tm.id;
                    t_courseManageTableAdapter t_c = new t_courseManageTableAdapter();
                    t_c.UpdateTCourseManageByTeacherChoose(teacherId, id);
                }
            }
            Response.Redirect("TeachCourseResult.aspx");
        }
    }
}