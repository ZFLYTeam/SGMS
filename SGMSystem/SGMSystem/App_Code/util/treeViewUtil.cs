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
    public class treeViewUtil
    {
        t_academyTableAdapter t_academyTa = new t_academyTableAdapter();
        t_majorTableAdapter t_majorTa = new t_majorTableAdapter();
        t_classTableAdapter t_classTa = new t_classTableAdapter();

        public void getTreeView(TreeView menuTree)
        {
            Bind_Tv(menuTree,getDatatTable(), menuTree.Nodes, null, "id", "parent_id", "name", "url");
        }

        private DataTable getDatatTable()
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add(new DataColumn("id", typeof(Guid)));//id列 类型guid
            dt.Columns.Add(new DataColumn("parent_id", typeof(Guid)));//父id列 类型guid
            dt.Columns.Add(new DataColumn("name", typeof(string)));//名称列 类型string
            dt.Columns.Add(new DataColumn("url", typeof(string)));//名称列 类型string
            //构造 学校 根节点
            dr = dt.NewRow();
            var node0 = dr[0] = Guid.NewGuid();
            dr[1] = DBNull.Value;
            dr[2] = "湖北大学";
            dr[3] = "academyList.aspx";//该节点的url
            dt.Rows.Add(dr);
            //构造 学院 节点
            List<string> academy = new List<string>();
            List<string> academyId = new List<string>();
            //获取学院的名字
            DataTable dtAcademy = t_academyTa.GetData();
            for (int i = 0; i < dtAcademy.Rows.Count; i++)
            {
                academy.Add(dtAcademy.Rows[i]["academyName"].ToString());
                academyId.Add(dtAcademy.Rows[i]["id"].ToString());
                dr = dt.NewRow();
                var node1 = dr[0] = Guid.NewGuid();//学院根节点
                dr[1] = node0;//（学院节点）属于学校根节点
                dr[2] = academy[i];
                dr[3] = "majorList.aspx?academyId=" + academyId[i];//该节点的url
                dt.Rows.Add(dr);
                //构造 专业 节点
                List<string> major = new List<string>();
                List<string> majorId = new List<string>();
                //获取专业的名称
                DataTable dtMajor = t_majorTa.GetDataacAdemyId(Convert.ToInt32(academyId[i]));
                for (int j = 0; j < dtMajor.Rows.Count; j++)
                {
                    major.Add(dtMajor.Rows[j]["majorName"].ToString());
                    majorId.Add(dtMajor.Rows[j]["id"].ToString());
                    dr = dt.NewRow();
                    var node2 = dr[0] = Guid.NewGuid();//专业根节点
                    dr[1] = node1;//（专业节点）属于学院根节点
                    dr[2] = major[j];
                    dr[3] = "classList.aspx?majorId=" + majorId[j];//该节点的url
                    dt.Rows.Add(dr);
                    //构造 班级 节点
                    List<string> classs = new List<string>();
                    List<string> classId = new List<string>();
                    //获取班级的名称
                    DataTable dtClass = t_classTa.GetDataByMajorId(Convert.ToInt32(majorId[j]));
                    for (int k = 0; k < dtClass.Rows.Count; k++)
                    {
                        classId.Add(dtClass.Rows[k]["id"].ToString());
                        //string 年级 = dtClass.Rows[k]["grade"].ToString() + "级";
                        //string 班 = dtClass.Rows[k]["classNum"] + "班";
                        // DataTable dt1 = t_majorTa.GetMajorById(Convert.ToInt32(dtClass.Rows[c]["majorId"]));
                        string classname = dtClass.Rows[k]["className"].ToString();
                        classs.Add(classname);
                        dr = dt.NewRow();
                        dr[0] = Guid.NewGuid();//
                        dr[1] = node2;//（班级节点）属于学院根节点
                        dr[2] = classs[k];
                        dr[3] = "studentList.aspx?classId=" + classId[k];//该节点的url
                        dt.Rows.Add(dr);
                    }
                }
            }
            return dt;
        }

        #region 绑定TreeView
        /// <summary>
        /// 绑定TreeView（利用TreeNode）
        /// </summary>
        /// <param name="p_Node">TreeNode（TreeView的一个节点）</param>
        /// <param name="pid_val">父id的值</param>
        /// <param name="id">数据库 id 字段名</param>
        /// <param name="pid">数据库 父id 字段名</param>
        /// <param name="text">数据库 文本 字段值</param>
        protected void Bind_Tv(TreeView menuTree,DataTable dt, TreeNode p_Node, string pid_val, string id, string pid, string text, string url)
        {
            DataView dv = new DataView(dt);//将DataTable存到DataView中，以便于筛选数据
            TreeNode tn;//建立TreeView的节点（TreeNode），以便将取出的数据添加到节点中
            //以下为三元运算符，如果父id为空，则为构建“父id字段 is null”的查询条件，否则构建“父id字段=父id字段值”的查询条件
            string filter = string.IsNullOrEmpty(pid_val) ? pid + " is null" : string.Format(pid + "='{0}'", pid_val);
            dv.RowFilter = filter;//利用DataView将数据进行筛选，选出相同 父id值 的数据
            foreach (DataRowView row in dv)
            {
                tn = new TreeNode();//建立一个新节点（学名叫：一个实例）
                if (p_Node == null)//如果为根节点
                {
                    tn.NavigateUrl = url;
                    tn.Value = row[id].ToString();//节点的Value值，一般为数据库的id值
                    tn.Text = row[text].ToString();//节点的Text，节点的文本显示
                    menuTree.Nodes.Add(tn);//将该节点加入到TreeView中
                    Bind_Tv(menuTree,dt, tn, tn.Value, id, pid, text, url);//递归（反复调用这个方法，直到把数据取完为止）
                }
                else//如果不是根节点
                {
                    tn.NavigateUrl = url;
                    tn.Value = row[id].ToString();//节点Value值
                    tn.Text = row[text].ToString();//节点Text值
                    p_Node.ChildNodes.Add(tn);//该节点加入到上级节点中
                    Bind_Tv(menuTree,dt, tn, tn.Value, id, pid, text, url);//递归
                }
            }
        }

        /// <summary>
        /// 绑定TreeView（利用TreeNodeCollection）
        /// </summary>
        /// <param name="tnc">TreeNodeCollection（TreeView的节点集合）</param>
        /// <param name="pid_val">父id的值</param>
        /// <param name="id">数据库 id 字段名</param>
        /// <param name="pid">数据库 父id 字段名</param>
        /// <param name="text">数据库 文本 字段值</param>
        private void Bind_Tv(TreeView menuTree,DataTable dt, TreeNodeCollection tnc, string pid_val, string id, string pid, string text, string url)
        {
            DataView dv = new DataView(dt);//将DataTable存到DataView中，以便于筛选数据
            TreeNode tn;//建立TreeView的节点（TreeNode），以便将取出的数据添加到节点中
            //以下为三元运算符，如果父id为空，则为构建“父id字段 is null”的查询条件，否则构建“父id字段=父id字段值”的查询条件
            string filter = string.IsNullOrEmpty(pid_val) ? pid + " is null" : string.Format(pid + "='{0}'", pid_val);
            dv.RowFilter = filter;//利用DataView将数据进行筛选，选出相同 父id值 的数据
            foreach (DataRowView drv in dv)
            {
                tn = new TreeNode();//建立一个新节点（学名叫：一个实例）
                tn.NavigateUrl = drv[url].ToString();
                tn.Value = drv[id].ToString();//节点的Value值，一般为数据库的id值
                tn.Text = drv[text].ToString();//节点的Text，节点的文本显示
                tnc.Add(tn);//将该节点加入到TreeNodeCollection（节点集合）中
                Bind_Tv(menuTree,dt, tn.ChildNodes, tn.Value, id, pid, text, url);//递归（反复调用这个方法，直到把数据取完为止）
            }
        }
        #endregion
    }
}