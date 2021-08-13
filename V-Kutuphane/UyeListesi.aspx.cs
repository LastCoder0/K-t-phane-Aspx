using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace V_Kutuphane
{
    public partial class UyeListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataModel.VizyonDataTableAdapters.TBL_UYELERTableAdapter dt = new
                DataModel.VizyonDataTableAdapters.TBL_UYELERTableAdapter();
            Repeater1.DataSource = dt.Uyelistesi();
            Repeater1.DataBind();
        }
    }
}