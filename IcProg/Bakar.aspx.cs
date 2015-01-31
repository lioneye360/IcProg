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
    
    public partial class Bakar : System.Web.UI.Page
    {
       // String dir = "C:\\Up\\";
        

        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ICConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           // HagdaratMesimot.Attributes.Add("Size", "5");
            String user = Session["user"].ToString();
            Label2.Text = ":ברוך הבא למערכת";

            Label1.Text = user;
           Session["bakara"] = NameBakar.Text;

           if (HttpContext.Current.Session["flag"] != null)
           {
               String flage = Session["flag"].ToString();
               if (flage == "yes")
               {
                   Response.Redirect("Bakar.aspx");
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
        /*    if(!Directory.Exists(dir))
            {
                Directory.CreateDirectory(dir);
            }*/
        }
        
        protected void Submitbakar_Click(object sender, EventArgs e)
        {
            con.Open();
            int sd = 0, cb = 0, end = 0 , idbakar=0,id=0;
          
            if (CheckBox2bakar.Checked)
            {
                sd = 1;

            }
            else
            {
                sd = 0;
            }
            if (CheckBox3bakar.Checked)
            {
                cb = 1;

            }
            else
            {
                cb = 0;
            }
            if (CheckBox1peila.Checked)
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
            SqlCommand cmd = new SqlCommand("insert into AddBakaraLemagar OUTPUT INSERTED.ID Values('" + NameBakar.Text + "','" + Teormeforat.Text + "','" + end + "','" + RamatKoshibakar.Text + "','" + DateyesuDay.SelectedValue + "','" + DateyesuMonth.Text + "','" + DateyesuYear.SelectedValue + "','" + cb + "','" + DropDownListTypeBakar.SelectedValue + "','" + AhraiBairgonbakar.SelectedValue + "','" + HagdaratMesimot.SelectedValue + "','" + sd + "')", con);
           String idBakar = cmd.ExecuteScalar().ToString();
            String IdTaske=HagdaratMesimot.SelectedValue;
            
           // SqlCommand cmd1 = new SqlCommand("SELECT Id FROM AddBakaraLemagar WHERE Name_Bakara=@Name_Bakar", con);
           //cmd1.Parameters.AddWithValue("@Name_Bakar", NameBakar.Text);
           // SqlDataReader usernameRdr = null;
            

            //usernameRdr = cmd1.ExecuteReader();
            //while (usernameRdr.Read())
            //{
            //    String username11 = Convert.ToString(usernameRdr["Id"]);
            //    id = Convert.ToInt16(username11);

            //}
          //  myUpload.SaveAs(Path.Combine("c:\\temp\\", myUpload.FileName));
            myUpload.SaveAs(Path.Combine("C:\\Up\\", myUpload.FileName));
           int IdBakare = Convert.ToInt16(idBakar);
           int Idtaskee = Convert.ToInt16(IdTaske);
            SqlCommand cmd2 = new SqlCommand("insert into unitedBakraTask Values('" + NameBakar.Text + "','" + HagdaratMesimot.Text + "','" + IdBakare + "','" + Idtaskee +"')", con);
            cmd2.ExecuteNonQuery();
            con.Close();
            NameBakar.Text = "";
            Teormeforat.Text = "";
            RamatKoshibakar.Text = "";

            DateyesuDay.SelectedIndex = 0;
            DateyesuMonth.Text = "";
            DateyesuYear.SelectedIndex = 0;
            //String fname = FileUpload1.PostedFile.FileName;
            //FileUpload1.SaveAs(dir + fname);
         //   FileUpload1.SaveAs(Path.Combine("c:\\Up\\", FileUpload1.FileName));
       
            
            if (sd == 1)
            {

                Response.Redirect("taskee.aspx");
            }
           
        }


        protected void btnSave_Click1(object sender, EventArgs e)
        {
            myUpload.SaveAs(Path.Combine("c:\\Up\\", myUpload.FileName));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            NameBakar.Text = "";
            Teormeforat.Text = "";

        }

        

     

        
    }
}