<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="teacherSave.aspx.cs" Inherits="SGMSystem.teacherSave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="../libs/datePicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div>
        <table align="center">
            <tr>
                <td width="10%" align="right">
                    教师号：
                </td>
                <td width="30%">
                    <asp:TextBox ID="txtTechNum" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="10%" align="right">
                    教师姓名：
                </td>
                <td>
                    <asp:TextBox ID="txtTeacherName" runat="server"></asp:TextBox>
                </td>
             </tr> 
             <tr>
                <td align="right">                              
                    性别： 
                </td>
                <td>
                    <asp:TextBox ID="txtSex" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    出生日期：
                </td>
                <td>                
                 <div class="controls input-append date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <asp:TextBox ID="txtBirth" size="16" ReadOnly runat="server"></asp:TextBox>
					<span class="add-on"><i class="icon-th"></i></span>
                </div>
                </td>
             </tr>
             <tr>
                <td align="right">
                    职称：
                </td>
                <td>
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                </td>
             </tr>
             <tr>
                <td align="right">
                    图像：
                </td>
                <td>
                    <asp:TextBox ID="txtHeahImage" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    密码：
                </td>
                <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
             </tr>
            <tr>
                <td align="right">
                </td>
                <td>
                    <asp:Button ID="btnTeacherSave" class="btn btn-success" style="width: 66%" 
                        runat="server" Text="确定" onclick="btnTeacherSave_Click" />
                </td>
            </tr>
            <tr>
                <td align="right">
                </td>
                <td>
                     <input id="btnReturn" class="btn btn-success" style="width: 66%"  onclick="javascript:window.location.href='teacherList.aspx'" type="button" value="返回" />  
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
<script type="text/javascript" src="../libs/datePicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../libs/datePicker/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript">
    $('.form_date').datetimepicker({
        language: 'zh-CN',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
</script>
</asp:Content>
