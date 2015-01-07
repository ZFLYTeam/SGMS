<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Stu.Master" AutoEventWireup="true" CodeBehind="StuCourseResult.aspx.cs" Inherits="SGMSystem.Student.StuCourseResult1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div style="padding-top:25px;text-align:right;">       
    <asp:Button ID="btnStudentCourseChooseReturn" runat="server" Text="返回" class="btn btn-mini  btn-info"
           CommandName="delete" onclick="btnStudentCourseChooseReturn_Click"  /></div>
   <div style="padding-top:25px">
    <asp:Repeater  ID="listStudentCourseResult" runat="server" onitemcommand="listStudentCourseResult_ItemCommand">
    <HeaderTemplate>
                <div class="data_content">
                    <table class="table table-bordered table-hover" style="table-layout: fixed;">
                        <tr>
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
                            <th >
                                操作
                            </th>
                        </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
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
                    <asp:Button ID="btnStudentCourseResultDelete" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="delete" runat="server" Text="退课" />
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
