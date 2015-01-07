<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Tech.Master" AutoEventWireup="true" CodeBehind="StudentGradeManage.aspx.cs" Inherits="SGMSystem.Teacher.StudentGradeManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div class="row">
    <div class="span2">
        <h3>所授课程</h3>
    <asp:Repeater ID="rptCourse" runat="server">
    <HeaderTemplate>
        <div class="bs-docs-example">
    <div class="dropdown clearfix">
        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display: block; position: static; margin-bottom: 5px; *width: 180px;">
    </HeaderTemplate>
    <ItemTemplate>
    <li><a tabindex="-1" href="StudentGradeManage.aspx?termId=<%#Eval("termId")%>&courseId=<%#Eval("courseId")%>"><%#Eval("termName")%> 学期<br/><%#Eval("courseName")%></a></li>
    </ItemTemplate>
    <FooterTemplate>
    </ul>
    </div>
    </div>
    </FooterTemplate>
    </asp:Repeater>
    </div>
    <div class="span1">
    </div>
<div class="span9">
 <div align="right" style="padding-top:25px; height: 2px;">
    </div>
        <div style="padding-top:25px;margin-top: 14px;">
            <asp:Repeater ID="listStudentGrade" runat="server" OnItemCreated="listStudentGrade_ItemCreated"
                onitemcommand="listStudentGrade_ItemCommand" >
                <HeaderTemplate> 
                    <div class="data_content">
                        <table class="table table-bordered table-hover" style="table-layout:fixed;align:center;">
                            <tr> 
                                <th style="width:7%">
                                    姓名
                                </th>              
                                <th>
                                    学号
                                </th>
                                <th>
                                   课程名称
                                </th>
                                <th style="width:10%">
                                    平时分
                                </th>
                                 <th style="width:10%">
                                    测试分
                                </th>
                                <th style="width:10%">
                                    总分
                                </th>
                                <th>
                                    操作
                                </th>
                            </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                    <td>
                            <%#Eval("name")%>
                        </td>
                        <td>
                            <%#Eval("sno")%>
                        </td>
                        <td>
                            <%#Eval("courseName")%>
                        </td>
                         <td>
                            <%#Eval("usualScore")%>
                        </td>
                        <td>
                            <%#Eval("testScore")%>
                        </td>
                        <td>
                            <%#Convert.ToInt32(Eval("usualScore"))*0.4 + Convert.ToInt32(Eval("testScore"))*0.6%>
                        </td>
                        <td>
                            <asp:Button ID="btnStudentGradeModify" class="btn btn-mini  btn-info" CommandArgument='<%#Eval("id")%>' CommandName="modify" runat="server" Text="修改" />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
        </div> 
        </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
