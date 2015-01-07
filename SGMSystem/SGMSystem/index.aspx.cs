using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;
using System.Web.Security;
namespace SGMSystem
{
    public partial class index : System.Web.UI.Page
    {
        t_optionTableAdapter t_opTa = new t_optionTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            ///如果管理员在session中则删除
            if (Session["admin"] != null) { Session.Abandon();}
            else if (Session["student"] != null) { Session.Abandon(); }
            else if (Session["teacher"] != null) { Session.Abandon(); }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataTable dt1 = t_opTa.GetData();
            int stuSys = (int)dt1.Rows[0]["isStuSysOn"];
            int teacherSys = (int)dt1.Rows[0]["isTeachSystemOn"];

            if (txtValidateCode.Text == txtCode.Text)
            {
                DataTable dt;
                if (ddlStatus.SelectedItem.Text == "管理员")
                {
                    //使用TableAdapter，先声明
                    t_adminTableAdapter t_adminTA = new t_adminTableAdapter();
                    //把登录数据集返回的table放进DataTable dt
                    dt = t_adminTA.GetAdminByLogin(txtUserName.Text, FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "MD5"));
                    ///把返回的属性赋值给admin
                    if (dt.Rows.Count == 1)
                    {
                        AdminModel admin = new AdminModel();
                        admin.id = (Int32)dt.Rows[0]["id"];
                        admin.userName = dt.Rows[0]["userName"].ToString();
                        admin.password = dt.Rows[0]["password"].ToString();
                        Session["admin"] = admin;
                        Response.Redirect("Admin/Defualt.aspx");
                    }
                    else { lblError.Text = "用户名或密码错误"; }
                }
                else if (ddlStatus.SelectedItem.Text == "学生")
                {
                    if (stuSys == 0)
                    {
                        Response.Redirect("systemClosed.aspx");
                    }
                    t_studentTableAdapter t_stuTa = new t_studentTableAdapter();
                    dt = t_stuTa.GetStudentByLogin(txtUserName.Text, FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "MD5"));
                    if (dt.Rows.Count == 1)
                    {
                        ///把返回的属性赋值给student
                        StudentModel student = new StudentModel();
                        student.birth = dt.Rows[0]["birth"].ToString();
                        student.classId = Convert.ToInt32(dt.Rows[0]["classId"]);
                        student.headImage = dt.Rows[0]["headImage"].ToString();
                        student.id = Convert.ToInt32(dt.Rows[0]["id"]);
                        student.idNum = dt.Rows[0]["idNum"].ToString();
                        student.name = dt.Rows[0]["name"].ToString();
                        student.nation = dt.Rows[0]["nation"].ToString();
                        student.password = dt.Rows[0]["password"].ToString();
                        student.political = dt.Rows[0]["political"].ToString();
                        student.sex = dt.Rows[0]["sex"].ToString();
                        student.sno = dt.Rows[0]["sno"].ToString();
                        Session["student"] = student;
                        Response.Redirect("Student/Defualt.aspx");
                    }
                    else { lblError.Text = "用户名或密码错误"; }
                }
                else if (ddlStatus.SelectedItem.Text == "教师")
                {
                    if (teacherSys == 0)
                    {
                        Response.Redirect("systemClosed.aspx");
                    }
                    try
                    {
                                            t_teacherTableAdapter t_teacTa = new t_teacherTableAdapter();
                                            dt = t_teacTa.GetTeacherByLogin(Convert.ToInt32(txtUserName.Text), FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "MD5"));
                    if (dt.Rows.Count == 1)
                    {
                        ///把返回的属性赋值给Teacher
                        TeacherModel teacher = new TeacherModel();
                        teacher.birth = dt.Rows[0]["birth"].ToString();
                        teacher.headImage = dt.Rows[0]["headImage"].ToString();
                        teacher.id = Convert.ToInt32(dt.Rows[0]["id"]);
                        teacher.TeacherName = dt.Rows[0]["teacherName"].ToString();
                        teacher.password = dt.Rows[0]["password"].ToString();
                        teacher.sex = dt.Rows[0]["sex"].ToString();
                        teacher.techNum = dt.Rows[0]["techNum"].ToString();
                        teacher.title = dt.Rows[0]["teacherName"].ToString();
                        Session["teacher"] = teacher;
                        Response.Redirect("Teacher/Defualt.aspx");
                    }
                    }
                    catch { 
                         lblError.Text = "用户名或密码错误"; 
                    }
                }
            }
            else {
                lblError.Text = "验证码错误";
            }
        }
    }
}