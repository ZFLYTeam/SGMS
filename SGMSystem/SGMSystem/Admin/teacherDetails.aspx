<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="teacherDetails.aspx.cs" Inherits="SGMSystem.Admin.teacherDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

<div class="row-fluid">
		<div class="span2">
		</div>
        <div class="span10">
		<div class="span3">
        <asp:Image ID="imgHeadImage" class="img-polaroid"  runat="server" />
		</div>
		<div class="span6">
        <br /><br /><br /><br />
		<span class="techNum">教师号 ：<asp:Label ID="lblTechNum" runat="server" Text="Label"></asp:Label><br /></span><br/><br />
        <span class="teacherName">姓   名：<asp:Label ID="lblTeacherName" runat="server" Text="Label"></asp:Label><br /></span><br/><br />
        <span class="sex">性   别：<asp:Label ID="lblSex" runat="server" Text="Label"></asp:Label><br /></span><br/><br />
        <span class="birth">出生日期：<asp:Label ID="lblBirth" runat="server" Text="Label"></asp:Label><br /></span><br/><br />
        <span class="title">职   称：<asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label><br /></span><br/><br />
		</div>
        <div class="span1"></div>
        <div class="span10">
        </div>
        </div>
	</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
