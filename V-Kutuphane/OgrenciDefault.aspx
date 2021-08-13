<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDefault.aspx.cs" Inherits="V_Kutuphane.OgrenciDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="form1" runat="server" >
        <div>
            <h4 class="center-block"> Öğrenci Anasayfa Sayfası</h4>
    <br /></div>
         
      
            <div>   
                <br />
                <br />
             <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  Enabled="false">Üye Ad</asp:TextBox>
                <br />
                                <br />

                <asp:Button ID="Button1" runat="server" Text="Çıkış Yap" CssClass="btn btn-danger" OnClick="Button1_Click" />

            <br /><br />
            
            <br />
        </div>
            </form>
</asp:Content>
