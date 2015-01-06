<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="classSave.aspx.cs" Inherits="SGMSystem.classSave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div class="row">
<div class="span2">
    <asp:TreeView ID="menuTree" runat="server">
    </asp:TreeView>
</div>
<div class="span10">
        <table align="center">
            <tr>
                <td width="10%" align="right">
                    专业名称：
                </td>
                <td width="30%">
                    <asp:DropDownList ID="ddlMajorName" runat="server" 
                        DataSourceID="SqlforMajorName" DataTextField="majorName" DataValueField="id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlforMajorName" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_SGMSConnectionString %>" 
                        SelectCommand="SELECT [majorName], [id] FROM [t_major]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td width="10%" align="right">
                    班级名称：
                </td>
                <td>
                    <asp:TextBox ID="txtClassName" runat="server"></asp:TextBox>
                </td>
             </tr> 
             <tr> 
                 <td align="right">
                </td>            
                <td>
                    <asp:Button ID="btnClassSave" class="btn btn-success" 
                        runat="server" Text="确定" onclick="btnClassSave_Click" Width="220px" />
                </td>
            </tr>
            <tr>
                <td align="right">
                </td>
            </tr>
        </table>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
