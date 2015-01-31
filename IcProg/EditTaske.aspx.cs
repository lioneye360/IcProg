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
    public partial class EditTaske : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ICConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            String user = Session["user"].ToString();
            Label2.Text = ":ברוך הבא למערכת";

            Label1.Text = user;

            if (!IsPostBack)
            {
                rede();
                // Only do stuff when page loads the FIRST time
            }
            else
            {

                // Only do stuff when page loads the second time (or third, fourth, etc.)
            }


        }
        public void rede()
        {
            String id1 = Session["Id"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from AddTaskToController where Id=@id1", con);
            cmd.Parameters.AddWithValue("@id1", id1);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            NameTaskY.Text = dr[1].ToString();
            NameTask.Text = dr[2].ToString();
            TohenTask.Text = dr[3].ToString();
            DateptihaDay.SelectedIndex = dr[4].GetHashCode();
            DateptihaMounth.Text = dr[5].ToString();
            DateptihaYear.SelectedIndex = dr[6].GetHashCode();
            TypeTaske.Text = dr[7].ToString();
            DateseyumDay.SelectedIndex = dr[8].GetHashCode();
            DateseyumMonth.Text = dr[9].ToString();
            DateseyumYear.SelectedIndex = dr[10].GetHashCode();
            AhuzLebizua.Text = dr[11].ToString();
            makorParshanot.Text = dr[12].ToString();
            tadirut.Text = dr[13].ToString();
            TextBoxComments.Text = dr[14].ToString();
            AhuzLebizua.Text = dr[15].ToString();
            HagdaratProfilLebizua.SelectedIndex = dr[16].GetHashCode();
            con.Close();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            con.Open();
            String id2 = Session["Id"].ToString();
            SqlCommand cmd = new SqlCommand("update AddTaskToController set NameBakaraLyehs =@NameTaskY," + "NameTask=@NameTask," + "TeiurMefurat=@TohenTask," + "DateOpenDay=@DateptihaDay," + "DateOpenMonth=@DateptihaMounth," + "DateOpenYear=@DateptihaYear," + "TypeTask=@TypeTaske," + "DateEndDay=@DateseyumDay," + "DateEndMonth=@DateseyumMonth," + "DateEndYear=@DateseyumYear," + "AhuzLeBizua=@AhuzLebizua," + "makorParshanut=@makorParshanot," + "Dadirot=@tadirut," + "Comments=@TextBoxComments," + "AhrautLebizua=@AhraiLebiua," + "SettingAlret=@HagdaratProfilLebizua where Id=@id2", con);
            cmd.Parameters.AddWithValue("@NameTaskY", NameTaskY.Text);
            cmd.Parameters.AddWithValue("@NameTask", NameTask.Text);
            cmd.Parameters.AddWithValue("@TohenTask", TohenTask.Text);
            cmd.Parameters.AddWithValue("@DateptihaDay", DateptihaDay.SelectedIndex);
            cmd.Parameters.AddWithValue("@DateptihaMounth", DateptihaMounth.Text);
            cmd.Parameters.AddWithValue("@DateptihaYear", DateptihaYear.SelectedIndex);
            cmd.Parameters.AddWithValue("@TypeTaske", TypeTaske.Text);
            cmd.Parameters.AddWithValue("@DateseyumDay", DateseyumDay.SelectedIndex);
            cmd.Parameters.AddWithValue("@DateseyumMonth", DateseyumMonth.Text);
            cmd.Parameters.AddWithValue("@DateseyumYear", DateseyumYear.SelectedIndex);
            cmd.Parameters.AddWithValue("@AhuzLebizua", AhuzLebizua.Text);
            cmd.Parameters.AddWithValue("@makorParshanot", makorParshanot.SelectedIndex);
            cmd.Parameters.AddWithValue("@tadirut", tadirut.SelectedIndex);
            cmd.Parameters.AddWithValue("@TextBoxComments", TextBoxComments.Text);
            cmd.Parameters.AddWithValue("@AhraiLebiua", AhraiLebiua.SelectedIndex);
            cmd.Parameters.AddWithValue("@HagdaratProfilLebizua", HagdaratProfilLebizua.SelectedIndex);
            cmd.Parameters.AddWithValue("@id2", id2);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
    }
}