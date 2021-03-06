﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="studentSave.aspx.cs" Inherits="SGMSystem.studentSave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="../libs/datePicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
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
                <td>
                    姓名：
                </td>
                <td>
                    <asp:TextBox ID="txt_name" required runat="server"></asp:TextBox>
                </td>
                 <td>
                    学号：
                </td>
               <td  >
                    <asp:TextBox ID="txt_sno" required runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td >
                    照片：
                </td>
                <td>
                     <asp:FileUpload ID="fldCover" runat="server" />
                    <asp:TextBox ID="txt_headImage" runat="server"  Visible="False"></asp:TextBox>
                </td>
                <td >
                    性别：
                </td>
                <td>
                    <asp:TextBox ID="txt_sex" runat="server"></asp:TextBox>
                </td>
                </tr>
                <tr>
                 <td>
                    出生：
                </td>
                <td >
                    <div class="controls input-append date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <asp:TextBox ID="txt_birth" runat="server"></asp:TextBox>
				    <span class="add-on"><i class="icon-th"></i></span>
                </div>
                </td>
                <td>
                    民族：
                </td>
                <td>
                <asp:TextBox ID="txt_nation" runat="server"></asp:TextBox>
                </td>
               </tr>
                <tr>
                   <td>
                    班级：
                </td>
                <td>
                    <asp:DropDownList ID="ddlClass" class="selectpicker" data-style="btn-info" runat="server" DataSourceID="SqlForDdlClass" 
                        DataTextField='className' DataValueField="id">
                    </asp:DropDownList><asp:SqlDataSource ID="SqlForDdlClass" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_SGMSConnectionString %>" 
                        SelectCommand="SELECT * FROM [t_class]">
                    </asp:SqlDataSource>
                </td>
                 <td>
                    政治面貌：
                </td>
                <td>
                <asp:TextBox ID="txt_political" runat="server"></asp:TextBox>
                </td>
                </tr>
                <tr>
                 <td>
                    身份证号码：
                </td>
                <td>
                <asp:TextBox ID="txt_idNum" runat="server"></asp:TextBox>
                </td>
            </tr>
           <tr>
                <td align="right">
                </td>
                <td>
                    <asp:Button ID="bt_studentSave" class="btn btn-success" runat="server" Width="220px" Text="确定" OnClick="bt_studentSave_Click" />
                </td>
                <td align="right">
                </td>
                <td>
                     <input id="btnReturn" class="btn btn-success" style="width:220px" onclick="javascript:window.location.href='studentList.aspx'" type="button" value="返回" />  
                </td>
            </tr>
        </table>
    </div>
    </div>
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
