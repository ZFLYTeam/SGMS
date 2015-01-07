<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true"
    CodeBehind="systemController.aspx.cs" Inherits="SGMSystem.Admin.systemController" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../libs/bootstrap-switch-master/docs/css/highlight.css" rel="stylesheet">
    <link href="../libs/bootstrap-switch-master/dist/css/bootstrap3/bootstrap-switch.css" rel="stylesheet">
    <link href="../libs/bootstrap-switch-master/docs/css/main.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row" style="text-align:center">
        <div class="span3">
        </div>
        <div class="span6">
            <table class="table table-bordered table-hover" style="width: 450px;">
                <thead>
                    <td>
                        项目
                    </td>
                    <td>
                        操作
                    </td>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            学生系统开关
                        </td>
                        <td>
                        <asp:CheckBox ID="cbStudentSys" runat="server" 
                                oncheckedchanged="cbStudentSys_CheckedChanged" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            学生选课开关
                        </td>
                        <td>
                        <asp:CheckBox ID="cbStudentSC" runat="server" 
                                oncheckedchanged="cbStudentSC_CheckedChanged" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            老师系统开关
                        </td>
                        <td>
                        <asp:CheckBox ID="cbTeacherSys" runat="server" 
                                oncheckedchanged="cbTeacherSys_CheckedChanged" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="span3">
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <script src="../libs/bootstrap-switch-master/docs/js/highlight.js"></script>
    <script src="../libs/bootstrap-switch-master/dist/js/bootstrap-switch.js"></script>
    <script src="../libs/bootstrap-switch-master/docs/js/main.js"></script>
</asp:Content>
