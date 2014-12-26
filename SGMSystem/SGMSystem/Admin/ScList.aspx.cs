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
    public partial class ScList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                treeViewUtil t = new treeViewUtil();
                t.getTreeView(menuTree);
                view_SCTableAdapter view_SCTA = new view_SCTableAdapter();
                DataTable DT = view_SCTA.GetData();
                listSelectCourse.DataSource = DT;
                listSelectCourse.DataBind();
            }
        }
        protected void listSelectCourse_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals("delete"))
            {
                t_scTableAdapter t_scTA = new t_scTableAdapter();
                int id = Convert.ToInt32(e.CommandArgument);
                t_scTA.DeleteSc(id);
                Response.Write(e.CommandArgument);
                Response.Redirect("ScList.aspx");
            }
        }

        protected void btnSelectCoursetAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("ScSave.aspx");
        }
        //protected void DataInit()
        //{
        //    //学院绑定
        //    t_academyTableAdapter t_academyTA =new t_academyTableAdapter();
        //    DataTable dt_academy = t_academyTA.GetData();
        //    ddlAcademy.DataSource = dt_academy;
        //    ddlAcademy.DataTextField = "academyName";
        //    ddlAcademy.DataValueField = "id";
        //    ddlAcademy.DataBind();

        //    //专业绑定
        //    t_majorTableAdapter t_majorTA = new t_majorTableAdapter();
        //    DataTable dt_major = t_majorTA.GetData();
        //    ddlMajor.DataSource = dt_major;
        //    ddlMajor.DataTextField = "majorName";
        //    ddlMajor.DataValueField = "id";
        //    ddlMajor.DataBind();

        //    //学期绑定
        //    t_termTableAdapter t_termTA = new t_termTableAdapter();
        //    DataTable dt_term = t_termTA.GetData();
        //    ddlTerm.DataSource = dt_term;
        //    ddlTerm.DataTextField = "termName";
        //    ddlTerm.DataValueField = "id";
        //    ddlTerm.DataBind();
  
        //}

        //protected void ddlAcademy_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //    int academy_id = Convert.ToInt32(ddlAcademy.SelectedValue);
        //    t_majorTableAdapter ta_major = new t_majorTableAdapter();

        //    DataTable dt_major = ta_major.GetMajorById(academy_id);
        //    ddlMajor.DataSource = dt_major;
        //    ddlMajor.DataTextField = "majorName";
        //    ddlMajor.DataValueField = "id";
        //    ddlMajor.DataBind();
        //}


    }
}