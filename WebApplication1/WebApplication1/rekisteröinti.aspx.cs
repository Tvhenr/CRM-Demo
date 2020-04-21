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
    public partial class Rekisteröinti : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // reksiteröinti
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (käyttäjäOlemassa())
            {
                Response.Write("<script>alert('Käyttäjätunnus on jo käytössä. Kokeile toista tunnusta, kiitos.');</script>");
            }
            else
            {
                rekisteröintiUusiKäyttäjä();
            }
        }

        //Käyttäjän määrittäminen

        //Tarkastetaan onko asiakas olemassa
        bool käyttäjäOlemassa()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where käyttäjätunnus='"+TextBox9.Text.Trim()+ "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count >= 1)
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

        //Uuden käyttäjän rekisteröinti
        void rekisteröintiUusiKäyttäjä()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl(käyttäjätunnus,salasana,koko_nimi,syntymäpäivä,osoite,postinumero,kaupunki,maa,puhelinnumero,sähköpostiosoite,account_status) values(@käyttäjätunnus,@salasana,@koko_nimi,@syntymäpäivä,@osoite,@postinumero,@kaupunki,@maa,@puhelinnumero,@sähköpostiosoite,@account_status)", con);

                cmd.Parameters.AddWithValue("@käyttäjätunnus", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@salasana", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@koko_nimi", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@syntymäpäivä", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@osoite", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@postinumero", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@kaupunki", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@maa", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@puhelinnumero", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@sähköpostiosoite", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Kiitos. Rekistteröityminen onnistui. Nyt voit kirjautua sisään');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}