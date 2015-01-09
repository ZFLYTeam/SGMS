<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Stu.Master" AutoEventWireup="true" CodeBehind="historySc.aspx.cs" Inherits="SGMSystem.Student.historySc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
    <div class="span2">
    
        <h3>选择学期</h3>
    <asp:Repeater ID="rptHistorySc" runat="server" DataSourceID="SqlforTerm">
    <HeaderTemplate>
        <div class="bs-docs-example">
    <div class="dropdown clearfix">
        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display: block; position: static; margin-bottom: 5px; *width: 180px;">
    </HeaderTemplate>
    <ItemTemplate>
    <li><a tabindex="-1" href="historySc.aspx?id=<%#Eval("id")%>"><%#Eval("termName")%> 学期</a></li>
    </ItemTemplate>
    <FooterTemplate>
            </ul>
    </div>
    </div>
    </FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlforTerm" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_SGMSConnectionString %>" 
        SelectCommand="SELECT * FROM [t_term]"></asp:SqlDataSource>
    </div>
    <div class="span1">
    </div>
    <div class="span9">
        <asp:Repeater ID="repeaterScore" runat="server">
            <HeaderTemplate>
                <div class="data_content">
                    <table class="table table-bordered table-hover" style="table-layout: fixed;">
                        <tr>
                            <th>
                                课程名
                            </th>
                            <th>
                                学时
                            </th>
                            <th >
                                学分
                            </th>
                             <th>
                                分数
                            </th>
                        </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%#Eval("courseName")%>
                    </td>
                    <td>
                        <%#Eval("creditHours")%>
                    </td>
                    <td>
                        <%#Eval("credit")%>
                    </td>
                    <td>
                        <%#Convert.ToInt32(Eval("usualScore"))*0.4 + Convert.ToInt32(Eval("testScore"))*0.6%>
                    </td>
                </tr>
            </ItemTemplate> 
            <FooterTemplate>
                </table> </div>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
