<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CourseManageList.aspx.cs" Inherits="SGMSystem.CourseManageList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div align="right" style="padding-top:25px">
        <asp:Button ID="courseManageAddBtn" class="btn btn-sm btn-primary" 
            runat="server" Text="添加" onclick="courseManageAddBtn_Click" />
    </div>
        <div style="padding-top:25px">
            <asp:Repeater ID="listCourseManage" runat="server" 
                onitemcommand="listCourseManage_ItemCommand" >
                <HeaderTemplate> 
                    <div class="data_content">
                        <table class="table table-bordered table-hover" style="table-layout:fixed;align:center;">
                            <tr>               
                                <th width="10%">
                                    专业名称
                                </th>
                                <th  width="10%">
                                    课程编码
                                </th>
                                <th width="10%">
                                    课程名称
                                </th>
                                <th width="10%">
                                    总学时
                                </th>
                                <th width="10%">
                                    学分
                                </th>
                                <th width="10%">
                                    开设学期
                                </th>
                                <th width="10%">
                                    开课院系
                                </th>
                                <th width="30%">
                                    操作
                                </th>
                            </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="autocut">
                            <%#Eval("majorName")%>
                        </td>
                        <td>
                            <%#Eval("id")%>
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
                            <asp:Button ID="btnCourseManageDelete" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="delete" runat="server" Text="删除" />
                            <asp:Button ID="btnCourseManageModify" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="modify" runat="server" Text="修改" />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:db_SGMSConnectionString %>" 
                SelectCommand="SELECT [majorName], [id], [courseName], [creditHours], [credit], [termName], [academyName] FROM [view_courseManage]">
            </asp:SqlDataSource>
        </div>       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
