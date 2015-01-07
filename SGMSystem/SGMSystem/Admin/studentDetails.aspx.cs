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
    public partial class studentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                treeViewUtil t = new treeViewUtil();
                t.getTreeView(menuTree);
                if (Context.Request["id"] == null)
                {
                    lblName.Text = "";
                    lblSno.Text = "";
                    lblSex.Text = "";
                    lblBirth.Text = "";
                    lblClass.Text = "";
                    lblNation.Text = "";
                    lblPolitical.Text = "";
                    lblNum.Text = "";
                }
                else
                {
                    view_studentTableAdapter view_studentTA = new view_studentTableAdapter();
                    int id = Convert.ToInt32(Context.Request["id"]);
                    DataTable dt = view_studentTA.GetDataById(id);
                    lblName.Text = dt.Rows[0]["name"].ToString();
                    lblSno.Text = dt.Rows[0]["sno"].ToString();
                    imgheadImage.ImageUrl = "../Images/headImages/" + dt.Rows[0]["headImage"].ToString();
                    lblSex.Text = dt.Rows[0]["sex"].ToString();
                    lblBirth.Text = dt.Rows[0]["birth"].ToString();
                    lblClass.Text = dt.Rows[0]["className"].ToString();
                    lblNation.Text = dt.Rows[0]["nation"].ToString();
                    lblPolitical.Text = dt.Rows[0]["political"].ToString();
                    lblNum.Text = dt.Rows[0]["idNum"].ToString();
                 
                }
            }
        }
    }
}