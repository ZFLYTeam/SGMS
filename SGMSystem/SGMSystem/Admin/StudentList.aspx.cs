using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;
using System.Web.Security;


namespace SGMSystem
{
    public partial class StudentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["classId"]);
            if (!IsPostBack)
            {
                treeViewUtil t = new treeViewUtil();
                t.getTreeView(menuTree);
                t_studentTableAdapter t_studentTA = new t_studentTableAdapter();
                DataTable DT = t_studentTA.GetDataByclassId(id);
                listStudent.DataSource = DT;
                listStudent.DataBind();
            }
        }

   
        protected void listStudent_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            //点击修改，跳转到studentModify,并且将id作为参数传过去
            if (e.CommandName == "modify")
            {
                string url;
                url = "studentSave.aspx?id=" + e.CommandArgument;
                Response.Redirect(url);
            }
            else if (e.CommandName == "details")
            {
                string url;
                url = "studentDetails.aspx?id=" + e.CommandArgument;
                Response.Redirect(url);
            }
            else if (e.CommandName == "delete")
            {
                t_studentTableAdapter t_studentTA = new t_studentTableAdapter();
                int id = Convert.ToInt32(e.CommandArgument);
                t_studentTA.DeleteStudent(id);
                view_studentTableAdapter view_studentTA = new view_studentTableAdapter();
                DataTable DT = view_studentTA.GetData();
                listStudent.DataSource = DT;
                listStudent.DataBind();
            }
            else if (e.CommandName == "reset")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                t_studentTableAdapter t_s = new t_studentTableAdapter();
                t_s.UpdateStudentPwd(FormsAuthentication.HashPasswordForStoringInConfigFile("123456", "MD5"), id);
            }
        }
        protected void btnStudentAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentSave.aspx");
        }
    }
}