<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="User_Panel.register" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Kayıt Ol</title>

    <!-- Bootstrap core CSS -->
<link href="https://getbootstrap.com/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="img/1.svg" sizes="180x180">
<link rel="icon" href="img/1.svg" sizes="32x32" type="image/png">
<link rel="icon" href="img/1.svg" sizes="16x16" type="image/png">
<link rel="manifest" href="https://getbootstrap.com/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="img/1.svg" color="#7952b3">
<link rel="icon" href="img/1.svg">
<meta name="theme-color" content="#7952b3">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="https://getbootstrap.com/docs/5.1/examples/sign-in/signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
    
<main class="form-signin">
  <form id="form1" runat="server">
    <img class="mb-4" src="img/1.svg" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">Kayıt Ol</h1>
                <hr />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Başarıyla kayıt oldunuz!" ForeColor="#E43A19" Visible="False"></asp:Label>
                <br />
                <h6>Ad</h6>
                <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Bırakılamaz!" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
    <br />
    <br />
                <h6 >Soyad</h6>
                <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Bırakılamaz!" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
    <br />
    <br />
                <h6 >E-Posta</h6>
                <asp:TextBox ID="TextBox3" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Bırakılamaz!" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
    <br />
    <br />
                <h6 >Şifre</h6>
                <asp:TextBox ID="TextBox5" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Boş Bırakılamaz!" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
    <br />
    <br />
                <h6 >Cinsiyeti</h6>
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-select" >
                    <asp:ListItem>Erkek</asp:ListItem>
                    <asp:ListItem>Kadın</asp:ListItem>
                    <asp:ListItem>Özel Durum</asp:ListItem>
                </asp:DropDownList>
            <hr /><br />
    <asp:Button ID="Button2" runat="server" class="w-100 btn btn-lg btn-secondary" Text="Kayıt Ol" OnClick="Button2_Click" />
      <br />
      <br />
	<a href="login.aspx" target="_self" class="w-100 btn btn-lg btn-secondary">Giriş Yap</a>
            <br />
            <br />
    <p class="mt-5 mb-3 text-muted">&copy; 2022 | Ümeyir ATASOY</p>
  </form>
</main>


    
  </body>
</html>
