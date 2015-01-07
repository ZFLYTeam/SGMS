<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CourseManageSave.aspx.cs" Inherits="SGMSystem.Admin.CourseManageSave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<table align="center">
                <tr>
                   <td>
                    课程：
                </td>
                <td>
                    <asp:DropDownList ID="ddlCourse" class="selectpicker" data-style="btn-info" runat="server" DataSourceID="SqlForDdlCourse" 
                        DataTextField='courseName' DataValueField="id">
                    </asp:DropDownList><asp:SqlDataSource ID="SqlForDdlCourse" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_SGMSConnectionString %>" 
                        SelectCommand="SELECT * FROM [t_course]">
                    </asp:SqlDataSource>
                </td>    
                </tr>
              <tr>
                   <td>
                    学期编号：
                </td>
                <td>
                    <asp:DropDownList ID="ddlTerm" class="selectpicker" data-style="btn-info" runat="server" DataSourceID="SqlForDdlTerm" 
                        DataTextField='termName' DataValueField="id">
                    </asp:DropDownList><asp:SqlDataSource ID="SqlForDdlTerm" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_SGMSConnectionString %>" 
                        SelectCommand="SELECT * FROM [t_term] where isNow='isNow'">
                    </asp:SqlDataSource>
                </td>    
                </tr>
                <td align="center">                              
                    学分： 
                </td>
                <td>
                    <asp:TextBox ID="txtCredit" runat="server"></asp:TextBox>
                </td>
            </tr>
              <tr>
                <td align="center">                              
                    学时： 
                </td>
                <td>
                    <asp:TextBox ID="txtCreditHours" runat="server"></asp:TextBox>
                </td>
            </tr>
           
               <tr>
                <td align="right">
                </td>
                <td>
                    <asp:Button ID="btnCourseManageSave" class="btn btn-success" style="width: 48%" 
                        runat="server" Text="确定" onclick="btnCourseManageSave_Click"  />
                     <input id="btnReturn" class="btn btn-success" style="width: 48%"  onclick="javascript:window.location.href='CourseManageList.aspx'" type="button" value="返回" />  
                </td>
            </tr>
            </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
