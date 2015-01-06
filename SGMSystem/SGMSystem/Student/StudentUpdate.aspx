<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Stu.Master" AutoEventWireup="true" CodeBehind="StudentUpdate.aspx.cs" Inherits="SGMSystem.StudentUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

<div >
<table>
    <tr >
        <td width="100%" colspan="4" align="center">
            <h2 >修改密码</h2>  
        </td>
    </tr>
    <tr>
        <td width="15%">
        </td>
        <td width="5%" align="center" >
            原密码:
        </td>
        <td width="10%" align="left">
            <asp:TextBox ID="txtOldPwd" runat="server" EnableTheming="True" 
                TextMode="Password"></asp:TextBox>
        </td>
        <td width="10%">
         </td>
    </tr>
    <tr>
        <td width="15%">
        </td>
        <td width="5%" align="center" >
            新密码:
        </td>
        <td width="10%" align="left">
            <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td width="10%">
            <asp:Label ID="lblPrompt" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td width="15%">
        </td>
        <td width="5%" align="center" >
            确认密码:
        </td>
        <td width="10%" align="left">
            <asp:TextBox ID="txtReNewPwd" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td width="10%">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="15%">
        </td>
        <td width="10%" align="center">
            <asp:Button ID="btnOk" class="btn btn-primary span2" runat="server" Text="确认" 
                onclick="btnOk_Click" />
        </td>
        <td width="10%" align="center">
            <asp:Button ID="btnBack" class="btn btn-success span2" runat="server" Text="返回" />
        </td>
    </tr>
</table>
</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
