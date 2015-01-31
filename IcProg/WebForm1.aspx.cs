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
    public partial class WebForm1 : System.Web.UI.Page
    {
       String flag = "no";
       int flage = 0;
        
     //     SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pandaConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
            if(flage==1)
            {
                flag = "yes";
            }
            
            Session["flag"] = flag;
           
        }
     
        public static void DeleteItem()
        {
            //Response.Redirect("http://www.microsoft.com/gohere/look.htm");
        }
    
       
        protected void Button1_Click(object sender, EventArgs e)
        {
           int result = 0;
           Session["user"] = UserName.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ICConnectionString"].ConnectionString);
            con.Open();
           
            SqlCommand cmd = new SqlCommand("select * from Pass where NickName =@NickName and Pass=@Pass", con);
       
            cmd.Parameters.AddWithValue("@NickName", UserName.Text);
            cmd.Parameters.AddWithValue("@Pass", PassName.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            
            DataTable dt = new DataTable();
            
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("regulaziaa.aspx");
              //  ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
               
                flage = 1;
                
                
              
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            //    result= (int)cmd.Parameters["Lock"].Value;
           //     SqlCommand cmd1 = new SqlCommand("UPDATE [Pass] SET Lock='result'", con);
             
                 
               
            }
           
         
          
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("password.aspx");
        }
    }
}