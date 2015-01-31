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
    public partial class EditPage : System.Web.UI.Page
    {
        
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
                    Response.Redirect("EditPage.aspx");
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
            //int create = 0,read=0,update=0,delete=0;
            //if (CreateNo.Checked)
            //{
            //    create= 0;

            //}
            //if (CreateYes.Checked)
            //{
            //    create = 1;

            //}

            //if (ReadYes.Checked)
            //{
            //    read = 1;

            //}
            //if (ReadNo.Checked)
            //{
            //    read = 0;

            //}

            //if (UpdateNo.Checked)
            //{
            //    update = 0;

            //}
            //if (UpdateYes.Checked)
            //{
            //    update = 1;

            //}
            //if (DeleteNo.Checked)
            //{
            //    delete = 0;

            //}
            //if (DeleteYes.Checked)
            //{
            //    delete = 1;

            //}

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
            SqlCommand cmd = new SqlCommand("insert into EditUser Values('" + GroupWork.Text + "','" + create.Text+ "','" + read.Text + "','" + update.Text + "','" + Delete.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GroupWork.Text = "";
            





        }
    }
}