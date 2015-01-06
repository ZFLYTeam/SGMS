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
    public partial class classList : System.Web.UI.Page
    {
        t_classTableAdapter t_classTableAdapte = new t_classTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["majorId"]);
            if (!IsPostBack)
            {
                treeViewUtil t = new treeViewUtil();
                t.getTreeView(menuTree);
                DataTable dt;
                if (Context.Request["majorId"] != null)
                {
                    dt = t_classTableAdapte.GetDataByMajorId(id);
                }
                else
                {
                    dt = t_classTableAdapte.GetData();
                }
                listClass.DataSource = dt;
                listClass.DataBind();
            }
        }

        protected void btnClassAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("classSave.aspx");
        }

        protected void listClass_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "modify")
            {
                Response.Redirect("classSave.aspx?id=" + id);
            }
            else if (e.CommandName == "delete")
            {
                Response.Write("<script>confirm('你确认要删除吗？');</script>");
                t_classTableAdapte.DeleteClass(id);
                Response.Redirect("classList.aspx");
            }
        }
    }
}