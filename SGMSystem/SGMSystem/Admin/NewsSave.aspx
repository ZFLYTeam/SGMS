<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="NewsSave.aspx.cs" Inherits="SGMSystem.NewsSave" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

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
				<div class="span6">
					<div class="form-horizontal">
						<div class="control-group">
							 <label class="control-label" for="lblnewsTitle">标题</label>
							<div class="controls">
                            <asp:TextBox ID="txtNewsTitle" class="form" runat="server" Width="205px" 
                                    meta:resourcekey="txtNewsTitleResource1"></asp:TextBox>
							</div>
						</div>
						<div class="control-group">
							  <label class="control-label" for="lblNewsBody">正文</label>
							<div class="controls">
                            <asp:TextBox ID="txtNewsBody" class="form" TextMode="MultiLine" 
                            style="width:700px;height:200px;"  runat="server"></asp:TextBox>
							</div>
						</div>
                       
                        <div class="control-group">
                            <label class="control-label"></label>
                            <div class="controls">
                                <asp:Button ID="bt_newsAdd" class="btn btn-primary span5"  runat="server" Text="保存"
                                    OnClick="bt_newsAdd_Click" Width="138px" 
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
