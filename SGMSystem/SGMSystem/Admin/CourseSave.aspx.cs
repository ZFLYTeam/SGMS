using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;

namespace SGMSystem
{
    public partial class CourseSave : System.Web.UI.Page
    {
        t_courseTableAdapter t_courseTA = new t_courseTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                int id = Convert.ToInt32(Context.Request["id"]);
                if (Context.Request["id"] != null)
                {
                    DataTable dt = t_courseTA.GetCourseById(id);
                    ddlProperty.SelectedItem.Text = dt.Rows[0]["property"].ToString();
                    txtCourseyName.Text = dt.Rows[0]["courseName"].ToString();
                    ddlAcademyName.SelectedValue= dt.Rows[0]["AcademyId"].ToString();
                }
            }
        }

        protected void bt_courseAdd_Click(object sender, EventArgs e)
        {
            if (Context.Request["id"] != null)
            {
                int id = Convert.ToInt32(Context.Request["id"]);
                t_courseTA.UpdateCourse(Convert.ToInt32(ddlAcademyName.SelectedValue), Convert.ToInt32(txtCourseyName.Text), ddlProperty.SelectedItem.Text, id);
                Response.Redirect("CourseList.aspx");
            }
            else
            {

                t_courseTA.InsertCourse(Convert.ToInt32(ddlAcademyName.SelectedValue),txtCourseyName.Text, ddlProperty.SelectedItem.Text);
                Response.Redirect("CourseList.aspx");
            }
        }

        
    }
}