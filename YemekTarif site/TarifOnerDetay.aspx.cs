using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOnerDetay : System.Web.UI.Page
{

    sqlsınıf bgl = new sqlsınıf();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Tarifid"];

        
        if (!string.IsNullOrEmpty(id))
        {
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Table_Tarifiler where Tarifid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {

                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[5].ToString();
                    TextBox5.Text = dr[6].ToString();

                }
                bgl.baglanti().Close();
                //KATEGORİ LİSTESİ

                SqlCommand komut2 = new SqlCommand("Select * From Table_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }
        else
        {
            
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        // Durumu güncelle
        SqlCommand komut = new SqlCommand("UPDATE Table_Tarifiler SET Tarifdurum=1 WHERE Tarifid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        // Yemeği ana sayfaya yükle
        SqlCommand komut2 = new SqlCommand("INSERT INTO Table_Yemekler (Yemekad, YemekMalzeme, YemekTarif, kategoriid) VALUES (@p1, @p2, @p3, @p4)", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut2.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}