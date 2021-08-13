using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace V_Kutuphane
{
    public partial class KitapEkle : System.Web.UI.Page
    {
        DataModel.VizyonDataTableAdapters.TBL_KİTAPLARTableAdapter dt = new
            DataModel.VizyonDataTableAdapters.TBL_KİTAPLARTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.Text = "Türkçe";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt.KitapEkle(TxtKitapAd.Text,TxtKitapYazar.Text, Convert.ToInt32(TxtBaskıYıl.Text),Convert.ToInt32(txtSayfaSayisi.Text),DropDownList1.Text,TextArea1.Value.ToString());
            Response.Redirect("KitapListesi.aspx");
        }
    }
}