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
    public partial class teacherSave : System.Web.UI.Page
    {
        t_teacherTableAdapter t_teacherTA = new t_teacherTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["id"]);
            if (!IsPostBack)
            {
                if (Context.Request["id"] != null)
                {
                    DataTable dt = t_teacherTA.GetTeacherById(id);
                    txtTechNum.Text = dt.Rows[0]["techNum"].ToString();
                    txtTeacherName.Text = dt.Rows[0]["teacherName"].ToString();
                    txtSex.Text = dt.Rows[0]["sex"].ToString();
                    txtBirth.Text = dt.Rows[0]["birth"].ToString();
                    txtTitle.Text = dt.Rows[0]["title"].ToString();
                    txtHeahImage.Text = dt.Rows[0]["heahImage"].ToString();
                    txtPassword.Text = dt.Rows[0]["password"].ToString();
                }
            }
        }  
 
        protected void btnTeacherSave_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["id"]);
            if (Context.Request["id"] != null)
            {
                DataTable dt = t_teacherTA.GetTeacherById(id);
                t_teacherTA.UpdateTeacher(Convert.ToInt32(txtTechNum.Text), txtTeacherName.Text, txtSex.Text, txtBirth.Text, txtTitle.Text, txtHeahImage.Text, txtPassword.Text, id);
                Response.Redirect("teacherList.aspx");
            }
            else
            {
                t_teacherTA.InsertTeacher(Convert.ToInt32(txtTechNum.Text), txtTeacherName.Text, txtSex.Text, txtBirth.Text,txtTitle.Text,txtHeahImage.Text, txtPassword.Text);
                Response.Redirect("teacherList.aspx");
            }       
        }
    }
}
