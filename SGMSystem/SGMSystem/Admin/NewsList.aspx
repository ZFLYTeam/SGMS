<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="NewsList.aspx.cs" Inherits="SGMSystem.NewsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div align="right" style="padding-top:25px">
        <asp:Button ID="newsAddBtn" class="btn btn-sm btn-primary" runat="server" Text="添加" />
    </div>
        <div style="padding-top:25px">
            <asp:Repeater ID="listNews" runat="server" 
                onitemcommand="listNews_ItemCommand" >
                <HeaderTemplate> 
                    <div class="data_content">
                        <table class="table table-bordered table-hover" style="table-layout:fixed;align:center;">
                            <tr>               
                                <th width="25%">
                                    标题
                                </th>
                                <th  width="25%">
                                    发布时间
                                </th>
                                <th width="25%">
                                    修改时间
                                </th>
                                <th width="25%">
                                    操作
                                </th>
                            </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="autocut">
                            <%#Eval("newsTitle")%>
                        </td>
                        <td>
                            <%#Eval("newsRepTime")%>
                        </td>
                        <td>
                            <%#Eval("newsModifyTime")%>
                        </td>
                        <td>
                            <asp:Button ID="btnNewsDelete" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="delete" runat="server" Text="删除" />
                            <asp:Button ID="btnNewsModify" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="modify" runat="server" Text="修改" />
                            <asp:Button ID="btnNewsDetails" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="details" runat="server" Text="详情" />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
        </div>       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
