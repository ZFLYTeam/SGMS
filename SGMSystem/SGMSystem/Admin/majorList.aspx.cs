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
    public partial class majorList : System.Web.UI.Page
    {
        t_majorTableAdapter t_majorTableAdapte = new t_majorTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["academyId"]);
            if (!IsPostBack)
            {
                treeViewUtil t = new treeViewUtil();
                t.getTreeView(menuTree);
                DataTable dt;
                if (Context.Request["academyId"] != null)
                {
                    dt = t_majorTableAdapte.GetDataacAdemyId(id);
                }
                else {
                    dt = t_majorTableAdapte.GetData();
                }
                listMajor.DataSource = dt;
                listMajor.DataBind();
            }
        }

        //绑定数据源
        public void BindGrid()
        {

        }

        protected void btnMajorAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("majorSave.aspx");
        }

        protected void listMajor_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "modify")
            {
                Response.Redirect("majorSave.aspx?id=" + id);
            }
            else if (e.CommandName == "delete")
            {
                try
                {
                    t_majorTableAdapte.DeleteMajor(id);
                    Response.Redirect("majorList.aspx");
                }
                catch
                {
                    Response.Write("<script>confirm('该专业里有班级信息，无法删除');</script>");
                }
            }
        }
    }
}