<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Tech.Master" AutoEventWireup="true" CodeBehind="TeachUpdate.aspx.cs" Inherits="SGMSystem.Teacher.TeachUpdate" %>
<%--<%@ Register Assembly="Twitter.Web.Controls" Namespace="Twitter.Web.Controls" TagPrefix="cc1" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div>
        <table align="center">
            <tr>
                <td align="left" class="style1">
                   旧密码：
                </td>
                <td class="style1">
                     &nbsp&nbsp<asp:TextBox ID="txtPassWord" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td align="left" class="style2">                              
                               <br />
                    新密码： 
                </td>
                <td>
                    &nbsp&nbsp<asp:TextBox ID="txtNewPassWord" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" class="style2">
                               <br />
                    确认新密码：
                </td>
                <td>
                   &nbsp&nbsp<asp:TextBox ID="txtSurePassWord" runat="server" Height="21px" 
                        TextMode="Password"></asp:TextBox>
                </td>
             </tr>   
             <tr>
             <td></td>
             <td align="left" class="style2">
                 <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
             </tr>         
            <tr>
                <td align="right" class="style2">
                </td>
                <td>
                    <asp:Button ID="btnTeachUpdate" class="btn btn-success" style="width: 100%" 
                        runat="server" Text="确定" onclick="btnTeachUpdate_Click" />
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                </td>
                <td>
                    <asp:Button ID="btnReset" class="btn btn-success" style="width: 100%" 
                        runat="server" Text="重置" onclick="btnReset_Click" />
                    <%-- <input id="btnReset" class="btn btn-success" style="width: 66%"  onclick="javascript:window.location.href='Defualt.aspx '" type="button" value="重置" />  --%>
                </td>
            </tr>
        </table>
    </div> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
