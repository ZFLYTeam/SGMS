using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;


namespace SGMSystem.Admin
{
    public partial class CourseManageSave : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Context.Request["id"] == null)
                {

                    txtCredit.Text = "";
                    txtCreditHours.Text = "";
                }
                else
                {
                    view_techCourseTableAdapter view_techCourseTA = new view_techCourseTableAdapter();
                    int id = Convert.ToInt32(Context.Request["id"]);
                    DataTable dt = view_techCourseTA.GetData();
                    ddlCourse.SelectedValue = dt.Rows[0]["courseId"].ToString();
                    ddlTerm.SelectedValue = dt.Rows[0]["termId"].ToString();
                    txtCredit.Text = dt.Rows[0]["credit"].ToString();
                    txtCreditHours.Text = dt.Rows[0]["creditHours"].ToString();
                }

            }
        }

        protected void btnCourseManageSave_Click(object sender, EventArgs e)
        {
            t_courseManageTableAdapter t_courseManageTA = new t_courseManageTableAdapter();
            int id = Convert.ToInt32(Context.Request["id"]);
            DataTable dt = t_courseManageTA.GetData();
            int courseId = Convert.ToInt32(ddlCourse.SelectedValue);
            int termId = Convert.ToInt32(ddlTerm.SelectedValue);
            int credit = Convert.ToInt32(txtCredit.Text);
            int creditHours = Convert.ToInt32(txtCreditHours.Text);
            if (Context.Request["id"] != null)
            {
                t_courseManageTA.UpdateCourseManage(courseId,termId,credit,creditHours,id);
                Response.Redirect("CourseManageList.aspx");
            }

            else
            {
                t_courseManageTA.InsertCourseManage(courseId,termId, credit, creditHours);
                Response.Redirect("CourseManageList.aspx");
            }
        }
    }
}