using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;

namespace SGMSystem.Teacher
{
    public partial class TeachUpdate : System.Web.UI.Page
    {
        t_teacherTableAdapter t_teacherTa = new t_teacherTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //int id = (int)Session["id"];
                //HttpContext.Current.Session["Defualt.aspx"].ToString(); //其他位置
                //TeacherModel id = (TeacherModel)Session["id"];
                TeacherModel teacher = (TeacherModel)Session["teacher"];
                //int id = Convert.ToInt32(Context.Request["id"]);
                int id = Convert.ToInt32(Session["id"]);
                lblTechNum.Text = (string)Session["id"];
                if (!IsPostBack)
                {
                    //treeViewUtil t = new treeViewUtil();
                    //t.getTreeView(menuTree);
                    //if (Context.Request["id"] != null)
                    if (Session["id"] != null)
                    {
                        //int id = Convert.ToInt32(Context.Request["id"]);
                        DataTable dt = t_teacherTa.GetTeacherById(id);
                        //lblTechNum.Text = dt.Rows[0]["techNum"].ToString();
                        txtPassWord.Text = "";
                        txtNewPassWord.Text = "";
                        txtSurePassWord.Text = "";
                        //lblCmId.Text = dt.Rows[0]["cmId"].ToString();
                        //txtPassWord.Text = dt.Rows[0]["usualScore"].ToString();
                        //txtNewPassWord.Text = dt.Rows[0]["testScore"].ToString();
                        //txtSurePassWord.Text = dt.Rows[0]["testScore"].ToString();

                    }
                }
            }
            catch { Response.Redirect("TeachUpdate.aspx"); }
        }

        protected void btnTeachUpdate_Click(object sender, EventArgs e)
        {
            if (txtPassWord.Text == "")
            {
                Response.Write("原密码不可为空");
            }
            else if (txtNewPassWord.Text == "")
            {
                Response.Write("新密码不可为空");
            }
            else if (txtSurePassWord.Text == "")
            { 
                Response.Write("确认密码不可为空");
            }
            else
            {
                //t_teacherTa.UpdateTecherPwd(txtNewPassWord.Text);
                Response.Redirect("Defualt.aspx");
                //string sql = "insert into Table_teacher ('techNum','password') values ('" + lblTechNum.Text + "','" + txtNewPassWord.Text + "')";
                //把数据添加进数据


            }
            //t_teacherTa.InsertTeacher(Convert.ToInt32(lblTechNum.Text), txtTeacherName.Text, txtSex.Text, txtBirth.Text, txtTitle.Text, txtHeadImage.Text, txtNewPassWord.Text);
            //Response.Redirect("teacherList.aspx");
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            //int id = Convert.ToInt32(Context.Request["id"]);
            //DataTable dt = t_teacherTa.GetTeacherById(id);
            //lblTechNum.Text = dt.Rows[0]["techNum"].ToString();
            //txtPassWord.Text = "";
            //txtNewPassWord.Text = "";
            //txtSurePassWord.Text = "";
            Response.Redirect("TeachUpdate.aspx");
        }
    }
}