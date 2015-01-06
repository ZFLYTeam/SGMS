<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Tech.Master" AutoEventWireup="true" CodeBehind="TeachCourseChoose.aspx.cs" Inherits="SGMSystem.Teacher.TeachCourseChoose" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div style="padding-top:25px;text-align:right;">
        <asp:Button ID="btnTeacherCourseChooseAdd" runat="server" Text="保存" class="btn btn-mini  btn-info"
           CommandName="delete" onclick="btnTeachCourseChooseAdd_Click" />
    </div>
<div style="padding-top:25px">
    <asp:Repeater  ID="listTeacherCourseChoose" runat="server" >
    <HeaderTemplate>
                <div class="data_content">
                    <table class="table table-bordered table-hover" style="table-layout: fixed;">
                        <tr>
                          <th>
                                专业名
                            </th>
                            <th>
                                课程名
                            </th>
                            <th>
                                学时
                            </th>
                            <th >
                                学分
                            </th>
                              <th>
                                学期名
                            </th>
                               <th>
                                学院名
                            </th>
                            <th >
                                选择
                            </th>
                        </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%#Eval("majorName")%>
                    </td>
                    <td>
                        <%#Eval("courseName")%>
                    </td>
                    <td>
                        <%#Eval("creditHours")%>
                    </td>
                    <td>
                        <%#Eval("credit")%>
                    </td>
                    <td>
                        <%#Eval("termName")%>
                    </td>
                      <td>
                        <%#Eval("academyName")%>
                    </td>
                    <td>
                    <asp:CheckBox ID="CheckBoxTeachCourseManage" runat="server" value='<%#Eval("id") %>'/>
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
