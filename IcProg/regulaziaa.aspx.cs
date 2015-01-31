
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace IcProg
{
    public partial class regulaziaa : System.Web.UI.Page
    {
        int i=0;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ICConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            String user = Session["user"].ToString();
            Label2.Text = ":ברוך הבא למערכת";

            Label1.Text = user;
            if (HttpContext.Current.Session["flag"] != null)
            {
                String flage = Session["flag"].ToString();
                if (flage == "yes")
                {
                    Response.Redirect("regulaziaa.aspx");
                }

                // code if session is not null

            /*    else
                {
                    Response.Redirect("WebForm1.aspx");
                }*/


            }
           if (HttpContext.Current.Session["flag"] == null)
            {
                Response.Redirect("WebForm1.aspx");
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            con.Open();
            int sd = 0, cb = 0, end = 0;
            if (CheckBox1.Checked)
            {
                sd = 1;

            }
            else
            {
                sd = 0;
            }
            if (CheckBox3.Checked)
            {
                cb = 1;

            }
            else
            {
                cb = 0;
            }
            if (CheckBox2.Checked)
            {
                end = 1;

            }
            else
            {
                end = 0;
            }

            /*     int dni = 0, mni = 0, yni = 0,dme=0,mme=0,yme=0;
                 dni = DateNidrahsDay.SelectedIndex;
                 mni = DateNideashMounth.SelectedIndex;
                 yni = DateNidrashYear.SelectedIndex;
                 dme = DateNetuhnanDay.SelectedIndex;
                 mme = DateMetuhnanMonth.SelectedIndex;
                 yme = DateMetuhnanYear.SelectedIndex;
                 */
            //          DateTime dateNidrash = new DateTime(DateNidrahsDay.SelectedIndex, DateNideashMounth.SelectedValue, DateNidrashYear.SelectedValue,7,0,0);
            // DateTime datenidrash = new DateTime(yni, mni, dni, 7, 0, 0);
            //DateTime dateme = new DateTime(yni, mni, dni, 7, 0, 0);
            SqlCommand cmd = new SqlCommand("insert into AddRegulation Values('" + NameHozer.Text + "','" + PerekHozer.Text + "','" + SeifMakor.Text + "','" + Namereq.Text + "','" + TohenDrisha.Text + "','" + sd + "','" + AlotHafara.Text + "','" + DateNidrahsDay.SelectedValue + "','" + DateNideashMounth.Text + "','" + DateNidrashYear.SelectedValue + "','" + DateNetuhnanDay.SelectedValue + "','" + DateMetuhnanMonth.Text + "','" + DateMetuhnanYear.SelectedValue + "','" + RamatKoshi.Text + "','" + cb + "','" + AhraiBairgon.SelectedValue + "','" + SeifHok.SelectedValue + "','" + SeifTakanot.SelectedValue + "','" + KisurHahraot.SelectedValue + "','" + IkareHanidrash.SelectedValue + "','" + MekorParshanot.SelectedValue + "','" + BhiratSogHatraot.SelectedValue + "','" + KisurBakarot.SelectedValue + "','" + end + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();

            NameHozer.Text = "";
            PerekHozer.Text = "";
            SeifMakor.Text = "";
            Namereq.Text = "";
            TohenDrisha.Text = "";
            AlotHafara.Text = "";
            RamatKoshi.Text = "";
            DateNidrahsDay.SelectedIndex = 0;
            DateNideashMounth.Text = "";
            DateNidrashYear.SelectedIndex = 0;
            DateNetuhnanDay.SelectedIndex = 0;
            DateMetuhnanMonth.Text = "";
            DateMetuhnanYear.SelectedIndex = 0;
           /* AhraiBairgon.Text = ""; 
            SeifHok.Text = ""; 
            SeifTakanot.Text = "";
            KisurHahraot.Text = "";
            IkareHanidrash.Text = "";
            SeifMakor.Text = "";
            BhiratSogHatraot.Text = "";
            KisurBakarot.Text = "";*/

            if (end == 1)
            {

                Response.Redirect("bakar.aspx");
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            NameHozer.Text = "";
            PerekHozer.Text = "";
            SeifMakor.Text = "";
            Namereq.Text = "";
            TohenDrisha.Text = "";
            AlotHafara.Text = "";
            RamatKoshi.Text = "";
        }



    }
}