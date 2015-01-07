<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Stu.Master" AutoEventWireup="true" CodeBehind="NewsDetails.aspx.cs" Inherits="SGMSystem.Student.NewsDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<table width="100%">
    <tr >
    <td align="center" colspan="3" style="width:100%;valign:top;">
    <h1>
        <asp:Label ID="lblNewsTitle" runat="server"  align="center"></asp:Label>
    </h1>
    </td>
    </tr>
    <tr>
    <td align="right" colspan="2" style="width:100%;valign:top;">
    <h4>
        <asp:Label ID="lblNewsRepTime" runat="server"></asp:Label>
    </h4>
    </td>
    </tr>
    <tr>
    <td style="width:60%;valign:top;">
        <p>
        <asp:Label ID="lblNewsBody" runat="server"></asp:Label></br>
        </p>
    </td>
    </tr>
    </table>    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
