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
    public partial class CourseManageList : System.Web.UI.Page
    {
        view_courseManageTableAdapter view_courseManageTableAdapte = new view_courseManageTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = view_courseManageTableAdapte.GetDataBy1();
            if (!IsPostBack)
            {
                //绑定
                listCourseManage.DataSource = dt;
                listCourseManage.DataBind();
            }
        }

        protected void listCourseManage_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "modify")
            {
                Response.Redirect("CourseManageSave.aspx?id=" + id);
            }
            else if (e.CommandName == "delete")
            {
                Response.Write("<script>confirm('你确认要删除该课程安排么吗？');</script>");
                view_courseManageTableAdapte.DeleteQuery(id);
                Response.Redirect("CourseManageList.aspx");
            }
            
        }

        protected void courseManageAddBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseManageSave.aspx");
        }

       
      
    }
}
