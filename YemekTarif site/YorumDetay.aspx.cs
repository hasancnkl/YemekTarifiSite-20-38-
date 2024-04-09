using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{

    sqlsınıf bgl = new sqlsınıf();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            id = Request.QueryString["Yorumid"];
            if (!string.IsNullOrEmpty(id))
            {
                
                
                    SqlCommand komut = new SqlCommand("SELECT YorumAdSoyad, YorumMail, Yorumiçerik, YemekAd FROM Table_Yorumlar inner join Table_Yemekler on Table_Yorumlar.yemekid = Table_Yemekler.yemekid where yorumid = @p1", bgl.baglanti());

                    komut.Parameters.AddWithValue("@p1", id);
                    SqlDataReader dr = komut.ExecuteReader();

                    while (dr.Read())
                    {
                        TxtAd.Text = dr[0].ToString();
                        TxtMail.Text = dr[1].ToString();
                        Txticerik.Text = dr[2].ToString();
                        TxtYemek.Text = dr[3].ToString();
                    }
                    dr.Close();
                    bgl.baglanti().Close();
                
            }
        }
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void BtnOnayla_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = bgl.baglanti())
        {
            int id = Convert.ToInt32(Request.QueryString["Yorumid"]);
            SqlCommand komut = new SqlCommand("UPDATE Table_Yorumlar SET Yorumiçerik = @p1, yorumonay = @p2 WHERE yorumid = @p3", conn);

            komut.Parameters.AddWithValue("@p1", Txticerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
        }
        bgl.baglanti().Close();

    }
}