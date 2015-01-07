<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CourseList.aspx.cs" Inherits="SGMSystem.Admin.CourseList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
 <div style="padding-top:25px;text-align:right;">
        <asp:Button ID="btnCourseAdd" runat="server" Text="添加" class="btn btn-mini  btn-info"
           CommandName="delete" onclick="btnCourseAdd_Click" />
    </div>
        <div style="padding-top:25px">
    <asp:Repeater ID="listCourse" runat="server" onitemcommand="listCourse_ItemCommand" >
    <HeaderTemplate>
                <div class="data_content">
                    <table class="table table-bordered table-hover" style="table-layout: fixed;">
                        <tr>
                            <th>
                                学院号
                            </th>
                            <th>
                                课程名字
                            </th>
                            <th>
                                必修/选修
                            </th>
                        </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%#Eval("academyId")%>
                    </td>
                    <td>
                        <%#Eval("courseName")%>
                    </td>
                    <td>
                        <%#Eval("property")%>
                    </td>
                    <td>
                        <asp:Button ID="btnCourseDelete" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="delete" runat="server" Text="删除" />
                        <asp:Button ID="btnCourseModify" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="modify" runat="server" Text="修改" /> 
                        <asp:Button ID="btnCourseDetails" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="details" runat="server" Text="详情" />                     
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
