using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;

namespace SGMSystem.Student
{
    public partial class historySc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StudentModel s = null;
            if (Session["student"] != null)
            {
                s = (StudentModel)Session["student"];
            }
            else
            {
                Response.Redirect("../index.aspx");
            }
            view_SCTableAdapter view_SC = new view_SCTableAdapter();
            int id = Convert.ToInt32(Context.Request["id"]);
            if (!IsPostBack) {
                if (Context.Request["id"] != null)
                {
                    StudentModel student = (StudentModel)Session["student"];
                    int studentId = student.id;
                    DataTable dt = view_SC.GetDataByStuIdAndIsNull(studentId,id);
                    repeaterScore.DataSource = dt;
                    repeaterScore.DataBind();
                }
            }
        }
    }
}