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
    public partial class CourseManageSave : System.Web.UI.Page
    {
        view_courseManageTableAdapter view_courseManageTableAdapte = new view_courseManageTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["id"]);
            if (!IsPostBack)
            {
                if (Context.Request["id"] != null)
                {
                    DataTable dt = view_courseManageTableAdapte.GetData();
                    txtMajorName.Text = dt.Rows[0]["majorName"].ToString();
                    txtCourseId.Text = dt.Rows[0]["id"].ToString();
                    txtCourseName.Text = dt.Rows[0]["courseName"].ToString();
                    txtCreditHours.Text = dt.Rows[0]["creditHours"].ToString();
                    txtCredit.Text = dt.Rows[0]["credit"].ToString();
                    txtTermName.Text = dt.Rows[0]["termName"].ToString();
                    txtAcademyName.Text = dt.Rows[0]["academyName"].ToString();
                }

            }




        }

        protected void courseManageAddBtn_Click(object sender, EventArgs e)
        {
            if (Context.Request["id"] != null)
            {
                DataTable dt = view_courseManageTableAdapte.GetDataBy1();
                int id = Convert.ToInt32(Context.Request["id"]);
                dt.Rows[0]["majorName"] = txtMajorName.Text;
                dt.Rows[0]["id"] = txtCourseId.Text;
                dt.Rows[0]["courseName"] = txtCourseName.Text;
                dt.Rows[0]["creditHours"] = txtCreditHours.Text;
                dt.Rows[0]["credit"] = txtCredit.Text;
                dt.Rows[0]["termName"] = txtTermName.Text;
                dt.Rows[0]["academyName"] = txtAcademyName.Text;
                Response.Redirect("CourseManageList.aspx");
            }
            else
            {
                DataTable dt = view_courseManageTableAdapte.GetDataBy1();
                int id = Convert.ToInt32(Context.Request["id"]);
                dt.Rows[0]["majorName"] = txtMajorName.Text;
                dt.Rows[0]["id"] = txtCourseId.Text;
                dt.Rows[0]["courseName"] = txtCourseName.Text;
                dt.Rows[0]["creditHours"] = txtCreditHours.Text;
                dt.Rows[0]["credit"] = txtCredit.Text;
                dt.Rows[0]["termName"] = txtTermName.Text;
                dt.Rows[0]["academyName"] = txtAcademyName.Text;
                Response.Redirect("CourseManageList.aspx");
            }
        }
    }
}
