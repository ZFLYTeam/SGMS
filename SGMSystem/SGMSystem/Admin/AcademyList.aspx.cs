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
    public partial class AcademyList : System.Web.UI.Page
    {
        /// <summary>
        /// 使用adapter之前要new一个对象
        /// </summary>
        t_academyTableAdapter t_academyTa = new t_academyTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                treeViewUtil t = new treeViewUtil();
                t.getTreeView(menuTree);
                DataTable dt = t_academyTa.GetData();
                listAcademy.DataSource = dt;
                listAcademy.DataBind();
            }
        }

        /// <summary>
        /// 添加学院
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnAcademyAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AcademySave.aspx");
        }

        /// <summary>
        /// repeater的触发事件
        /// </summary>
        /// <param name="source"></param>
        /// <param name="e"></param>
        protected void listAcademy_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            //获取该条数据ID
            int id = Convert.ToInt32(e.CommandArgument);
            ///点击修改按钮
            if (e.CommandName == "modify") {
                Response.Redirect("AcademySave.aspx?id="+id);
            }
            ///点击删除按钮
            else if (e.CommandName == "delete") {
                t_academyTa.DeleteAcademy(id);
                Response.Redirect("AcademyList.aspx");
            }
        }
    }
}