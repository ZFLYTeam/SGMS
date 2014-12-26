<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="majorList.aspx.cs" Inherits="SGMSystem.majorList" %>
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
        <asp:Button ID="btnMajorAdd" runat="server" Text="添加" class="btn btn-mini  btn-info"
           CommandName="delete" onclick="btnMajorAdd_Click" />
    </div>
        <div style="padding-top:25px">
    <asp:Repeater ID="listMajor" runat="server" onitemcommand="listMajor_ItemCommand" >
    <HeaderTemplate>
                <div class="data_content">
                    <table class="table table-bordered table-hover" style="table-layout: fixed;">
                        <tr>
                            <th>
                                专业号
                            </th>
                            <th>
                                专业名
                            </th>
                            <th>
                                学院号
                            </th>
                            <th>
                                操作
                            </th>
                        </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%#Eval("majorNum")%>
                    </td>
                    <td>
                        <%#Eval("majorName")%>
                    </td>
                    <td>
                        <%#Eval("academyId")%>
                    </td>                
                    <td>
                        <asp:Button ID="btnMajorDelete" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="delete" runat="server" Text="删除" />
                        <asp:Button ID="btnMaorModify" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="modify" runat="server" Text="修改" />
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
