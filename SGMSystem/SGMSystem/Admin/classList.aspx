<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="classList.aspx.cs" Inherits="SGMSystem.classList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div class="row">
<div class="span2">
    <asp:TreeView ID="menuTree" runat="server">
    </asp:TreeView>
</div>
<div class="span10">
 <div style="padding-top:25px;text-align:right;">
        <asp:Button ID="btnClassAdd" runat="server" Text="添加" class="btn btn-mini  btn-info"
           CommandName="delete" onclick="btnClassAdd_Click" />
    </div>
        <div style="padding-top:25px">
    <asp:Repeater ID="listClass" runat="server" onitemcommand="listClass_ItemCommand" >
    <HeaderTemplate>
                <div class="data_content">
                    <table class="table table-bordered table-hover" style="table-layout: fixed;">
                        <tr>
                            <th>
                                专业号
                            </th>
                            <th>
                                班级名称
                            </th>
                             <th>
                                班级操作
                            </th>
                        </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%#Eval("majorId")%>
                    </td>
                    <td>
                        <%#Eval("className")%>
                    </td>
                    <td>
                        <asp:Button ID="btnClassDelete" class="btn btn-mini  btn-danger" CommandArgument='<%#Eval("id")%>' CommandName="delete" runat="server" Text="删除" />
                        <asp:Button ID="btnClassModify" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="modify" runat="server" Text="修改" />                      
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
