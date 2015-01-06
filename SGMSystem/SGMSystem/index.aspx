<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SGMSystem.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>登录</title>
    <link href="libs/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="libs/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />
    <link href="libs/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="shortcut icon" href="images/favicon.png" />
     <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin span,
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="form-signin">
        <h2 class="form-signin-heading" align="center">
            登录</h2>
        <asp:TextBox ID="txtUserName" class="input-block-level" placeholder="请输入用户名" required runat="server"></asp:TextBox>
        <asp:TextBox ID="txtPassword" class="input-block-level" placeholder="请输入密码" required runat="server" TextMode="Password"></asp:TextBox>
        <asp:DropDownList ID="ddlStatus" runat="server" style="width:300px">
            <asp:ListItem>请选择用户身份</asp:ListItem>
            <asp:ListItem Value="0">学生</asp:ListItem>
            <asp:ListItem Value="1">教师</asp:ListItem>
            <asp:ListItem Value="2">管理员</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txtValidateCode" class="input" placeholder="请输入验证码" required runat="server"></asp:TextBox>
        <span id="code" onselectstart="return false" onclick="divclick()" class="badge badge-info"></span>
        <asp:TextBox ID="txtCode" runat="server" style="display:none"></asp:TextBox>
        <asp:Label ID="lblTips" runat="server" Text="学生用户名为学号，老师用户名为教职工号"></asp:Label>
        <asp:Button ID="btnLogin" class="btn btn-large btn-primary" style="width:300px" 
            runat="server" Text="登录" onclick="btnLogin_Click"/>
        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>              
    </div>
    </form>
    <script type="text/javascript" src="libs/bootstrap/js/jquery.min.js"></script>
    <script type="text/javascript" src="libs/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="libs/bootstrap-select/js/bootstrap-select.js"></script>
    <script type="text/javascript">
            var number1 = '';
            var color = '#';
            for (var i = 0; i < 4; i++) { number1 += parseInt(Math.random() * 10); }
            for (var i = 0; i < 6; i++) { color += parseInt(Math.random() * 9); }
            document.getElementById("code").style.backgroundColor = color;
            document.getElementById("code").innerHTML = number1;
            document.getElementById("txtCode").value = number1;
            function divclick() {
                var number1 = '';
                var color = '#';
                for (var i = 0; i < 4; i++) { number1 += parseInt(Math.random() * 10); }
                for (var i = 0; i < 6; i++) { color += parseInt(Math.random() * 9); }
                document.getElementById("code").style.backgroundColor = color;
                document.getElementById("code").innerHTML = number1;
                document.getElementById("txtCode").value = number1;
                return number1;
            }
     </script>  
</body>
</html>