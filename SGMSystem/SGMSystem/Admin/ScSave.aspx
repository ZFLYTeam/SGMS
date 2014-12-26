<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ScSave.aspx.cs" Inherits="SGMSystem.ScSave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div>
        <table align="center">
            <tr>
                <td width="10%" align="right">
                    学号：
                </td>
                <td width="30%">
                    <asp:TextBox ID="txtStuId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="10%" align="right">
                    课程安排号：
                </td>
                <td>
                    <asp:TextBox ID="txtCmId" runat="server"></asp:TextBox>
                </td>
             </tr> 
             <tr>
                <td align="right">                              
                    平时分数： 
                </td>
                <td>
                    <asp:TextBox ID="txtUsualScore" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    期末分数：
                </td>
                <td>
                <asp:TextBox ID="txtTestScore" runat="server"></asp:TextBox>
                </td>
             </tr>            
            <tr>
                <td align="right">
                </td>
                <td>
                    <asp:Button ID="btnScSave" class="btn btn-success" style="width: 66%" 
                        runat="server" Text="确定" onclick="btnScSave_Click" />
                </td>
            </tr>
            <tr>
                <td align="right">
                </td>
                <td>
                     <input id="btnReturn" class="btn btn-success" style="width: 66%"  onclick="javascript:window.location.href='ScList.aspx'" type="button" value="返回" />  
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
