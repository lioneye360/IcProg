using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Web.SessionState;

namespace IcProg
{
    public partial class taskee : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ICConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            String user = Session["user"].ToString();
            Label2.Text = ":ברוך הבא למערכת";

            Label1.Text = user;
            if (HttpContext.Current.Session["bakara"] != null)
            {
                String bakaraa = Session["bakara"].ToString();
                NameTaskY.Text = bakaraa;
            }

            if (HttpContext.Current.Session["flag"] != null)
            {
                String flage = Session["flag"].ToString();
                if (flage == "yes")
                {
                    Response.Redirect("taskee.aspx");
                }
            
                // code if session is not null

            /*    else
                {
                    Response.Redirect("WebForm1.aspx");
                }
                
                */
           }
            if (HttpContext.Current.Session["flag"] == null)
            {
                Response.Redirect("WebForm1.aspx");
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            con.Open();
            
           
            
           
            

            SqlCommand cmd = new SqlCommand("insert into AddTaskToController Values('" + NameTaskY.Text + "','" + NameTask.Text + "','" + TohenTask.Text + "','" + DateptihaDay.SelectedValue + "','" + DateptihaMounth.Text + "','" + DateptihaYear.SelectedValue + "','" + TypeTaske.Text + "','" + DateseyumDay.SelectedValue + "','" + DateseyumMonth.Text + "','" + DateseyumYear.SelectedValue + "','" + AhuzLebizua.Text + "','" + makorParshanot.Text + "','" + tadirut.Text + "','" + TextBoxComments.Text + "','" + AhraiLebiua.SelectedValue + "','" + HagdaratProfilLebizua.SelectedValue + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            NameTaskY.Text = "";
            NameTask.Text = "";
            TohenTask.Text = "";
            DateptihaDay.SelectedIndex = 0;
            DateptihaMounth.Text = "";
            DateptihaYear.SelectedIndex = 0;
            DateseyumDay.SelectedIndex = 0;
            DateseyumMonth.Text = "";
            DateseyumYear.SelectedIndex = 0;
            
            tadirut.Text = "";
            TextBoxComments.Text = "";
            AhuzLebizua.Text = "";
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tadirut.Text = "";
            TextBoxComments.Text = "";
            NameTaskY.Text = "";
            NameTask.Text = "";
            TohenTask.Text = "";
            AhuzLebizua.Text = "";

        }
    }
}