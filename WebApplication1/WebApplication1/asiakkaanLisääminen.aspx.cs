using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class asikkaidenHallinta : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //asiakkaan lisääminen
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (käyttäjäOlemassa())
            {
                Response.Write("<script>alert('Asiakas löytyy jo tietokannasta');</script>");
            }
            else
            {
                lisääUusiKäyttäjä();
            }
        }

        void lisääUusiKäyttäjä()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO member_tbl(henkilötunnus,koko_nimi,sähköpostiosoite,puhelinnumero,osoite,postinumero,kaupunki,maa) values(@henkilötunnus,@koko_nimi,@sähköpostiosoite,@puhelinnumero,@osoite,@postinumero,@kaupunki,@maa)", con);

                cmd.Parameters.AddWithValue("@henkilötunnus", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@koko_nimi", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@sähköpostiosoite", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@puhelinnumero", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@osoite", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@postinumero", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@kaupunki", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@maa", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Asiakkaan tallentaminen onnistui');</script>");
                clearForm();

                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        //Asiakastietojen päivittäminen
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (käyttäjäOlemassa())
            {
                asiakastiedonPäivittäminen();
            }
            else
            {
                Response.Write("<script>alert('Asiakkaan tietoja ei löydy');</script>");
            }
        }

        void asiakastiedonPäivittäminen()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE member_tbl SET koko_nimi=@koko_nimi, sähköpostiosoite=@sähköpostiosoite, puhelinnumero=@puhelinnumero, osoite=@osoite, postinumero=@postinumero, kaupunki=@kaupunki, maa=@maa WHERE henkilötunnus='" + TextBox2.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@koko_nimi", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@sähköpostiosoite", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@puhelinnumero", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@osoite", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@postinumero", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@kaupunki", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@maa", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Päivitys onnistui');</script>");
                clearForm();

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        //asiakkaan etsiminen
        protected void Button3_Click(object sender, EventArgs e)
        {
            asiakkaanEtsiminen();
        }

        void asiakkaanEtsiminen()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_tbl where henkilötunnus='" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox1.Text = dt.Rows[0][1].ToString();
                    TextBox7.Text = dt.Rows[0][2].ToString();
                    TextBox12.Text = dt.Rows[0][3].ToString();
                    TextBox3.Text = dt.Rows[0][4].ToString();
                    TextBox4.Text = dt.Rows[0][5].ToString();
                    TextBox5.Text = dt.Rows[0][6].ToString();
                    TextBox6.Text = dt.Rows[0][7].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Väärä henkilötunntus');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        //asiakkaan poistaminen
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (käyttäjäOlemassa())
            {
                asiakkaanPoistaminen();
            }
            else
            {
                Response.Write("<script>alert('Asiakkaan tietoja ei löydy');</script>");
            }
        }

        void asiakkaanPoistaminen()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from member_tbl WHERE henkilötunnus='" + TextBox2.Text.Trim() + "';", con);

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Asiakkaan poistaminen onnistui');</script>");
                clearForm();

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool käyttäjäOlemassa()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_tbl where henkilötunnus='" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        //Kenttien tyhjentäminen
        void clearForm()
        {
            TextBox2.Text = "";
            TextBox1.Text = "";
            TextBox7.Text = "";
            TextBox12.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

    }
}