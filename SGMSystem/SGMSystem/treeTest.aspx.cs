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
    public partial class treeTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                //Bind_Tv(Test_Table(), menuTree.Nodes, null, "id", "parent_id", "name","url");
                treeViewUtil t = new treeViewUtil();
                t.getTreeView(menuTree);
            }
        }
    }
}