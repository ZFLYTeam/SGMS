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
                       <span class="stuId">学生学号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblStuId" runat="server"></asp:Label><br /></span><br/><br />
		                <span class="cmId">课编程号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblCmId" runat="server"></asp:Label><br /></span><br/>
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
                <td align="right">
                </td>
                <td>
                    <asp:Button ID="btnScSave" class="btn btn-success" style="width: 66%" 
                        runat="server" Text="确定" onclick="btnScUpdate_Click" />
                </td>
            </tr>
            <tr>
                <td align="right">
                </td>
                <td>
                     <input id="btnReturn" class="btn btn-success" style="width: 66%"  onclick="javascript:window.location.href='StudentGradeManage.aspx'" type="button" value="返回" />  
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
