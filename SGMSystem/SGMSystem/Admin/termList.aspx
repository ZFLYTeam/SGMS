<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="termList.aspx.cs" Inherits="SGMSystem.Admin.TermList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div style="padding-top:25px;text-align:right;">
        <asp:Button ID="btnTermAdd" runat="server" Text="添加" 
            class="btn btn-primary  btn-info" onclick="btnTermAdd_Click"
            />
    </div>
        <div style="padding-top:25px">
    <asp:Repeater ID="listTerm" runat="server" onitemcommand="listTerm_ItemCommand" >
    <HeaderTemplate>
                <div class="data_content">
                    <table class="table table-bordered table-hover" style="table-layout: fixed;">
                        <tr>
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
                        <%#Eval("termName")%>
                    </td>
                    <td>
                        <asp:Button ID="btnTermDelete" class="btn btn-mini btn-danger" CommandArgument='<%#Eval("id")%>' CommandName="delete" runat="server" Text="删除" />
                        <asp:Button ID="btnTermModify" class="btn btn-mini btn-info"   CommandArgument='<%#Eval("id")%>' CommandName="modify" runat="server" Text="修改" />
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
