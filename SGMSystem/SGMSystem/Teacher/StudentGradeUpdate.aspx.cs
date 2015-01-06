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
    public partial class StudentGradeUpdate : System.Web.UI.Page
    {
        t_scTableAdapter t_scTa = new t_scTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Context.Request["id"] != null)
                {
                    int id = Convert.ToInt32(Context.Request["id"]);
                    DataTable dt = t_scTa.GetScById(id);
                    lblStuId.Text = dt.Rows[0]["stuId"].ToString();
                    lblCmId.Text = dt.Rows[0]["cmId"].ToString();
                    txtUsualScore.Text = dt.Rows[0]["usualScore"].ToString();
                    txtTestScore.Text = dt.Rows[0]["testScore"].ToString();
                   

                }
            }
        }

        protected void btnScUpdate_Click(object sender, EventArgs e)
        {
            if (Context.Request["id"] != null)
            {
                int id = Convert.ToInt32(Context.Request["id"]);

                // DataTable dt = t_courseTA.GetCourseById(id);
                t_scTa.UpdateSc(Convert.ToInt32(lblStuId.Text), Convert.ToInt32(lblCmId.Text), Convert.ToDouble(txtUsualScore.Text), Convert.ToDouble(txtTestScore.Text), id);
                Response.Redirect("StudentGradeManage.aspx");
               
            }
           
        }
    }
}