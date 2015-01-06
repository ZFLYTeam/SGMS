<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Stu.Master" AutoEventWireup="true" CodeBehind="StuCourseChoose.aspx.cs" Inherits="SGMSystem.Student.StuCourseChoose" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div style="padding-top:25px;text-align:right;">
        <asp:Button ID="btnStudentCourseChooseAdd" runat="server" Text="保存" class="btn btn-mini  btn-info" onclick="btnStudentCourseChooseAdd_Click"  />
    </div>
<div style="padding-top:25px">
    <asp:Repeater  ID="listStudentCourseChoose" runat="server">
    <HeaderTemplate>
                <div class="data_content">
                    <table class="table table-bordered table-hover" style="table-layout: fixed;">
                        <tr>
                            <th>
                                课程名
                            </th>
                             <th>
                                授课教师
                            </th>
                            <th>
                                学时
                            </th>
                            <th >
                                学分
                            </th>
                            <th>
                                学院名
                            </th>
                              <th>
                                学期名
                            </th>
                            <th >
                                选择
                            </th>
                        </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%#Eval("courseName")%>
                    </td>
                    <td>
                        <%#Eval("teacherName")%>
                    </td>
                    <td>
                        <%#Eval("creditHours")%>
                    </td>
                    <td>
                        <%#Eval("credit")%>
                    </td>
                    <td>
                        <%#Eval("academyName")%>
                    </td>
                      <td>
                        <%#Eval("termName")%>
                    </td>
                    <td>
                    <asp:CheckBox ID="CheckBoxStudentCourseManage" runat="server" value='<%#Eval("id") %>'/>
                    </td>
                </tr>
            </ItemTemplate> 
            <FooterTemplate>
                </table> </div>
            </FooterTemplate>
    </asp:Repeater>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
