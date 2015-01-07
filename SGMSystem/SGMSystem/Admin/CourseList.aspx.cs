using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;

namespace SGMSystem.Admin
{
    public partial class CourseList : System.Web.UI.Page
    {
        t_courseTableAdapter t_courseTableAdapte = new t_courseTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = t_courseTableAdapte.GetData();
                listCourse.DataSource = dt;
                listCourse.DataBind();
            }
        }

        protected void btnCourseAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseSave.aspx");
        }

        protected void listCourse_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "modify")
            {
                Response.Redirect("CourseSave.aspx?id=" + id);
            }
            else if (e.CommandName == "delete")
            {
                Response.Write("<script>confirm('你确认要删除吗？');</script>");
                t_courseTableAdapte.DeleteCourse(id);
                Response.Redirect("CourseList.aspx");
            }
            else if (e.CommandName == "details")
            {
                Response.Redirect("CourseDetails.aspx?id=" + id);
            }
        }
    }
}