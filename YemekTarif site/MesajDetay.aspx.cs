using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MesajDetay : System.Web.UI.Page
{
    sqlsınıf bgl = new sqlsınıf();
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Mesajid"];
        if (!string.IsNullOrEmpty(id))
        {
            using (SqlConnection connection = bgl.baglanti())
            {
                SqlCommand komut = new SqlCommand("Select * From Table_Mesajlar where mesajid=@p1", connection);
                komut.Parameters.AddWithValue("@p1", id);

                
                using (SqlDataReader dr = komut.ExecuteReader())
                {
                    if (dr.Read())
                    {
                        TextBox1.Text = dr[1].ToString();
                        TextBox2.Text = dr[2].ToString();
                        TextBox3.Text = dr[3].ToString();
                        TextBox4.Text = dr[4].ToString();
                    }
                } 
            } 
        }
    }
}