using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SGMSystem
{
    /// <summary>
    /// 教师对象实体类
    /// </summary>
    public class Teacher
    {
        public int id;              //id
        public String techNum;      //职工号
        public String TeacherName;  //老师名字
        public String sex;          //性别
        public String birth;        //出生年月
        public String title;        //职称
        public String headImage;    //头像地址
        public String password;     //密码
    }
}