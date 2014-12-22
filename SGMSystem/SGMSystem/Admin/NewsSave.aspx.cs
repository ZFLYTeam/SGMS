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
    public partial class NewsSave : System.Web.UI.Page
    {
        t_newsTableAdapter t_newsTA = new t_newsTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["id"]);
            if (!IsPostBack) {
                if (Context.Request["id"]!=null)
                {
                    DataTable dt = t_newsTA.GetNewsById(id);
                    txtNewsTitle.Text = dt.Rows[0]["newsTitle"].ToString();
                    txtNewsBody.Text = dt.Rows[0]["newsBody"].ToString();
                }
            }
        }

        protected void bt_newsAdd_Click(object sender, EventArgs e)
        {
            if (Context.Request["id"]!=null)
            {
                int id = Convert.ToInt32(Context.Request["id"]);
                String date = DateTime.Now.ToString("yyyy年MM月dd日 hh:mm:ss");
                DataTable dt = t_newsTA.GetNewsById(id);
                t_newsTA.UpdateNews(txtNewsTitle.Text, txtNewsBody.Text, dt.Rows[0]["newsRepTime"].ToString(), date, id);
                Response.Redirect("NewsList.aspx");
            }
            else
            {
                String date = DateTime.Now.ToString("yyyy年MM月dd日 hh:mm:ss");
                t_newsTA.InsertNews(txtNewsTitle.Text,txtNewsBody.Text,date);
                Response.Redirect("NewsList.aspx");
            }
        }


    }
}