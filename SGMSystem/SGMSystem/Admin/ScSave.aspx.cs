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
    public partial class ScSave : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void btnScSave_Click(object sender, EventArgs e)
        {
            t_scTableAdapter t_scTA = new t_scTableAdapter();
            t_scTA.InsertSc(Convert.ToInt32(txtStuId.Text),Convert.ToInt32(txtCmId.Text),Convert.ToDouble(txtUsualScore.Text), Convert.ToDouble(txtTestScore.Text));
            Response.Redirect("ScList.aspx");
        }
    }
}