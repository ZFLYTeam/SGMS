<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ScList.aspx.cs" Inherits="SGMSystem.ScList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div class="row">
<div class="span2">
    <asp:TreeView ID="menuTree" runat="server">
    </asp:TreeView>
</div>
<%--<td width="10%" align="center">
                学院：
                </td>
                <td width="30%" align="center">
                    <asp:DropDownList ID="ddlAcademy" runat="server" AutoPostBack="True"
                    onselectedindexchanged="ddlAcademy_SelectedIndexChanged">      
                    </asp:DropDownList>
                </td>
<td width="10%" align="center">
                专业：
                </td>
                <td width="30%" align="center">
                    <asp:DropDownList ID="ddlMajor" 
                        runat="server" AutoPostBack="True" >
                    </asp:DropDownList>
                </td>
 <td width="10%" align="center">
                学期：
                </td>
                <td width="30%" align="center">
                    <asp:DropDownList ID="ddlTerm" 
                        runat="server" AutoPostBack="True" >
                    </asp:DropDownList>
                </td>
--%>
<div class="span10" align="right">   
     <div align="right">
        <asp:Button ID="btnSelectCoursetAdd" class="btn btn-sm btn-primary" runat="server" Text="添加"
            OnClick="btnSelectCoursetAdd_Click" />
     </div>
    <div style="padding-top: 25px">

<asp:Repeater ID="listSelectCourse" runat="server" OnItemCommand="listSelectCourse_ItemCommand" >
            <HeaderTemplate>
                <div class="data_content">
                    <table class="table table-bordered table-hover" style="table-layout: fixed;">
                        <tr>
                            <th width="7%">
                                姓名
                            </th>
                            <th width="12%">
                                学号
                            </th>
                            <th width="10%">
                                课程名称
                            </th>
                            <th width="10%">
                                课程描述
                            </th>
                            <th width="7%">
                                授教教师
                            </th>
                            <th width="5%">
                                学分
                            </th>
                            <th width="5%">
                                学时
                            </th>
                            <th width="7%">
                                平时分数
                            </th>
                            <th width="7%">
                                考试分数
                            </th>
                             <th width="7%">
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
                        <%#Eval("property")%>
                    </td>
                    <td>
                        <%#Eval("teacherName")%>
                    </td>
                     <td>
                       <%#Eval("credit")%>
                    </td>
                    <td>
                       <%#Eval("creditHours")%>
                     </td>
                    <td>
                       <%#Eval("usualScore")%>
                    </td>
                   <td>
                       <%#Eval("testScore")%>
                    </td>               
              
                    <td>
                        <asp:Button ID="btnDelete" class="btn btn-mini  btn-danger" CommandArgument='<%#Eval("id")%>'
                            CommandName="delete" runat="server" Text="删除" />
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
