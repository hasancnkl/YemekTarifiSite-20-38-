using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDuzenle : System.Web.UI.Page
{

    sqlsınıf bgl = new sqlsınıf();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
            SqlCommand abc = new SqlCommand(" Select * From Table_Yemekler where Yemekid=@p1", bgl.baglanti());
            abc.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = abc.ExecuteReader();
            while (dr.Read())
            {

                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();

            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("Select * From Table_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = bgl.baglanti())
        {
            int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
            SqlCommand komut = new SqlCommand("UPDATE Table_Yemekler SET Yemekad=@p1, YemekMalzeme=@p2, YemekTarif=@p3, kategoriid=@p4 WHERE Yemekid=@p5", conn);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);

            komut.ExecuteNonQuery();
            

            
        }

        bgl.baglanti().Close();
    }

}