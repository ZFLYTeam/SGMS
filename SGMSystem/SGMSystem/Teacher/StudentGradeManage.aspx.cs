using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;

namespace SGMSystem.Teacher
{
    public partial class StudentGradeManage : System.Web.UI.Page
    {
        t_scTableAdapter t_scTa = new t_scTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = t_scTa.GetData();
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
    }
}