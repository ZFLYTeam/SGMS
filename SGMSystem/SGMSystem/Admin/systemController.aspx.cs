using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SGMSystem.App_Code.DataSetTableAdapters;
using System.Data;
using SGMSystem.App_Code;
namespace SGMSystem.Admin
{
    public partial class systemController : System.Web.UI.Page
    {
        t_optionTableAdapter t_opTa = new t_optionTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                DataTable dt = t_opTa.GetData();
                int stuSys = (int)dt.Rows[0]["isStuSysOn"];
                int teacherSys = (int)dt.Rows[0]["isTeachSystemOn"];
                int stuCourseChoose = (int)dt.Rows[0]["isCourseChooseOn"];
                if (stuSys == 1) {
                    cbStudentSys.Checked = true;
                }
                if (teacherSys == 1) {
                    cbTeacherSys.Checked = true;
                }
                if (stuCourseChoose == 1) {
                    cbStudentSC.Checked = true;
                }
            }
        }

        protected void cbStudentSys_CheckedChanged(object sender, EventArgs e)
        {
            if (cbStudentSys.Checked)
            {
                t_opTa.setStusysOn();
            }
            else {
                t_opTa.setStusysOff();
            }
        }

        protected void cbStudentSC_CheckedChanged(object sender, EventArgs e)
        {
            if (cbStudentSC.Checked)
            {
                t_opTa.setStCourseChooseOn();
            }
            else
            {
                t_opTa.setStuCourseChooseOff();
            }
        }

        protected void cbTeacherSys_CheckedChanged(object sender, EventArgs e)
        {
            if (cbTeacherSys.Checked)
            {
                t_opTa.setTeacherSysOn();
            }
            else
            {
                t_opTa.setTeachSysOff();
            }
        }
    }
}