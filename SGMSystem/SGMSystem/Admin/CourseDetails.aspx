<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CourseDetails.aspx.cs" Inherits="SGMSystem.Dts" %>
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
                       <span class="academyId">学院编号：<asp:Label ID="lblAcademyId" runat="server"></asp:Label><br /></span><br/><br />
		                <span class="courseName">课程名称：<asp:Label ID="lblCourseName" runat="server"></asp:Label><br /></span><br/><br />
                          <span id="property">课程属性：<asp:Label ID="lblProperty" runat="server"></asp:Label><br /></span>
                           <div class="control-group">
                             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp;<input id="returnBackBtn" class="btn btn-success span2" onclick="javascript:window.location.href='CourseList.aspx'" type="button" value="返回" "/>
        
                          </div>      
                  </div>
				</div>
			</div>
		</div>
	</div> 
    </div>
    </div>  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server"></asp:Content>
