<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GirisPaneli.aspx.cs" Inherits="V_Kutuphane.GirisPaneli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Öğrenci Giriş Paneli</title>
        <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
   
    <form id="form1" runat="server" style="background-image: none; background-repeat: inherit; background-attachment: fixed;" >
        <div style="width:700px; margin:auto">
            <h4 class="center-block">Kütüphane Giriş Sayfası</h4>
    <br />
            <div style="margin:auto" class="text-center">

    <asp:Image ID="Image2" runat="server" Width="100px" Height="100px" ImageUrl="~/login.png" /></div>
            
            <br /><br />
            <div>
            <asp:Label for="TxtNumara" runat="server">Kullanıcı Adı</asp:Label>
            <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div>
            <asp:Label for="TxtSifre" runat="server">Şifre</asp:Label>
            <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div style="text-align:center">
                <asp:CheckBox ID="CheckBox1" runat="server" Text=" Öğrenci Girişi" style="margin-right:20px;text-align:center" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
            <asp:CheckBox ID="CheckBox2" runat="server" Text=" Kütüphaneci Girişi" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" />
                <br />
                                <br />
         <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>


            </div>
            <br /> 
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Text="Giriş Yap" Width="700px" OnClick="Button1_Click" />
            <br />
            <br />
             <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="İptal Et" Width="200px" />
             <asp:Button ID="Button3" runat="server" CssClass="btn btn-default" Text="Şifremi Unuttum" Width="300px" />
            <asp:Button ID="Button4" runat="server" CssClass="btn btn-info" Text="Yardım" Width="190px" />
            <br />
            <br />
            <div style="margin:auto">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label></div>
            <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>

            <br />
        </div>
    </form>
</body>
</html>
