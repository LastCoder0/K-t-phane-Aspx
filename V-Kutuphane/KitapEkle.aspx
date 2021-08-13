<%@ Page Title="" Language="C#" MasterPageFile="~/Kutuphaneci.Master" AutoEventWireup="true" CodeBehind="KitapEkle.aspx.cs" Inherits="V_Kutuphane.KitapEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="Form1" runat="server">
        <h3 class=" btn-success ">Kitap Ekleme Sayfasi</h3>
        <br />
        <div class="form-group">
           
            <br />
            <div>
            <asp:Label for="TxtKitapAd" runat="server">KİTAP AD</asp:Label>
            <asp:TextBox ID="TxtKitapAd" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div>
            <asp:Label for="TxtKitapYazar" runat="server">KİTAP YAZAR</asp:Label>
            <asp:TextBox ID="TxtKitapYazar" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div>
            <asp:Label for="TxtBaskıYıl" runat="server">KİTAP BASKI YILI</asp:Label>
            <asp:TextBox ID="TxtBaskıYıl" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div>
            <asp:Label for="txtSayfaSayisi" runat="server">KİTAP SAYFA SAYISI</asp:Label>
            <asp:TextBox ID="txtSayfaSayisi" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div>
            <asp:Label for="DropDownList1" runat="server">KİTAP DİLİ</asp:Label>
             <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                 <asp:ListItem Value="Türkçe">Türkçe</asp:ListItem>
                 <asp:ListItem Value="İngilizce">İngilizce</asp:ListItem>
                 <asp:ListItem Value="Makedonca">Makedonca</asp:ListItem>
                 <asp:ListItem Value="Arnavutça">Arnavutça</asp:ListItem>
                </asp:DropDownList>
             </div>
            <div>
            <asp:Label for="TextArea1" runat="server" CssClass="form-control">KİTAP AÇIKLAMASI</asp:Label>
                <textarea id="TextArea1" cols="20" rows="2" class="form-control" runat="server"></textarea>
             </div>
            <br />
            
            <br />
          
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Kitap Ekle" OnClick="Button1_Click"  />

    </form>
</asp:Content>
