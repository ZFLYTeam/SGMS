<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CourseList.aspx.cs" Inherits="SGMSystem.CourseList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div class="row">
<div class="span2">
    <asp:TreeView ID="menuTree" runat="server">
    </asp:TreeView>
</div>
<div class="span10">
 <div align="right" style="padding-top:25px">
        <asp:Button ID="courseAddBtn" class="btn btn-sm btn-primary" runat="server" 
            Text="添加" onclick="btnCourseAdd_Click" />
    </div>
        <div style="padding-top:25px">
            <asp:Repeater ID="listCourse" runat="server" 
                onitemcommand="listCourse_ItemCommand" >
                <HeaderTemplate> 
                    <div class="data_content">
                        <table class="table table-bordered table-hover" style="table-layout:fixed;align:center;">
                            <tr>               
                                <th width="25%">
                                    学院编号
                                </th>
                                <th  width="25%">
                                   课程名称
                                </th>
                                <th width="25%">
                                    课程属性
                                </th>
                                <th width="25%">
                                    操作
                                </th>
                            </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="autocut">
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
