<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AcademyList.aspx.cs" Inherits="SGMSystem.AcademyList" %>
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
        <asp:Button ID="btnAcademyAdd" class="btn btn-sm btn-primary" runat="server" 
            Text="添加" onclick="btnAcademyAdd_Click" />
    </div>
        <div style="padding-top:25px">
            <asp:Repeater ID="listAcademy" runat="server" 
                onitemcommand="listAcademy_ItemCommand" >
                <HeaderTemplate> 
                    <div class="data_content">
                        <table class="table table-bordered table-hover" style="table-layout:fixed;text-align:center;">
                            <tr>               
                                <th width="25%">
                                    学院
                                </th>
                                <th width="25%">
                                    操作
                                </th>
                            </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <%#Eval("academyName")%>
                        </td>
                        <td>
                            <asp:Button ID="btnAcademyDelete" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="delete" runat="server" Text="删除" />
                            <asp:Button ID="btnAcademyModify" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="modify" runat="server" Text="修改" />
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
