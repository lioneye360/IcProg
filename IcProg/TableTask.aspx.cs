using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IcProg
{
    public partial class TableTask : System.Web.UI.Page
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
                    Response.Redirect("TableTask.aspx");
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

        protected void GridView1_SelectedIndexChanged(object sender, GridViewCommandEventArgs e)
        {
            int id1=0;
            if (e.CommandName == "Page")
                return;
            if (e.CommandName == "edite")
                id1 = Convert.ToInt32(e.CommandArgument);
            Session["Id"] = id1;
            String a = Convert.ToString(id1);
           
            Response.Redirect("EditTaske.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("taskee.aspx");
        }
        
      

        
    }
}