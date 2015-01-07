<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="studentDetails.aspx.cs" Inherits="SGMSystem.studentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
<div class="row">
<div class="span2">
    <asp:TreeView ID="menuTree" runat="server">
    </asp:TreeView>
</div>
<div class="span10">
<div>
        <table align="center">
        <tr>
               <td stlye="width:120px" align="right">
                    照片：
                </td>
                <td stlye="width:120px">
                     <asp:Image ID="imgheadImage" class="img-polaroid"  runat="server" />
                </td>
                <td>
                </td>
                <td>
                </td>
        </tr>
            <tr>
                <td align="right">
                    姓名：
                </td>
                <td>
                  <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                </td>
                 <td align="right">
                    学号：
                </td>
               <td align="left">
                   <asp:Label ID="lblSno" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right">
                    性别：
                </td>
                <td>
                    <asp:Label ID="lblSex" runat="server" Text=""></asp:Label>
                </td>
                 <td align="right">
                    出生日期：
                </td>
                <td>
                  <asp:Label ID="lblBirth" runat="server" Text=""></asp:Label>
                </td>
           </tr>        
            <tr>
             <td align="right">
                    班级：
                </td>
                <td>
                    <asp:Label ID="lblClass" runat="server" Text=""></asp:Label>
                </td>
       
                <td align="right">
                    民族：
                </td>
                <td>
               <asp:Label ID="lblNation" runat="server" Text=""></asp:Label>
                </td> 
                    
            </tr>
            <tr>
              <td align="right">
                    政治面貌：
                </td>
                <td>
                 <asp:Label ID="lblPolitical" runat="server" Text=""></asp:Label>
                </td>

                 <td align="right">
                    身份证号码：
                </td>
                <td>
              <asp:Label ID="lblNum" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
