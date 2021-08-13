using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace V_Kutuphane
{
    public partial class KitapBul : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            


        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
           
            //Checkbox kontrol1
            if (CheckBox1.Checked== true)
            {
                CheckBox2.Enabled = false;
                CheckBox3.Enabled = false;
                CheckBox4.Enabled = false;
            }
            else
            {
                CheckBox2.Enabled = true;
                CheckBox3.Enabled = true;
                CheckBox4.Enabled = true;
            }

        }
        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            //Checkbox kontrol2
            if (CheckBox2.Checked == true)
            {
                CheckBox1.Enabled = false;
                CheckBox3.Enabled = false;
                CheckBox4.Enabled = false;
            }
            else
            {
                CheckBox1.Enabled = true;
                CheckBox3.Enabled = true;
                CheckBox4.Enabled = true;
            }
        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        { //Checkbox kontrol3
            if (CheckBox3.Checked == true)
            {
                CheckBox2.Enabled = false;
                CheckBox1.Enabled = false;
                CheckBox4.Enabled = false;
            }
            else
            {
                CheckBox2.Enabled = true;
                CheckBox1.Enabled = true;
                CheckBox4.Enabled = true;
            }
        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {

            if (CheckBox4.Checked == true)
            {
                CheckBox1.Enabled = false;
                CheckBox2.Enabled = false;
                CheckBox3.Enabled = false;
            }
            else
            {
                CheckBox1.Enabled = true;
                CheckBox2.Enabled = true;
                CheckBox3.Enabled = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataModel.VizyonDataTableAdapters.TBL_KİTAPLARTableAdapter dt = new
                   DataModel.VizyonDataTableAdapters.TBL_KİTAPLARTableAdapter();
            
            if (CheckBox1.Checked == true)
            {
                

                Repeater1.DataSource = dt.KitapArama(txtKitapBul.Text.ToString());
                Repeater1.DataBind();
            }
            if(CheckBox4.Checked==true)
            {
                Repeater1.DataSource = dt.KitapDilArama(txtKitapBul.Text.ToString());
                Repeater1.DataBind();
            }


        }
    }
}