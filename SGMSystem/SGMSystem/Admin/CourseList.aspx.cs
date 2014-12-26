using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;

namespace SGMSystem
{
    public partial class CourseList : System.Web.UI.Page
    {
        t_courseTableAdapter t_courseTa = new t_courseTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                treeViewUtil t = new treeViewUtil();
                t.getTreeView(menuTree);
                DataTable dt = t_courseTa.GetData();
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
                t_courseTa.DeleteCourse(id);
                Response.Redirect("CourseList.aspx" );
            }
            else if (e.CommandName == "details")
            {
                Response.Redirect("CourseDetails.aspx?id="+id );
            }
        }

       
    }
}