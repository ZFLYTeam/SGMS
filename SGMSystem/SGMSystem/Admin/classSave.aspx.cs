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
    public partial class classSave : System.Web.UI.Page
    {
        t_classTableAdapter t_classTA = new t_classTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["id"]);
            if (!IsPostBack)
            {
                treeViewUtil t = new treeViewUtil();
                t.getTreeView(menuTree);
                if (Context.Request["id"] != null)
                {
                    DataTable dt = t_classTA.GetClassById(id);
                    ddlMajorName.SelectedValue= dt.Rows[0]["MajorId"].ToString();
                    txtClassName.Text = dt.Rows[0]["className"].ToString();
                }
            }
        }

        protected void btnClassSave_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["id"]);
            if (Context.Request["id"] != null)
            {
                DataTable dt = t_classTA.GetClassById(id);
                t_classTA.UpdateClass(Convert.ToInt32(ddlMajorName.SelectedValue), txtClassName.Text, id);
            }
            else
            {
                t_classTA.InsertClass(Convert.ToInt32(ddlMajorName.SelectedValue), txtClassName.Text);
            }
        }
    }
}