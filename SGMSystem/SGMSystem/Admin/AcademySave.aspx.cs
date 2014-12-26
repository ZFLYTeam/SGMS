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
    public partial class AcademySave : System.Web.UI.Page
    {
        t_academyTableAdapter t_academyTa = new t_academyTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                treeViewUtil t = new treeViewUtil();
                t.getTreeView(menuTree);
                if (Context.Request["id"] != null)
                {
                    int id = Convert.ToInt32(Context.Request["id"]);
                    DataTable dt = t_academyTa.GetAcademyById(id);
                    txtAcademyName.Text = dt.Rows[0]["academyName"].ToString();
                }
            }
        }

        /// <summary>
        /// 保存信息的按钮事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void bt_academyAdd_Click(object sender, EventArgs e)
        {
            if (Context.Request["id"] != null)
            {
                int id = Convert.ToInt32(Context.Request["id"]);
                t_academyTa.UpdateAcademy(txtAcademyName.Text, id);
                Response.Redirect("AcademyList.aspx");
            }
            else {
                t_academyTa.InsertAcademy(txtAcademyName.Text);
                Response.Redirect("AcademyList.aspx");
            }
        }
    }
}