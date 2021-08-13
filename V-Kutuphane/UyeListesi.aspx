<%@ Page Title="" Language="C#" MasterPageFile="~/Kutuphaneci.Master" AutoEventWireup="true" CodeBehind="UyeListesi.aspx.cs" Inherits="V_Kutuphane.UyeListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <table class="table table-bordered  table-hover">
  <thead class="bg-success">
    <tr>
      
      <th scope="col">UYE ID</th>
      <th scope="col">UYE AD</th>
         <th scope="col">UYE SOYAD</th>
          <th scope="col">UYE TELEFON</th>
          <th scope="col">UYE E-MAİL</th>
        <th scope="col">İŞLEMLER</th>
           

    </tr>
  </thead>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">
      <ItemTemplate>
          <tr>
              
              <td>
                <%#Eval("UYENO") %>
              </td>
              <td>
                  <%#Eval("UYEAD") %>
              </td>
              <td>
                <%#Eval("UYESOYAD") %>
              </td>
              <td>
                  <%#Eval("UYETEL") %>
              </td>
              <td>
                <%#Eval("UYEEPOSTA") %>
              </td>
             
             
              <td>
               <asp:HyperLink NavigateUrl='<%#"UyeSil.Aspx?KITAPID="+Eval("UYENO") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                    <asp:HyperLink NavigateUrl='<%#"UyeGuncelle.Aspx?KITAPID="+Eval("UYENO") %>' ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                  </td>
          </tr>
          
      </ItemTemplate>
      </asp:Repeater>

      </tbody>
</table>
</asp:Content>
