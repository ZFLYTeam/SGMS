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
    public partial class NewsDetails : System.Web.UI.Page
    {
        t_newsTableAdapter t_newsTA = new t_newsTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Context.Request["id"]);
            DataTable dt = t_newsTA.GetNewsById(id);
            lblNewsTitle.Text = dt.Rows[0]["newsTitle"].ToString();
            lblNewsRepTime.Text = dt.Rows[0]["newsRepTime"].ToString();
            lblNewsBody.Text = dt.Rows[0]["newsBody"].ToString();
        }
    }
}