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
                }
                else
                {
                    view_studentTableAdapter view_studentTA = new view_studentTableAdapter();
                    int id = Convert.ToInt32(Context.Request["id"]);
                    DataTable dt = view_studentTA.GetDataById(id);
                    txt_name.Text = dt.Rows[0]["name"].ToString();
                    txt_sno.Text = dt.Rows[0]["sno"].ToString();
                    txt_sex.Text = dt.Rows[0]["sex"].ToString();
                    txt_birth.Text = dt.Rows[0]["birth"].ToString();
                    txt_nation.Text = dt.Rows[0]["nation"].ToString();
                    txt_political.Text = dt.Rows[0]["political"].ToString();
                    txt_headImage.Text = dt.Rows[0]["headImage"].ToString();
                    ddlClass.SelectedValue= dt.Rows[0]["classId"].ToString();
                    txt_idNum.Text = dt.Rows[0]["idNum"].ToString();
             
                }
            }
        }

        protected void bt_studentSave_Click(object sender, EventArgs e)
        {
            t_studentTableAdapter t_studentTA = new t_studentTableAdapter();
            int id = Convert.ToInt32(Context.Request["id"]);
            DataTable DT = t_studentTA.GetStudentById(id);
            int classId = Convert.ToInt32(ddlClass.SelectedValue);
            if (Context.Request["id"] != null)
            {
                string headimage;
                if (upLoadImage() != "")
                {
                    headimage = upLoadImage();
                    try
                    {
                        DeleteDiskFile(txt_headImage.Text);
                    }//修改之后上新图片到服务器，删除旧图片 
                    catch { }
                }
                else {
                    headimage = txt_headImage.Text;
                }
                t_studentTA.UpdateStudent(txt_name.Text, txt_sno.Text, txt_sex.Text, txt_birth.Text, txt_nation.Text, txt_political.Text, headimage, classId, txt_idNum.Text, id);
                 Response.Redirect("StudentList.aspx");
            }
            else
            {
                string headimage = upLoadImage();
                t_studentTA.InsertStudent(txt_name.Text, txt_sno.Text, txt_sex.Text, txt_birth.Text, txt_nation.Text, txt_political.Text, headimage, classId, txt_idNum.Text, FormsAuthentication.HashPasswordForStoringInConfigFile("123456", "MD5"));
                 Response.Redirect("StudentList.aspx");
            }
        }

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