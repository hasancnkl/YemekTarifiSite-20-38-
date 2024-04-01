using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
    sqlsınıf bgl = new sqlsınıf();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {


        Panel2.Visible = false;
        Panel4.Visible = false;

        if(Page.IsPostBack==false)
        {

            if (!Page.IsPostBack)
            {
                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];
            }

            SqlCommand komut2 = new SqlCommand("Select * From Table_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();

        }
        //yemek listesi
        SqlCommand komut = new SqlCommand("Select * From Table_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        if (islem == "sil" && !string.IsNullOrEmpty(id))
        {
            SqlCommand komutsil = new SqlCommand("DELETE FROM Table_Yemekler WHERE Yemekid=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
        }


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

    protected void Button6_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = bgl.baglanti())
        {
            SqlCommand komutekle = new SqlCommand("INSERT INTO Table_Yemekler(yemekad,yemekmalzeme,yemektarif,kategoriid) values(@p1,@p2,@p3,@p4)", conn);
            komutekle.Parameters.AddWithValue("@p1", TextBox1.Text);
            komutekle.Parameters.AddWithValue("@p2", TextBox2.Text);
            komutekle.Parameters.AddWithValue("@p3", TextBox3.Text);
            komutekle.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

            komutekle.ExecuteNonQuery();

            //kategorı sayısını artırma
            SqlCommand komut2 = new SqlCommand("update table_kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
        TextBox1.Text = "";
    }
}