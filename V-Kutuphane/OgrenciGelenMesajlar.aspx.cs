using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace V_Kutuphane
{
    public partial class OgrenciGelenMesajlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataModel.VizyonDataTableAdapters.TBL_MESAJLARTableAdapter dt = new
                DataModel.VizyonDataTableAdapters.TBL_MESAJLARTableAdapter();

            Repeater1.DataSource = dt.OgrenciGelenKutusu(Session["kullaniciadi"].ToString());
            Repeater1.DataBind();   
        }
    }
}