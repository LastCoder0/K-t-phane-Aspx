using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace V_Kutuphane
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullaniciadi"] != null)
            {
                Response.Write("Hoşgeldin " + Session["kullaniciadi"]);
            }
            else
            {
                Response.Redirect("GirisPaneli.aspx");
            }
            object kullanici = Session["Kullaniciadi"];
            if(kullanici==null)
            {
                TextBox1.Text = "Session'dan gelen değer boştur.";
            }
            else
            {
                TextBox1.Text ="Vizyon Kütüphane'ye Hoşgeldiniz Sayın "+kullanici.ToString();
            }
            

           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("GirisPaneli.aspx");
        }
    }
}