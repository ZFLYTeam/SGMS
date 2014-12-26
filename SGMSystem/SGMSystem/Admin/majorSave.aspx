﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="majorSave.aspx.cs" Inherits="SGMSystem.majorSave" %>
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
                    学院号： 
                </td>
                <td>
                    <asp:TextBox ID="txtAcademyId" runat="server"></asp:TextBox>
                </td>
            </tr>         
            <tr>
                <td align="right">
                </td>
                <td>
                    <asp:Button ID="btnMajorSave" class="btn btn-success" style="width: 66%" 
                        runat="server" Text="确定" onclick="btnMajorSave_Click" />
                </td>
            </tr>
            <tr>
                <td align="right">
                </td>
                <td>
                     <input id="btnReturn" class="btn btn-success" style="width: 66%"  onclick="javascript:window.location.href='majorList.aspx'" type="button" value="返回" />  
                </td>
            </tr>
        </table>
    </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
