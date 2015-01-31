using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IcProg
{
    public partial class TableBakar : System.Web.UI.Page
    {
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
                    Response.Redirect("TableBakar.aspx");
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



       
           

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
             int id1 = 0;
             if (e.CommandName == "Page")
                 return;
            if (e.CommandName == "editee")
                id1 = Convert.ToInt32(e.CommandArgument);
            Session["Id"] = id1;
           
           
            Response.Redirect("EditBakar.aspx");
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bakar.aspx");
        }
        
    }
}