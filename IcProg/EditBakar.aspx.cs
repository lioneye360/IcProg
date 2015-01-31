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
    public partial class EditBakar : System.Web.UI.Page
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
            String id2 = Session["Id"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from AddBakaraLemagar where Id=@id2", con);
            cmd.Parameters.AddWithValue("@id2", id2);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            NameBakar.Text = dr[1].ToString();
            Teormeforat.Text = dr[2].ToString();
            if (dr[3].GetHashCode() == 1)
            {
                CheckBox1peila.Checked = true;
            }
            else
            {
                CheckBox1peila.Checked = false;
            }
            RamatKoshibakar.Text = dr[4].ToString();
            DateyesuDay.SelectedIndex = dr[5].GetHashCode();
            DateyesuMonth.Text = dr[6].ToString();
            DateyesuYear.SelectedIndex = dr[7].GetHashCode();
            if (dr[8].GetHashCode() == 1)
            {
                CheckBox3bakar.Checked = true;
            }
            else
            {
                CheckBox3bakar.Checked = false;
            }
            DropDownListTypeBakar.SelectedIndex = dr[9].GetHashCode();
            AhraiBairgonbakar.SelectedIndex = dr[10].GetHashCode();
            HagdaratMesimot.SelectedIndex = dr[11].GetHashCode();
            con.Close();
        }

        protected void Submitbakar_Click(object sender, EventArgs e)
        {
            String id2 = Session["Id"].ToString();
            int peila = 0, status=0;
            con.Open();
            if(CheckBox1peila.Checked==true)
            {
                peila = 1;
            }
            else
            {
                peila = 0;
            }
            if (CheckBox3bakar.Checked == true)
            {
                status = 1;
            }
            else
            {
                status = 0;
            }
            SqlCommand cmd = new SqlCommand("update AddBakaraLemagar set Name_Bakara =@NameBakar," + "tieur_mifrat=@Teormeforat," + "bakara_peila=@peila," + "ramat_koshi=@RamatKoshibakar," + "DateyesuDay=@DateyesuDay," + "DateyesuMonth=@DateyesuMonth," + "DateyesuYear=@DateyesuYear," + "Status_nohehi=@status," + "Type_Bakra=@DropDownListTypeBakar," + "Ahrai_memone=@AhraiBairgonbaka," + "Hagdarat_MesimutLebakara=@HagdaratMesimot where Id=@id2", con);
            cmd.Parameters.AddWithValue("@NameBakar", NameBakar.Text);
            cmd.Parameters.AddWithValue("@Teormeforat", Teormeforat.Text);
            cmd.Parameters.AddWithValue("@peila", peila);
            cmd.Parameters.AddWithValue("@RamatKoshibakar", RamatKoshibakar.Text);
            cmd.Parameters.AddWithValue("@DateyesuDay", DateyesuDay.SelectedIndex);
            cmd.Parameters.AddWithValue("@DateyesuMonth", DateyesuMonth.Text);
            cmd.Parameters.AddWithValue("@DateyesuYear", DateyesuYear.SelectedIndex);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@DropDownListTypeBakar", DropDownListTypeBakar.SelectedIndex);
            cmd.Parameters.AddWithValue("@AhraiBairgonbaka", AhraiBairgonbakar.SelectedIndex);
            cmd.Parameters.AddWithValue("@HagdaratMesimot", HagdaratMesimot.SelectedIndex);
            cmd.Parameters.AddWithValue("@id2", id2);
            cmd.ExecuteNonQuery();
            cmd.Dispose();

        }
    }
}