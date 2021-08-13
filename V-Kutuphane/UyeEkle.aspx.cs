using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace V_Kutuphane
{
    public partial class UyeEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                DataModel.VizyonDataTableAdapters.TBL_UYELERTableAdapter dt = new
                    DataModel.VizyonDataTableAdapters.TBL_UYELERTableAdapter();
                dt.UyeEkle(TxtUyeAd.Text, TxtUyeSoyad.Text, TxtUyeTelefon.Text, TxtEMail.Text,TxtSifre.Text);

            Response.Redirect("UyeListesi.aspx");
        }
    }
}