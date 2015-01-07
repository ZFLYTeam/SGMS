<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Tech.Master" AutoEventWireup="true" CodeBehind="StudentGradeUpdate.aspx.cs" Inherits="SGMSystem.Teacher.StudentGradeUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div class="row">
<div class="span2">
    
</div>
<div class="span10">
<div class="row-fluid">
		<div class="span12">
			<div class="row-fluid">
				<div class="span6">
					<div class="form-horizontal">
                       <span>学生：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblStuId" runat="server"></asp:Label><br /></span><br/>
		                <span>课程：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblCmId" runat="server"></asp:Label><br /></span><br/>
        <table align="left">
             <tr>
                <td align="left">                              
                    平时分数： 
                </td>
                <td>
                    <asp:TextBox ID="txtUsualScore" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left">
                    期末分数：
                </td>
                <td>
                <asp:TextBox ID="txtTestScore" runat="server"></asp:TextBox>
                </td>
             </tr>            
            <tr>
            <td></td>
                <td>
                <br />
                    <asp:Button ID="btnScSave" class="btn btn-success" style="width: 49%" 
                        runat="server" Text="保存" onclick="btnScUpdate_Click" />
                        <asp:Button ID="btnSubmit" class="btn btn-success" style="width: 49%" runat="server" Text="提交" onclick="btnSubmit_Click" />
                </td>
            </tr>
            <tr>
                <td align="right">
                </td>
                <td>
                <br/>
                    <asp:Button ID="return" class="btn btn-primary" Width="100%" runat="server" 
                        Text="返回" onclick="return_Click" />
                </td>
            </tr>
        </table>
              <br />       
                  </div>
				</div>
			</div>
		</div>
	</div> 
    </div>
    </div>
<div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
