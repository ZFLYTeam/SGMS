using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;
using System.IO;
using System.Web.Security;

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
                    txtHeahImage.Text = dt.Rows[0]["headImage"].ToString();
                }
            }
        }

        protected void btnTeacherSave_Click(object sender, EventArgs e)
        {

            t_teacherTableAdapter t_teacherTA = new t_teacherTableAdapter();
            int id = Convert.ToInt32(Context.Request["id"]);
            DataTable dt = t_teacherTA.GetTeacherById(id);
            if (Context.Request["id"] != null)
            {
                string headimage;
                if (upLoadImage() != "")
                {
                    headimage = upLoadImage();
                    try
                    {
                        DeleteDiskFile(txtHeahImage.Text);
                    }//修改之后上新图片到服务器，删除旧图片 
                    catch { }
                }
                else
                {
                    headimage = txtHeahImage.Text;
                }
                t_teacherTA.UpdateTeacher(Convert.ToInt32(txtTechNum.Text), txtTeacherName.Text, txtSex.Text, txtBirth.Text, txtTitle.Text, headimage, id);
                Response.Redirect("teacherList.aspx");
            }
            else
            {
                string headimage = upLoadImage();
                t_teacherTA.InsertTeacher(Convert.ToInt32(txtTechNum.Text), txtTeacherName.Text, txtSex.Text, txtBirth.Text, txtTitle.Text, headimage,FormsAuthentication.HashPasswordForStoringInConfigFile("123456", "MD5"));
                Response.Redirect("teacherList.aspx");
            }
        }

        //上传图片到服务器，返回字符串
        public string upLoadImage()
        {
            string imageName = "";
            if (fldCover.PostedFile.ContentLength < 500000)//100000为100K
            {
                string fileFullname = this.fldCover.FileName;
                string dataName = DateTime.Now.ToString("yyyyMMddhhmmss");
                string fileName = fileFullname.Substring(fileFullname.LastIndexOf("\\") + 1);
                string type = fileFullname.Substring(fileFullname.LastIndexOf(".") + 1);
                if (type == "bmp" || type == "jpg" || type == "gif" || type == "JPG" || type == "BMP" || type == "GIF")
                {
                    this.fldCover.SaveAs(Server.MapPath("../Images/headImages") + "\\" + dataName + "." + type);
                    string ProImg = "../Images/headImages/" + dataName + "." + type;//路径
                    imageName = dataName + "." + type;
                }
                else
                {
                    Response.Write("<script language='javascript'>alert('支持格式：|jpg|gif|bmp|');</script>");
                }
            }
            else
            {
                Response.Write("<script language='javascript'>alert('你的图片已经超过500K的大小！');</script>");
            }
            return imageName;
        }

        //删除图片
        public void DeleteDiskFile(string ImageUrl)
        {
            try
            {
                string FilePath = Server.MapPath("../Images/headImages/" + ImageUrl);//转换物理路径
                File.Delete(FilePath);//执行IO文件删除,需引入命名空间System.IO;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
