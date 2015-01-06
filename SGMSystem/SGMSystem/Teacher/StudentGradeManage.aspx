<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Tech.Master" AutoEventWireup="true" CodeBehind="StudentGradeManage.aspx.cs" Inherits="SGMSystem.Teacher.StudentGradeManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div class="row">
<%--<div class="span2">
    <asp:TreeView ID="menuTree" runat="server">
    </asp:TreeView>
</div>--%>
<div class="span10">
 <div align="right" style="padding-top:25px; height: 2px;">
        <%--<asp:Button ID="courseAddBtn" class="btn btn-sm btn-primary" runat="server" 
            Text="添加" onclick="btnCourseAdd_Click" />--%>
    </div>
        <div style="padding-top:25px; width: 863px; margin-top: 14px;">
            <asp:Repeater ID="listStudentGrade" runat="server" 
                onitemcommand="listStudentGrade_ItemCommand" >
                <HeaderTemplate> 
                    <div class="data_content">
                        <table class="table table-bordered table-hover" style="table-layout:fixed;align:center;">
                            <tr>               
                                <th width="20%">
                                    学号
                                </th>
                                <th  width="20%">
                                   课程编号
                                </th>
                                <th width="20%">
                                    平时分
                                </th>
                                 <th width="20%">
                                    测试分
                                </th>
                                <th width="20%">
                                    操作
                                </th>
                            </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="autocut">
                            <%#Eval("stuId")%>
                        </td>
                        <td>
                            <%#Eval("cmId")%>
                        </td>
                         <td>
                            <%#Eval("usualScore")%>
                        </td>
                        <td>
                            <%#Eval("testScore")%>
                        </td>
                        <td>
                           <%-- <asp:Button ID="btnStudentGradeDelete" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="delete" runat="server" Text="删除" />--%>
                            <asp:Button ID="btnStudentGradeModify" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="modify" runat="server" Text="修改" />
                           <%-- <asp:Button ID="btnCourseDetails" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="details" runat="server" Text="详情" />--%>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
        </div> 
        </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
