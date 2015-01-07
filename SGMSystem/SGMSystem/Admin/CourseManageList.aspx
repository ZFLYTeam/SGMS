<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CourseManageList.aspx.cs" Inherits="SGMSystem.Admin.CourseManageList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div class="span10" align="right">   
     <div align="right" style="padding-top: 25px">
        <asp:Button ID="btnCourseManageAdd" class="btn btn-sm btn-primary" 
             runat="server" Text="添加" onclick="btnCourseManageAdd_Click"  />
    </div>
   <div style="padding-top: 25px">

<asp:Repeater ID="listCourseManage" runat="server" OnItemCommand="listCourseManage_ItemCommand">
            <HeaderTemplate>
                <div class="data_content">
                    <table class="table table-bordered table-hover" style="table-layout: fixed;">
                        <tr>
                            <th>
                                课程
                            </th>
                            <th style="width:6%">
                                学分
                            </th>
                            <th  style="width:6%">
                                学时
                            </th>
                            <th>
                                学期
                            </th>
                            <th>
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
                        <%#Eval("credit")%>
                    </td>
                    <td>
                        <%#Eval("creditHours")%>
                    </td>
                    <td>
                        <%#Eval("termName")%>
                    </td>
                    <td>
                        <asp:Button ID="btnDelete" class="btn btn-mini  btn-danger" CommandArgument='<%#Eval("id")%>'
                            CommandName="delete" runat="server" Text="删除" />
                        <asp:Button ID="btnStudentModify" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>'
                            CommandName="modify" runat="server" Text="修改" />  
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table> </div>
            </FooterTemplate>
        </asp:Repeater>
        </div>
   </div>
   </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
