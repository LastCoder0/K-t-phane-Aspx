using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace V_Kutuphane
{
    public partial class KitapListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataModel.VizyonDataTableAdapters.TBL_KİTAPLARTableAdapter dt = new
                DataModel.VizyonDataTableAdapters.TBL_KİTAPLARTableAdapter();
           Repeater1.DataSource=dt.KitapGetir();
            Repeater1.DataBind();
        }
    }
}