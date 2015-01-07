using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;

namespace SGMSystem.Admin
{
    public partial class termSave : System.Web.UI.Page
    {

        t_termTableAdapter t_termTA = new t_termTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["id"]);
            if (!IsPostBack)
            {
                if (Context.Request["id"] != null)
                {
                    DataTable dt = t_termTA.GetTermById(id);
                    txtTerm.Text = dt.Rows[0]["termName"].ToString();
                }
            }
        }

        protected void btnTermSave_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["id"]);
            if (Context.Request["id"] != null)
            {
                DataTable dt = t_termTA.GetTermById(id);
                t_termTA.UpdateTerm(txtTerm.Text,id);
                Response.Redirect("termList.aspx");
            }
            else
            {
                t_termTA.UpdateSetNull();
                t_termTA.InsertTerm(txtTerm.Text,"isNow");
                Response.Redirect("termList.aspx");
            }       
        }
    }
}