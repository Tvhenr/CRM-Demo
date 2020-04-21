using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //Yläpalkissa näkyvät painikkeet riippuen onko kirjautunut (ei toimi)
            //    if (Session["role"].Equals(""))
            //    {
            //        LinkButton1.Visible = true; //kirjaudu
            //        LinkButton2.Visible = true; //rekisteröidy
            //        LinkButton3.Visible = false; //kirjaudu ulos
            //        LinkButton4.Visible = false; //asiakkaideen hallinta
            //        LinkButton7.Visible = false; //hello user

            //    }
            //    else if (Session["role"].Equals("user"))
            //    {
            //        LinkButton1.Visible = false; //kirjaudu
            //        LinkButton2.Visible = false; //rekisteröidy
            //        LinkButton3.Visible = true; //kirjaudu ulos
            //        LinkButton4.Visible = true; //asiakkaideen hallinta
            //        LinkButton7.Visible = true; //hello user
            //        LinkButton7.Text = Session["koko_nimi"].ToString();
            //    }
            //}
            //catch (Exception ex)
            //{

            //}
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //Session["käyttäjätunnus"] = "";
            //Session["koko_nimi"] = "";
            //Session["role"] = "";
            //Session["status"] = "";


            //LinkButton1.Visible = true; //kirjaudu
            //LinkButton2.Visible = true; //rekisteröidy
            //LinkButton3.Visible = false; //kirjaudu ulos
            //LinkButton7.Visible = true; //hello user

            Response.Redirect("sisäänkirjautuminen.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //Session["käyttäjätunnus"] = "";
            //Session["koko_nimi"] = "";
            //Session["role"] = "";
            //Session["status"] = "";


            //LinkButton1.Visible = true; //kirjaudu
            //LinkButton2.Visible = true; //rekisteröidy
            //LinkButton3.Visible = false; //kirjaudu ulos
            //LinkButton7.Visible = false; //hello user

            Response.Redirect("rekisteröinti.aspx");
        }

        //ulos kirjautuminen
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            //Session["käyttäjätunnus"] = "";
            //Session["koko_nimi"] = "";
            //Session["role"] = "";
            //Session["status"] = "";


            //LinkButton1.Visible = false; //kirjaudu
            //LinkButton2.Visible = false; //rekisteröidy
            //LinkButton3.Visible = true; //kirjaudu ulos
            //LinkButton7.Visible = true; //hello user

            Response.Redirect("etusivu.aspx");
        }

        //asiakkaiden hallinta
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("asiakkaanLisääminen.aspx");
        }

    }
}