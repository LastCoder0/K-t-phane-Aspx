<%@ Page Title="" Language="C#" MasterPageFile="~/Kutuphaneci.Master" AutoEventWireup="true" CodeBehind="UyeEkle.aspx.cs" Inherits="V_Kutuphane.UyeEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="Form1" runat="server">
        <h3 class=" btn-success ">Üye Ekleme Sayfasi</h3>
        <br />
        <div class="form-group">
           
            <br />
            <div>
            <asp:Label for="TxtUyeAd" runat="server">ÜYE AD</asp:Label>
            <asp:TextBox ID="TxtUyeAd" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div>
            <asp:Label for="TxtUyeSoyad" runat="server">ÜYE SOYAD</asp:Label>
            <asp:TextBox ID="TxtUyeSoyad" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div>
            <asp:Label for="TxtUyeTelefon" runat="server">ÜYE TELEFON</asp:Label>
            <asp:TextBox ID="TxtUyeTelefon" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
           <div>
            <asp:Label for="TxtEMail" runat="server">ÜYE E-MAİL</asp:Label>
            <asp:TextBox ID="TxtEMail" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div>
            <asp:Label for="TxtSifre" runat="server">ÜYE E-ŞİRE</asp:Label>
            <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
          
            <br />
            
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Üye Ekle" OnClick="Button1_Click"   />

    </form>
</asp:Content>
