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
    public partial class Dts : System.Web.UI.Page
    {
        t_courseTableAdapter t_courseTa = new t_courseTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                treeViewUtil t = new treeViewUtil();
                t.getTreeView(menuTree);
                if (Context.Request["id"] != null)
                {
                    int id = Convert.ToInt32(Context.Request["id"]);
                    DataTable dt = t_courseTa.GetCourseById(id);
                    lblAcademyId.Text = dt.Rows[0]["academyId"].ToString();
                    lblCourseName.Text = dt.Rows[0]["courseName"].ToString();
                    lblProperty.Text = dt.Rows[0]["property"].ToString();

                }
            }

        }
    }
}
    