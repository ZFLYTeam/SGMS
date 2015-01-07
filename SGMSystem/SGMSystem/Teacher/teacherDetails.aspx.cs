using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;
using System.IO;


namespace SGMSystem.Teacher
{
    public partial class teacherDetails : System.Web.UI.Page
    {
        t_teacherTableAdapter t_teacherTA = new t_teacherTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            TeacherModel tm = (TeacherModel)Session["teacher"];
            int teacherId = tm.id;
            DataTable dt = t_teacherTA.GetTeacherById(teacherId);
            lblTechNum.Text = dt.Rows[0]["techNum"].ToString();
            lblTeacherName.Text = dt.Rows[0]["teacherName"].ToString();
            lblSex.Text = dt.Rows[0]["sex"].ToString();
            lblBirth.Text = dt.Rows[0]["birth"].ToString();
            lblTitle.Text = dt.Rows[0]["title"].ToString();
            imgHeadImage.ImageUrl = "../Images/headImages/" + dt.Rows[0]["headImage"].ToString();
        }
    }
}