using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.IO;

namespace IcProg
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ICConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            String user = Session["user"].ToString();
            Label2.Text = ":ברוך הבא למערכת";

            Label1.Text = user;
          //  Response.Redirect("WebForm1.aspx");

         if (HttpContext.Current.Session["flag"] != null)
            {
                String flage = Session["flag"].ToString();
                if (flage == "yes")
                {
                    Response.Redirect("Admin.aspx");
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
            {
                con.Open();
                //int oved = 0;
                //if (CheckBoxworker.Checked)
                //{
                //    oved=0;

                //}
                
                //if (CheckBoxmanage.Checked)
                //{
                //    oved= 1;

                //}
               
                //if (CheckBoxmanager.Checked)
                //{
                //    oved = 2;

                //}
                //if (CheckBoxdirectoriun.Checked)
                //{
                //    oved = 3;

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
               FileUpload1.SaveAs(Path.Combine("C:\\Worker\\", FileUpload1.FileName));
                SqlCommand cmd = new SqlCommand("insert into AddWorker Values('" + NameUser.Text + "','" + Mail.Text + "','" + Phone.Text + "','" + SettingRole.SelectedValue + "','" + null + "','" + TypeWorker.Text + "','" + AlretWork.SelectedValue + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                NameUser.Text = "";
                Mail.Text = "";
                Phone.Text = "";
                TypeWorker.Text = "";

                

               

            }
        }
    }
}