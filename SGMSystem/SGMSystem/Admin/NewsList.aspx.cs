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
    public partial class NewsList : System.Web.UI.Page
    {
        t_newsTableAdapter t_newsTableAdapte = new t_newsTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = t_newsTableAdapte.GetData();
            if (!IsPostBack)
            {
                //绑定
                listNews.DataSource = dt;
                listNews.DataBind();   
            }                                                                    
        }

        protected void listNews_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id=Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "modify")
            {
                Response.Redirect("NewsSave.aspx?id="+id);
            }
            else if (e.CommandName == "delete")
            {
                Response.Write("<script>confirm('你确认要删除该条新闻吗？');</script>");
                t_newsTableAdapte.DeleteNews(id);
                Response.Redirect("NewsList.aspx");
            }
            else if (e.CommandName == "details")
            {
                Response.Redirect("NewsDetails.aspx?id=" + id);
            }
        }
    }
}
