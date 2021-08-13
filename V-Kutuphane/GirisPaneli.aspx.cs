using System;
using System.Data.SqlClient;

namespace V_Kutuphane
{
    public partial class GirisPaneli : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-8QP68GE;Initial Catalog=VKutuphaneDb;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {                Session.Timeout = 60;
            baglanti.Open();
          
            
            if (TxtNumara.Text=="")
            {
                Label2.Text = "Lütfen E-mail adresinizi giriniz";

            }
            if (TxtSifre.Text == "")
            {
                Label2.Text = "Lütfen Şifrenizi giriniz";

            }
            if (TxtNumara.Text == "" && TxtSifre.Text=="")
            {
                Label2.Text = "Lütfen E-mail ve Şifrenizi giriniz";

            }

            if (CheckBox1.Checked==true)
                {
                SqlCommand komut = new SqlCommand("Select * from tbl_uyeler where UYEEPOSTA=@p1 and UYESIFRE=@p2", baglanti);

                komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
                komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
                SqlDataReader dr = komut.ExecuteReader();

                if (dr.Read())
                {
                    Session.Add("kullaniciadi", TxtNumara.Text);

                    Response.Redirect("OgrenciDefault.aspx");

                }
                else
                {
                    Label1.Text = "Kullanici adi veya Şifre Hatalıdır.Lütfen Tekrar Deneyiniz.";

                }
            }
            if (CheckBox2.Checked == true)
            {
                SqlCommand komut = new SqlCommand("Select * from tbl_admin where ADMINMAIL=@k1 and ADMINSIFRE=@k2", baglanti);
                komut.Parameters.AddWithValue("@k1", TxtNumara.Text);
                komut.Parameters.AddWithValue("@k2", TxtSifre.Text);
                SqlDataReader dr = komut.ExecuteReader();
                if(dr.Read())
                {
                    Session.Add("kullaniciadi", TxtNumara.Text);

                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Label1.Text = "Kullanici adi veya Şifre Hatalıdır.Lütfen Tekrar Deneyiniz.";

                }
            }
            baglanti.Close();

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
           if(CheckBox1.Checked==true)
            {
                CheckBox2.Enabled = false;
            }
           if(CheckBox1.Checked==false)
            {
                CheckBox2.Enabled = true;
            }
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBox2.Checked==true)
            {
                CheckBox1.Enabled = false;
            }
            if(CheckBox2.Checked==false)
            {
                CheckBox1.Enabled = true;
            }
        }
    }
}