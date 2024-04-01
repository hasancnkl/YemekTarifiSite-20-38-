using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriAdminDetay : System.Web.UI.Page
{
    sqlsınıf bgl = new sqlsınıf();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);
            SqlCommand abc = new SqlCommand(" Select * From Table_kategoriler where Kategoriid=@p1", bgl.baglanti());
            abc.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = abc.ExecuteReader();
            while (dr.Read())
            {

                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
            }
            bgl.baglanti().Close();
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);
        SqlCommand cmd = new SqlCommand("Update Table_kategoriler set kategoriad=@p1,kategoriadet=@p2 where kategoriid=@p3", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p3", id);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}
