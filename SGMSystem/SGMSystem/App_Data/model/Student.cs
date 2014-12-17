using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SGMSystem
{
    /// <summary>
    /// 作者:张嘉
    /// 学生对象实体类
    /// </summary>
    public class Student
    {
        public int id;              //id
        public String name;         //名字
        public String sno;          //学号
        public String sex;          //性别
        public String birth;        //出生年月
        public String nation;       //民族
        public String political;    //政治面貌
        public String headImage;    //头像地址
        public int classId;         //班级id
        public String idNum;        //身份证号
        public String password;     //登录密码
    }
}