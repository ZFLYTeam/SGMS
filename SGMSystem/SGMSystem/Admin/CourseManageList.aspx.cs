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
    public partial class CourseManageList : System.Web.UI.Page
    {
        view_courseManageTableAdapter viewCMTa = new view_courseManageTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable DT = viewCMTa.GetData();
                listCourseManage.DataSource=DT;
                listCourseManage .DataBind();
            }
        }
          protected void listCourseManage_ItemCommand(object source, RepeaterCommandEventArgs e)
          {

              int id = Convert.ToInt32(e.CommandArgument);
              if (e.CommandName == "modify")
              {
                  string url;
                  url = "CourseManageSave.aspx?id=" +id;
                  Response.Redirect(url);
              }
              else if (e.CommandName == "delete")
              {
                  Response.Write("<script>confirm('你确认要删除吗？');</script>");
                  t_courseManageTableAdapter t_courseManageTA =new t_courseManageTableAdapter();
                  t_courseManageTA.DeleteCourseManage(id);
                  Response.Redirect("CourseManageList.aspx");
              }
          }

          protected void btnCourseManageAdd_Click(object sender, EventArgs e)
          {
              Response.Redirect("CourseManageSave.aspx");
          }
    }
}