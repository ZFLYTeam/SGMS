<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CourseSave.aspx.cs" Inherits="SGMSystem.CourseSave" %>
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
                         <label class="control-label" for="txtAcademyId">所属学院</label>
			              <div class="controls">
                              <asp:DropDownList ID="ddlAcademyName" DataSourceID="SqlDataAcN" DataTextField="academyName" 
                                 DataValueField="id" Width="214px" runat="server">
                              </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataAcN" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:db_SGMSConnectionString %>" 
                                 SelectCommand="SELECT [id], [academyName] FROM [t_academy]">
                             </asp:SqlDataSource>
			              </div>
                          </div>
                          <div class="control-group">
                          <label class="control-label" for="txtCourseyName">课程名称</label>
			              <div class="controls">
                           <asp:TextBox ID="txtCourseyName" class="form" runat="server" Width="200px"></asp:TextBox>
			              </div>
                          </div>
   <%-- &nbsp 学院编号   &nbsp &nbsp &nbsp &nbsp<asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="134px"></asp:TextBox>
    <br />--%>
 <%--   &nbsp 课程名称   &nbsp &nbsp &nbsp &nbsp<asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="134px"></asp:TextBox>
    <br />
    &nbsp 课程属性   &nbsp &nbsp &nbsp &nbsp--%>
                         <div class="control-group">
                         <label class="control-label" for="DropDownList1">课程属性</label>
                         <div class="controls">
                         <asp:DropDownList ID="ddlProperty" runat="server" Height="30px" 
                          Width="214px" >
                          <asp:ListItem>选修</asp:ListItem>
                          <asp:ListItem>必修</asp:ListItem>
                         </asp:DropDownList>
                             
                         </div>
                         </div>
                          <%-- <br />
                           <br />
                           <br />--%>
                       <div class="control-group">
                       <div class="controls">
                        <asp:Button ID="bt_CourseAdd" class="btn btn-primary"  runat="server" Text="保存" Width="99px" onclick="bt_courseAdd_Click"/>
                      <input id="returnBackBtn" class="btn btn-success" style="width:98px" onclick="javascript:window.location.href='CourseList.aspx'" type="button" value="返回" "/> 
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
