<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="teacherList.aspx.cs" Inherits="SGMSystem.teacherList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div style="padding-top:25px;text-align:right;">
        <asp:Button ID="btnTeacherAdd" runat="server" Text="添加" class="btn btn-mini  btn-info"
           CommandName="delete" onclick="btnTeacherAdd_Click" />
    </div>
        <div style="padding-top:25px">
    <asp:Repeater ID="listTeacher" runat="server" onitemcommand="listTeacher_ItemCommand" >
    <HeaderTemplate>
                <div class="data_content">
                    <table class="table table-bordered table-hover" style="table-layout: fixed;">
                        <tr>
                            <th>
                                教师号
                            </th>
                            <th>
                                教师姓名
                            </th>
                            <th style="width:15%">
                                性别
                            </th>
                            <th>
                                出生日期
                            </th style="width:15%">
                            <th >
                                职称
                            </th>
                            <th  style="width:30%">
                                操作
                            </th>
                        </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%#Eval("techNum")%>
                    </td>
                    <td>
                        <%#Eval("teacherName")%>
                    </td>
                    <td>
                        <%#Eval("sex")%>
                    </td>
                    <td>
                        <%#Eval("birth")%>
                    </td>
                    <td>
                        <%#Eval("title")%>
                    </td>
                    <td>
                        <asp:Button ID="btnTeacherDelete" class="btn btn-mini  btn-danger" CommandArgument='<%#Eval("id")%>' CommandName="delete" runat="server" Text="删除" />
                        <asp:Button ID="btnTeacherModify" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="modify" runat="server" Text="修改" /> 
                        <asp:Button ID="btnTeacherDetails" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="details" runat="server" Text="详情" />    
                        <asp:Button ID="btnResetPsw" class="btn btn-mini  btn-danger" CommandArgument='<%#Eval("id")%>' CommandName="reset" runat="server" Text="重置密码" />                  
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
