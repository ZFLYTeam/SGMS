<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AcademySave.aspx.cs" Inherits="SGMSystem.AcademySave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div class="row">
<div class="span2">
    <asp:TreeView ID="menuTree" runat="server">
    </asp:TreeView>
</div>
<div class="span10">
   <div class="row-fluid">
		<div class="span12">
			<div class="row-fluid">
				<div class="span6">
					<div class="form-horizontal">
						<div class="control-group">
							 <label class="control-label" for="txtAcademyName">学院名称</label>
							<div class="controls">
                            <asp:TextBox ID="txtAcademyName" class="form" runat="server" Width="205px"></asp:TextBox>
							</div>
						</div>
                        <div class="control-group">
                            <label class="control-label"></label>
                            <div class="controls">
                                <asp:Button ID="bt_academyAdd" class="btn btn-primary span6"  runat="server" 
                                    Text="保存" onclick="bt_academyAdd_Click"/>
                                <input id="returnBackBtn" class="btn btn-success span6" onclick="javascript:window.location.href='AcademyList.aspx'" type="button" value="返回" "/>                           
                            </div>
                        </div>
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
