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
    public partial class majorSave : System.Web.UI.Page
    {
        t_majorTableAdapter t_majorTA = new t_majorTableAdapter();
        private object id;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["id"]);
            if (!IsPostBack)
            {
                treeViewUtil t = new treeViewUtil();
                t.getTreeView(menuTree);
                if (Context.Request["id"] != null)
                {
                    DataTable dt = t_majorTA.GetMajorById(id);
                    txtMajorNum.Text = dt.Rows[0]["MajorNum"].ToString();
                    txtMajorName.Text = dt.Rows[0]["MajorName"].ToString();
                    txtAcademyId.Text = dt.Rows[0]["AcademyId"].ToString();
                }
            }
        }

        protected void btnMajorSave_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["id"]);
            if (Context.Request["id"] != null)
            {
                DataTable dt = t_majorTA.GetMajorById(id);
                t_majorTA.UpdateMajor(Convert.ToInt32(txtMajorNum.Text), txtMajorName.Text, Convert.ToInt32(txtAcademyId.Text), id);
                Response.Redirect("majorList.aspx");
            }
            else
            {
                t_majorTA.InsertMajor(Convert.ToInt32(txtMajorNum.Text), txtMajorName.Text, Convert.ToInt32(txtAcademyId.Text));
                Response.Redirect("majorList.aspx");
            }
        }
    }
}