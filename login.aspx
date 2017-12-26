<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Caesar+Dressing" rel="stylesheet">
<link href="Styles/Site.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
<body  >
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>

    
    <form id="form1"  runat="server">

    <div style="padding-top:50px" align="center"><h3 id="header_arda" >E-CÜZDAN TAKiP</h3></div>
    
    <div style="padding-top:50px">
    
        
    
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
        <asp:TableRow><asp:TableCell><asp:Label ID="Label1" runat="server" Text="Kullanici:"></asp:Label></asp:TableCell><asp:TableCell> <asp:TextBox cssclass="form-control" ID="TextBox1" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow><asp:TableCell><asp:Label ID="Label2" runat="server" Text="Şifre:" ToolTip="Şifrenizi Giriniz"></asp:Label></asp:TableCell><asp:TableCell> <asp:TextBox ID="TextBox2" placeholder="Şifre" type="password" runat="server" CssClass="form-control"></asp:TextBox></asp:TableCell></asp:TableRow>
        </asp:Table>
    
    </div>
    <div align="center">
    <asp:Button class="btn btn-primary btn-lg"   ID="Button1" runat="server" Text="Giriş" onclick="Button1_Click" style="margin-top:10px"/>


    
    
    </div>
    </br>
    <div align="center">    
    <div class="container">
        <img src="https://www.e-pbo.org/web/default/files/Events/Annual%20Assemblies/2016%20Annual%20Assembly/GN-PBO%20Guide%20for%20Budget%20Analysis/Budget%20image.png">
    </div>
    
<%--    <asp:Image id="Image1" runat="server"
           AlternateText="Image text"
           ImageUrl="images/ebudget.jpg"/>--%></div>

    </form>


    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</body>
</html>
