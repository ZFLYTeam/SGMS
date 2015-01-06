<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="majorSave.aspx.cs" Inherits="SGMSystem.majorSave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div class="row">
<div class="span2">
    <asp:TreeView ID="menuTree" runat="server">
    </asp:TreeView>
</div>
<div class="span10">
<div>
        <table align="center">
            <tr>
                <td width="10%" align="right">
                    专业号：
                </td>
                <td width="30%">
                    <asp:TextBox ID="txtMajorNum" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="10%" align="right">
                    专业名：
                </td>
                <td>
                    <asp:TextBox ID="txtMajorName" runat="server"></asp:TextBox>
                </td>
             </tr> 
             <tr>
                <td align="right">                              
                    学院名： 
                </td>
                <td>
                    <asp:DropDownList ID="ddlAcademyName" runat="server" 
                        DataSourceID="SqlforAcademyName" DataTextField="academyName" 
                        DataValueField="id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlforAcademyName" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_SGMSConnectionString %>" 
                        SelectCommand="SELECT [id], [academyName] FROM [t_academy]">
                    </asp:SqlDataSource>
                </td>
            </tr>         
            <tr>
                <td align="right">
                </td>
                <td>
                    <asp:Button ID="btnMajorSave" class="btn btn-success" Width="220px" runat="server" Text="确定" onclick="btnMajorSave_Click" />
                </td>
            </tr>
        </table>
    </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
