<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="studentDetails.aspx.cs" Inherits="SGMSystem.studentDetails" %>
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
                    姓名：
                </td>
                <td width="30%">
                    <asp:TextBox ID="txt_name" required runat="server"></asp:TextBox>
                </td>
                 <td width="10%" align="right">
                    学号：
                </td>
               <td width="10%" align="right">
                    <asp:TextBox ID="txt_sno" required runat="server"></asp:TextBox>
                </td>
                <td width="10%" align="right">
                    照片：
                </td>
                <td>
                    <asp:TextBox ID="txt_headImage" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td width="10%" align="right">
                    性别：
                </td>
                <td>
                    <asp:TextBox ID="txt_sex" runat="server"></asp:TextBox>
                </td>
                 <td width="20%" align="right">
                    出生日期：
                </td>
                <td>
                    <asp:TextBox ID="txt_birth" runat="server"></asp:TextBox>
                </td>
                 <td align="right">
                    班级：
                </td>
                <td>
                    <asp:TextBox ID="txt_class" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td align="right">
                    民族：
                </td>
                <td>
                <asp:TextBox ID="txt_nation" runat="server"></asp:TextBox>
                </td>

                  <td width="20%" align="right">
                    政治面貌：
                </td>
                <td>
                <asp:TextBox ID="txt_political" runat="server"></asp:TextBox>
                </td>

                  
               
            </tr>
            <tr>
                 <td width="20%" align="right">
                    身份证号码：
                </td>
                <td>
                <asp:TextBox ID="txt_idNum" runat="server"></asp:TextBox>
                </td>
             
            </tr>

           
        </table>
    </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
