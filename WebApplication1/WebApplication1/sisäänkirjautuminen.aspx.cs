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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Sisäänkirjatuminen
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where käyttäjätunnus='"+TextBox1.Text.Trim()+"' AND salasana='"+TextBox2.Text.Trim()+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                        //Yläpalkissa näkyvät painikkeet riippuen onko kirjautunut (ei toimi)
                        //Response.Write("<script>alert('Sisäänkirjautuminen onnistui');</script>");
                        //Session["käyttäjätunnus"] = dr.GetValue(0).ToString();
                        //Session["koko_nimi"] = dr.GetValue(2).ToString();
                        //Session["role"] = "user";
                        //Session["status"] = dr.GetValue(10).ToString();
                    }
                    Response.Redirect("etusivu.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Väärä tieto.');</script>");
                }
            }
            catch(Exception ex)
            {
                
            }


        }

    }
}