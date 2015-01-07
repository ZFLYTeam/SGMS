<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Tech.Master" AutoEventWireup="true" CodeBehind="Defualt.aspx.cs" Inherits="SGMSystem.Teacher.Defualt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div class="span3">
                <asp:Repeater ID="rptNews" runat="server" DataSourceID="SqlNewList">
                    <HeaderTemplate>
                        最近要闻
                        <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <a href="NewsDetails.aspx?id=<%#Eval("id")%>">
                            <li>
                                <%#Eval("newsTitle")%></li></a>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                    </FooterTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlNewList" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=db_SGMS;Integrated Security=True"
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT TOP 10 [newsTitle], [id] FROM [t_news] ORDER BY id DESC">
                </asp:SqlDataSource>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
