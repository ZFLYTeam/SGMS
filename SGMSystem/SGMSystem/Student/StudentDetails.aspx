<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Stu.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="SGMSystem.StudentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 22px;
        }
        .style2
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

<div>
    <table align="center" width="50%">
        <tr>
            <td width="20%" align="left" class="style2">
                姓名
            </td>
            <td width="30%" class="style2">
                <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
            </td>
            <td width="50%" rowspan="6" align="center">
                <asp:Image ID="headImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td width="20%" align="left">
                学号
            </td>
            <td width="30%">
                <asp:Label ID="lblSno" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="20%" align="left" class="style1">
                性别
            </td>
            <td width="30%" class="style1">
                <asp:Label ID="lblSex" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="20%" align="left">
                民族
            </td>
            <td width="30%">
                <asp:Label ID="lblNation" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="20%" align="left">
                出生日期
            </td>
            <td width="30%">
                <asp:Label ID="lblBirth" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="20%" align="left">
                政治面貌
            </td>
            <td width="30%">
                <asp:Label ID="lblPolitical" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="20%" align="left">
                身份证号
            </td>
            <td width="80%" colspan="2">
                <asp:Label ID="lblIdNum" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="20%" align="left">
                院系
            </td>
            <td width="80%" colspan="2">
                <asp:Label ID="lblAcademy" runat="server" Text=""></asp:Label>
            </td>  
        </tr>
        <tr>
            <td width="20%" align="left">
                专业
            </td>
            <td width="80%" colspan="2">
                <asp:Label ID="lblMajor" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td width="20%" align="left">
                班级
            </td>
            <td width="80%" colspan="2">
                <asp:Label ID="lblClass" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
