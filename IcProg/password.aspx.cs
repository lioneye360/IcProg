using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace IcProg
{
    public partial class password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ICConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Pass where  Pass=@Pass", con);
            cmd.Parameters.AddWithValue("@Pass", Passold.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd1 = new SqlCommand("update Pass set  Pass=@Pass", con);
                cmd1.Parameters.AddWithValue("@Pass", PassName.Text);
                cmd1.ExecuteNonQuery();
                cmd1.Dispose();
                
                //  ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");

                



            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                //    result= (int)cmd.Parameters["Lock"].Value;
                //     SqlCommand cmd1 = new SqlCommand("UPDATE [Pass] SET Lock='result'", con);



            }
        }
    }
}