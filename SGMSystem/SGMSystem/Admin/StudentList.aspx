<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="SGMSystem.StudentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div class="row">
<div class="span2">
    <asp:TreeView ID="menuTree" runat="server">
    </asp:TreeView>
</div>
<div class="span10" align="right">   
     <div align="right" style="padding-top: 25px">
        <asp:Button ID="btnStudentAdd" class="btn btn-sm btn-primary" runat="server" Text="添加"
            OnClick="btnStudentAdd_Click" />
    </div>
   <div style="padding-top: 25px">
<asp:Repeater ID="listStudent" runat="server" OnItemCommand="listStudent_ItemCommand">
            <HeaderTemplate>
                <div class="data_content">
                    <table class="table table-bordered table-hover" style="table-layout: fixed;">
                        <tr>
                            <th width="7%">
                                姓名
                            </th>
                            <th>
                                学号
                            </th>
                            <th width="7%">
                                性别
                            </th>
                            <th width=10%">
                                民族
                            </th>
                            <th>
                               操作
                            </th>
                        </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%#Eval("name")%>
                    </td>
                    <td>
                        <%#Eval("sno")%>
                    </td>
                    <td>
                        <%#Eval("sex")%>
                    </td>
                    <td>
                        <%#Eval("nation")%>
                    </td>
                    <td>
                        <asp:Button ID="btnDelete" class="btn btn-mini  btn-danger" CommandArgument='<%#Eval("id")%>'
                            CommandName="delete" runat="server" Text="删除" />
                        <asp:Button ID="btnStudentModify" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>'
                            CommandName="modify" runat="server" Text="修改" />
                        <asp:Button ID="btnStudentDetails" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>'
                            CommandName="details" runat="server" Text="学生详情" />
                        <asp:Button ID="btnResetPsw" class="btn btn-mini  btn-danger" CommandArgument='<%#Eval("id")%>'
                            CommandName="reset" runat="server" Text="重置密码" />
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
