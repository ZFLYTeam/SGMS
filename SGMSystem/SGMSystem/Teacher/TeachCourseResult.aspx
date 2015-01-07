<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Tech.Master" AutoEventWireup="true" CodeBehind="TeachCourseResult.aspx.cs" Inherits="SGMSystem.Teacher.TeachCourseResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

<div style="padding-top:25px;text-align:right;">       
    <asp:Button ID="btnTeacherCourseChooseReturn" runat="server" Text="返回" class="btn btn-mini  btn-info"
           CommandName="delete" onclick="btnTeachCourseChooseReturn_Click" /></div>
   <div style="padding-top:25px">
    <asp:Repeater  ID="listTeacherCourseResult" runat="server" onitemcommand="listTeacherCourseResult_ItemCommand" >
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
                        <%#Eval("creditHours")%>
                    </td>
                    <td>
                        <%#Eval("credit")%>
                    </td>
                    <td>
                        <%#Eval("termName")%>
                    </td>
                    <td>
                    <asp:Button ID="btnTeachCourseResultDelete" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="delete" runat="server" Text="退课" />
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
