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
    public partial class studentSave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                treeViewUtil t = new treeViewUtil();
                t.getTreeView(menuTree);
                if (Context.Request["id"] == null)
                {
                    txt_name.Text = "";
                    txt_sno.Text = "";
                    txt_sex.Text = "";
                    txt_birth.Text = "";
                    txt_nation.Text = "";
                    txt_political.Text = "";
                    txt_headImage.Text = "";
                    txt_idNum.Text = "";
                    txt_password.Text = "";
                }
                else
                {
                    view_studentTableAdapter view_studentTA = new view_studentTableAdapter();
                    int id = Convert.ToInt32(Context.Request["id"]);
                    DataTable dt = view_studentTA.GetData();
                    txt_name.Text = dt.Rows[0]["name"].ToString();
                    txt_sno.Text = dt.Rows[0]["sno"].ToString();
                    txt_sex.Text = dt.Rows[0]["sex"].ToString();
                    txt_birth.Text = dt.Rows[0]["birth"].ToString();
                    txt_nation.Text = dt.Rows[0]["nation"].ToString();
                    txt_political.Text = dt.Rows[0]["political"].ToString();
                    txt_headImage.Text = dt.Rows[0]["headImage"].ToString();
                    ddlClass.SelectedValue= dt.Rows[0]["id"].ToString();
                    txt_idNum.Text = dt.Rows[0]["idNum"].ToString();
             
                }
            }
        }

        protected void bt_studentSave_Click(object sender, EventArgs e)
        {
            t_studentTableAdapter t_studentTA = new t_studentTableAdapter();
            int classId = Convert.ToInt32(ddlClass.SelectedValue);
            t_studentTA.InsertStudent             (txt_name.Text ,txt_sno.Text ,txt_sex.Text ,txt_birth.Text ,txt_nation.Text ,txt_political.Text ,txt_headImage.Text ,classId ,txt_idNum.Text ,txt_password.Text
);

        }
    }
}