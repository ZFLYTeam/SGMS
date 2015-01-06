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
    public partial class teacherList : System.Web.UI.Page
    {
        t_teacherTableAdapter t_teacherTableAdapte = new t_teacherTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                DataTable dt = t_teacherTableAdapte.GetData();
                listTeacher.DataSource = dt;
                listTeacher.DataBind();
            }
        }
        
        protected void btnTeacherAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("teacherSave.aspx");
        }

        protected void listTeacher_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "modify")
            {
                Response.Redirect("teacherSave.aspx?id=" + id);
            }
            else if (e.CommandName == "delete")
            {
                Response.Write("<script>confirm('你确认要删除吗？');</script>");
                t_teacherTableAdapte.DeleteTeacher(id);
                Response.Redirect("teacherList.aspx");
            }
        }
    }
}