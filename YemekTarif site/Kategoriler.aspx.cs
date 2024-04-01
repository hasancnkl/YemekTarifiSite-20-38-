using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategoriler : System.Web.UI.Page
{
    sqlsınıf bgl = new sqlsınıf();
    string id = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            id = Request.QueryString["Kategoriid"];
            islem = Request.QueryString["islem"];
        }

        using (SqlConnection conn = bgl.baglanti())
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM Table_Kategoriler", conn);
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            
            dr.Close();

            if (islem == "sil" && !string.IsNullOrEmpty(id))
            {
                SqlCommand komutsil = new SqlCommand("DELETE FROM Table_Kategoriler WHERE kategoriid=@p1", conn);
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
            }
        }

        Panel2.Visible = false;
        Panel4.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = bgl.baglanti())
        {
            SqlCommand komutekle = new SqlCommand("INSERT INTO Table_Kategoriler(KategoriAd) VALUES(@p1)", conn);
            komutekle.Parameters.AddWithValue("@p1", TextBox1.Text);
            komutekle.ExecuteNonQuery();
        }
        TextBox1.Text = ""; 
    }
}