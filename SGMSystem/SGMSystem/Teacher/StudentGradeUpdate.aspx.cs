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
        view_SCTableAdapter view_scTa = new view_SCTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Context.Request["id"] != null)
                {
                    int id = Convert.ToInt32(Context.Request["id"]);
                    DataTable dt = view_scTa.GetDataById(id);
                    lblStuId.Text = dt.Rows[0]["name"].ToString();
                    lblCmId.Text = dt.Rows[0]["courseName"].ToString();
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
                int termId = Convert.ToInt32(view_scTa.GetDataById(id).Rows[0]["termId"]);
                int courseId = Convert.ToInt32(view_scTa.GetDataById(id).Rows[0]["courseId"]);
                t_scTa.UpdateSc( Convert.ToDouble(txtUsualScore.Text), Convert.ToDouble(txtTestScore.Text), id);
                Response.Redirect("StudentGradeManage.aspx?termId="+termId+"&courseId="+courseId);
            }
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Context.Request["id"] != null)
            {
                int id = Convert.ToInt32(Context.Request["id"]);
                int termId = Convert.ToInt32(view_scTa.GetDataById(id).Rows[0]["termId"]);
                int courseId = Convert.ToInt32(view_scTa.GetDataById(id).Rows[0]["courseId"]);
                t_scTa.UpdateSc(Convert.ToDouble(txtUsualScore.Text), Convert.ToDouble(txtTestScore.Text), id);
                t_scTa.UpdateSubmit(id);
                Response.Redirect("StudentGradeManage.aspx?termId=" + termId + "&courseId=" + courseId);
            }
        }

        protected void return_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["id"]);
            int termId = Convert.ToInt32(view_scTa.GetDataById(id).Rows[0]["termId"]);
            int courseId = Convert.ToInt32(view_scTa.GetDataById(id).Rows[0]["courseId"]);
            Response.Redirect("StudentGradeManage.aspx?termId=" + termId + "&courseId=" + courseId);
        }
    }
}