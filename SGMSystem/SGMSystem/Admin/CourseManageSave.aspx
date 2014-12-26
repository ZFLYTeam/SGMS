<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CourseManageSave.aspx.cs" Inherits="SGMSystem.CourseManageSave" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="stylesheet" href="/editor/themes/default/default.css" />
	<link rel="stylesheet" href="../editor/plugins/code/prettify.css" />
    <script charset="utf-8" src="../editor/kindeditor.js"></script>
	<script charset="utf-8" src="../editor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="../editor/plugins/code/prettify.js"></script>
    	<script>
    	    KindEditor.ready(function (K) {
    	        var editor1 = K.create('#body_txtNewsBody', {
    	            cssPath: '../editor/plugins/code/prettify.css',
    	            uploadJson: '../editor/asp.net/upload_json.ashx',
    	            fileManagerJson: '../editor/asp.net/file_manager_json.ashx',
    	            allowFileManager: true,
    	            afterCreate: function () {
    	                var self = this;
    	                K.ctrl(document, 13, function () {
    	                    self.sync();
    	                    K('form[name=example]')[0].submit();
    	                });
    	                K.ctrl(self.edit.doc, 13, function () {
    	                    self.sync();
    	                    K('form[name=example]')[0].submit();
    	                });
    	            }
    	        });
    	        prettyPrint();
    	    });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row-fluid">
		<div class="span12">
			<div class="row-fluid">
				<div class="span10">
					<div class="form-horizontal">
						<div class="control-group">
							 <label class="control-label" for="lblmajorName">专业名称</label>
							<div class="controls">
                            <asp:TextBox ID="txtMajorName" class="form" runat="server" Width="150px" 
                                    meta:resourcekey="txtMajorNameResource1"></asp:TextBox>
							</div>
						</div>
						<div class="control-group">
							  <label class="control-label" for="lblcourseId">课程编码</label>
							<div class="controls">
                            <asp:TextBox ID="txtCourseId" class="form" runat="server" Width="150px" 
                                    meta:resourcekey="txtCourseIdResource1"></asp:TextBox>
							</div>
						</div>
                        <div class="control-group">
							 <label class="control-label" for="lblcourseName">课程名称</label>
							<div class="controls">
                            <asp:TextBox ID="txtCourseName" class="form" runat="server" Width="150px" 
                                    meta:resourcekey="txtCourseNameResource1"></asp:TextBox>
							</div>
						</div>
                        <div class="control-group">
							 <label class="control-label" for="lblcreditHours">总学时</label>
							<div class="controls">
                            <asp:TextBox ID="txtCreditHours" class="form" runat="server" Width="150px" 
                                    meta:resourcekey="txtCreditHoursResource1"></asp:TextBox>
							</div>
						</div>
                        <div class="control-group">
							 <label class="control-label" for="lblcredit">学分</label>
							<div class="controls">
                            <asp:TextBox ID="txtCredit" class="form" runat="server" Width="150px" 
                                    meta:resourcekey="txtCreditResource1"></asp:TextBox>
							</div>
						</div>
                        <div class="control-group">
							 <label class="control-label" for="lbltermName">开设学期</label>
							<div class="controls">
                            <asp:TextBox ID="txtTermName" class="form" runat="server" Width="150px" 
                                    meta:resourcekey="txtTermNameResource1"></asp:TextBox>
							</div>
						</div>
                        <div class="control-group">
							 <label class="control-label" for="lblacademyName">开课院系</label>
							<div class="controls">
                            <asp:TextBox ID="txtAcademyName" class="form" runat="server" Width="150px" 
                                    meta:resourcekey="txtAcademyNameResource1"></asp:TextBox>
							</div>
						</div>
                       
                        <div class="control-group">
                            <label class="control-label"></label>
                            <div class="controls">
                                <asp:Button ID="courseManageAddBtn" class="btn btn-primary span5"  runat="server" Text="保存"
                                    OnClick="courseManageAddBtn_Click" Width="138px" 
                                    meta:resourcekey="bt_newsAddResource1"/>
                                <input id="returnBackBtn" class="btn btn-success span5" onclick="javascript:window.location.href='NewsList.aspx'" type="button" value="返回" "/>                           
                            </div>
                        </div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
