using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;

namespace SGMSystem
{
    /// <summary>
    /// 学生信息详情页面
    /// 游烨 2014/12/29
    /// </summary>
    public partial class StudentDetails : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            StudentModel student = null;
            if (Session["student"] != null)
            {
                student = (StudentModel)Session["student"];
                lblName.Text = student.sno;
            }
            else
            {
                Response.Redirect("../index.aspx");
            }
            view_studentTableAdapter view_stuTA = new view_studentTableAdapter();
            DataTable dt = view_stuTA.GetDataById(student.id);

            lblName.Text = dt.Rows[0]["name"].ToString();
            lblSno.Text = dt.Rows[0]["sno"].ToString();
            lblSex.Text = dt.Rows[0]["sex"].ToString();
            lblBirth.Text = dt.Rows[0]["birth"].ToString();
            lblNation.Text = dt.Rows[0]["nation"].ToString();
            lblPolitical.Text = dt.Rows[0]["political"].ToString();
            lblIdNum.Text = dt.Rows[0]["idNum"].ToString();
            headImage.ImageUrl = "../Images/headImages" + student.headImage;
            lblAcademy.Text = dt.Rows[0]["academyName"].ToString();
            lblMajor.Text = dt.Rows[0]["majorName"].ToString();
            lblClass.Text = dt.Rows[0]["className"].ToString();
        }
    }
}