<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Caesar+Dressing" rel="stylesheet">
<link href="Styles/Site.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
<script>
<script type="text/javascript" language="javascript">
        function Button4_Click() {
            document.getElementById("test").innerText = 'Kayıt İşlemi başarı ile gerçekleşti';
        }
    </script>
<body>



<div style="width:auto">
<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">Navbar</a>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="WebForm1.aspx">Anasayfa <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="SQL.aspx">SQL Döküman</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" method="get" action="SQL.aspx">
      <input class="form-control mr-sm-2"  type="text" placeholder="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
</div>
    
  </div>
</nav>
</div>
<div class="container">
<form id="form1" runat="server">

   <table style="width:80%">
   
    <tr>
    <td><asp:Label ID=Label1   runat="server" Text="Harcama Türü: "></asp:Label></td> <td> <asp:DropDownList ID="DropDownList" runat="server">
       </asp:DropDownList></td>
   <td><asp:Label ID=Label2 runat="server" Text="Tarih: "></asp:Label></td><td> <asp:TextBox ID="TextBox2" type="date" runat="server" ></asp:TextBox> </td></tr>
  

   <tr>
   <td><asp:Label ID=Label3 runat="server" Text="Miktar: "></asp:Label></td><td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
   <td><asp:Label ID=Label4 runat="server" Text="Aciklama: "></asp:Label></td><td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
   </tr>
   

       </table>
       <p id="test">Kayıt</p>

  <div class="container">  <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Kaydet" 
          onclick="Button1_Click"  />
      <asp:Button ID="Button2" class="btn btn-secondary" runat="server" onclick="Button2_Click" 
          Text="Temizle" />
      <asp:Button ID="Button3" class="btn btn-info" runat="server" Text="Harcamaları Getir" 
          onclick="Button3_Click" />
          <asp:Button ID="Button6" class="btn btn-info" runat="server" Text="Aylık Harcama Dağılım" 
          onclick="Button6_Click" />
      <asp:Button ID="Button4" class="btn btn-info" runat="server" Text="Anlık Harcamalar Toplam" 
          onclick="Button4_Click"   />
      
       <asp:Button ID="Button5"  class="btn btn-danger" runat="server" Text="Çıkış" 
          onclick="Button5_Click" />
    
    </div>
    <tr>
    <td>
    <div>
    <h3>Ağustos Ayı Harcama DağılımıAyı Harcama Dağılımı</h3>
    <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vRMY9DAetqK9dIzzzx_2vTcybpMuH7KFnhDzGbS4h1DzpnRa11pCPbGyb5xoJydZtT3WCJ-lKlg14Ke/pubchart?oid=243034953&amp;format=interactive"></iframe>
    </div>
    </td>
    <td>
    <div>
    <h3>Mevcut Ay Harcama Dağılım</h3>
    <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vRMY9DAetqK9dIzzzx_2vTcybpMuH7KFnhDzGbS4h1DzpnRa11pCPbGyb5xoJydZtT3WCJ-lKlg14Ke/pubchart?oid=275831799&format=interactive"></iframe>
   </div>
   </td>
   </tr>
 
     
       
    <asp:GridView ID="GridView1" runat="server" Width="464px">
    </asp:GridView>
   
    <asp:GridView ID="GridView2" runat="server" Width="460px">
        </asp:GridView>
         <asp:GridView ID="GridView3" runat="server" Width="460px">
        </asp:GridView>


   

         
    </form>
</body>
</html>
