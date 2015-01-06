<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="termSave.aspx.cs" Inherits="SGMSystem.Admin.termSave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div>
  <table align="center">
         <tr>
                <td align="center">                              
                    学期： 
                </td>
                <td>
                    <asp:TextBox ID="txtTerm" runat="server"></asp:TextBox>
                </td>
            </tr>
               <tr>
                <td align="right">
                </td>
                <td>
                    <asp:Button ID="btnTermSave" class="btn btn-success" style="width: 48%" 
                        runat="server" Text="确定" onclick="btnTermSave_Click"  />
                     <input id="btnReturn" class="btn btn-success" style="width: 48%"  onclick="javascript:window.location.href='termList.aspx'" type="button" value="返回" />  
                </td>
            </tr>
            </table>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
