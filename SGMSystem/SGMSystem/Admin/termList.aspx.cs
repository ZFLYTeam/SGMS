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
    public partial class TermList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                t_termTableAdapter t_termTA = new t_termTableAdapter();
                DataTable DT = t_termTA.GetData();
                listTerm.DataSource = DT;
                listTerm.DataBind();
            }
        }

        protected void btnTermAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("termSave.aspx");
        }

        protected void listTerm_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "modify")
            {
                Response.Redirect("termSave.aspx?id=" + id);
            }
            else if (e.CommandName == "delete")
            {
                t_termTableAdapter t_termTA = new t_termTableAdapter();
                t_termTA.DeleteTerm(id);
                Response.Redirect("termList.aspx");
            }
        }
    }
}