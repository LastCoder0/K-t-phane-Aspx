<%@ Page Title="" Language="C#" MasterPageFile="~/Kutuphaneci.Master" AutoEventWireup="true" CodeBehind="KitapBul.aspx.cs" Inherits="V_Kutuphane.KitapBul" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="Form1" runat="server">
        <br />
        <div class="form-group">
                <div style="text-align:center">
            <asp:Label for="txtKitapBul" runat="server" CssClass=" active">VİZYON ÜNİVERSİTESİ KÜTÜPHANESİ KİTAP BUL</asp:Label></div>
                 <div>
        <asp:TextBox ID="txtKitapBul" runat="server" CssClass="form-control"    ></asp:TextBox>
            </div>
           
            <div style="margin:auto; text-align:center">
                
                <asp:CheckBox ID="CheckBox1" runat="server" Text="KİTAP ADINA GÖRE" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True"  />
                  <asp:CheckBox ID="CheckBox2" runat="server" Text="KİTAP YAZARINA GÖRE" OnCheckedChanged="CheckBox2_CheckedChanged" AutoPostBack="True"  />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="KİTAP BASKI YILINA GÖRE" OnCheckedChanged="CheckBox3_CheckedChanged" AutoPostBack="True" />
                <asp:CheckBox ID="CheckBox4" runat="server" Text="KİTAP DİLİNE GÖRE" OnCheckedChanged="CheckBox4_CheckedChanged" AutoPostBack="True"  />
            </div>
            <br />
            <div  style="text-align:center">
                  <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Arama Yap" Width="700" OnClick="Button1_Click"  />
            </div>
            
            <br />
            </div>
             <table class="table table-bordered  table-hover">
  <thead class="bg-success">
    <tr>
      
      <th scope="col">KİTAP ADI</th>
         <th scope="col">KİTAP YAZAR</th>
          <th scope="col">KİTAP BASKI YILI</th>
          <th scope="col">KİTAP SAYFA SAYISI</th>
           <th scope="col">KİTAP DİLİ</th>
          <th scope="col">KİTAP AÇIKLAMASI</th>

    </tr>
  </thead>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">
      <ItemTemplate>
          <tr>
              
              
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
             
             
          </tr>
          
      </ItemTemplate>
      </asp:Repeater>

      </tbody>
</table>
        
    </form>
</asp:Content>
