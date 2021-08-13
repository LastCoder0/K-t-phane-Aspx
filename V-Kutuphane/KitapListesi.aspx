<%@ Page Title="" Language="C#" MasterPageFile="~/Kutuphaneci.Master" AutoEventWireup="true" CodeBehind="KitapListesi.aspx.cs" Inherits="V_Kutuphane.KitapListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered  table-hover">
  <thead class="bg-success">
    <tr>
      
      <th scope="col">KİTAP ID</th>
      <th scope="col">KİTAP ADI</th>
         <th scope="col">KİTAP YAZAR</th>
          <th scope="col">KİTAP BASKI YILI</th>
          <th scope="col">KİTAP SAYFA SAYISI</th>
           <th scope="col">KİTAP DİLİ</th>
          <th scope="col">KİTAP AÇIKLAMASI</th>
          <th scope="col">İşlemler</th>

    </tr>
  </thead>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">
      <ItemTemplate>
          <tr>
              
              <td>
                <%#Eval("KITAPID") %>
              </td>
              <td>
                  <%#Eval("KITAPAD") %>
              </td>
              <td>
                <%#Eval("KITAPYAZAR") %>
              </td>
              <td>
                  <%#Eval("KITAPBASKIYIL") %>
              </td>
              <td>
                <%#Eval("KITAPSAYFASAYISI") %>
              </td>
              <td>
                  <%#Eval("KITAPDIL") %>
              </td>
              <td>
                <%#Eval("KITAPACIKLAMA") %>
              </td>
             
              <td>
               <asp:HyperLink NavigateUrl='<%#"KitapSil.Aspx?KITAPID="+Eval("KITAPID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                    <asp:HyperLink NavigateUrl='<%#"KitapGuncelle.Aspx?KITAPID="+Eval("KITAPID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                  </td>
          </tr>
          
      </ItemTemplate>
      </asp:Repeater>

      </tbody>
</table>
     <asp:HyperLink NavigateUrl="~/DersEkle.aspx" ID="HyperLink2" runat="server" CssClass="btn btn-success">Ders Ekle</asp:HyperLink>
</asp:Content>
