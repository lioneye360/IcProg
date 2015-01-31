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
using System.Data;


namespace IcProg
{
    
    public partial class Editregulazia : System.Web.UI.Page
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
      
        protected void Submit_Click(object sender, EventArgs e)
        {
            int pail = 0,status=0;
            con.Open();
            String id2 = Session["Id"].ToString();
            String a = NameHozer.Text;
            if(CheckBox1.Checked==true)
            {
                pail = 1;
            }
            else
            {
                pail = 0;
            }
            if(CheckBox3.Checked==true)
            {
                status = 1;
            }
            else
            {
                status = 0;
            }
            SqlCommand cmd = new SqlCommand("update AddRegulation set Name_hozer_reg =@NameHozer," + "perek_bahozher=@PerekHozer," + "number_seif_bahazor=@SeifMakor," + "Name_drisha=@Namereq," + "Tohen_drisha=@TohenDrisha," + "nidrash_leysum_bairgun=@pail," + "alot_hafarat_hadrisha=@AlotHafara," + "DmoedYesum=@DateNidrahsDay," + "MmoedYesum=@DateNideashMounth," + "YmoedYesum=@DateNidrashYear," + "DmoetTihnun=@DateNetuhnanDay," + "MmoedTihnun=@DateMetuhnanMonth, " + "YmoedTihnun=@DateMetuhnanYear," + "ramat_koshi=@RamatKoshi," + "Status_nochehi=@status," + "AhraiLeyisumBirgon=@AhraiBairgon, " + "Seife_HokKshurimLedrisha=@SeifHok," + "Seife_TakanotKshurimLedrisha=@SeifTakanot," + "KishurHahraotEkroniut=@KisurHahraot," + "IkariHanidrashYeuzMeshpati=@IkareHanidrash," + "MakorParshanotMishpatit=@MekorParshanot," + "BhiratSogHatraot=@BhiratSogHatraot," + "KishurBakarotLedrisha=@KisurBakarot where Id=@id2", con);
            cmd.Parameters.AddWithValue("@NameHozer", NameHozer.Text);
            cmd.Parameters.AddWithValue("@PerekHozer", PerekHozer.Text);
             cmd.Parameters.AddWithValue("@SeifMakor", SeifMakor.Text);
            cmd.Parameters.AddWithValue("@Namereq", Namereq.Text);
            cmd.Parameters.AddWithValue("@TohenDrisha", TohenDrisha.Text);
            cmd.Parameters.AddWithValue("@pail", pail);
            cmd.Parameters.AddWithValue("@AlotHafara", AlotHafara.Text);
            cmd.Parameters.AddWithValue("@DateNidrahsDay", DateNidrahsDay.SelectedIndex);
            cmd.Parameters.AddWithValue("@DateNideashMounth", DateNideashMounth.Text);
            cmd.Parameters.AddWithValue("@DateNidrashYear", DateNidrashYear.SelectedIndex);
            cmd.Parameters.AddWithValue("@DateNetuhnanDay", DateNetuhnanDay.SelectedIndex);
            cmd.Parameters.AddWithValue("@DateMetuhnanMonth", DateMetuhnanMonth.Text);
            cmd.Parameters.AddWithValue("@DateMetuhnanYear", DateMetuhnanYear.SelectedIndex);
            cmd.Parameters.AddWithValue("@RamatKoshi", RamatKoshi.Text);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("@AhraiBairgon", AhraiBairgon.SelectedIndex);
            cmd.Parameters.AddWithValue("@SeifHok", SeifHok.SelectedIndex);
            cmd.Parameters.AddWithValue("@SeifTakanot", SeifTakanot.SelectedIndex);
            cmd.Parameters.AddWithValue("@KisurHahraot", KisurHahraot.SelectedIndex);
            cmd.Parameters.AddWithValue("@IkareHanidrash", IkareHanidrash.SelectedIndex);
            cmd.Parameters.AddWithValue("@MekorParshanot", MekorParshanot.SelectedIndex);
            cmd.Parameters.AddWithValue("@BhiratSogHatraot", BhiratSogHatraot.SelectedIndex);
            cmd.Parameters.AddWithValue("@KisurBakarot", KisurBakarot.SelectedIndex);
            cmd.Parameters.AddWithValue("@id2", id2);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
        //   SqlCommand cmd = new SqlCommand();
      //    cmd.CommandType = CommandType.Text;
          //  cmd.CommandText="update AddRegulation set Name_hozer_reg=@NameHozer," +  " perek_bahozher=@PerekHozer where Id=@id2;" +  "select Name_hozer_reg, perek_bahozher  from customers";
             
          //  cmd.Parameters.Add("@id2", SqlDbType.VarChar).Value = id2;
          //cmd.Parameters.Add("@NameHozer", SqlDbType.VarChar).Value = NameHozer.Text;
          //cmd.Parameters.Add("@PerekHozer", SqlDbType.VarChar).Value = PerekHozer.Text;
          //cmd.ExecuteNonQuery();
          //  cmd.Parameters.AddWithValue("@NameHozer", NameHozer.Text);
         //   cmd.Parameters.AddWithValue("@PerekHozer", PerekHozer.Text);
       //   SqlCommand cmd = new SqlCommand("update AddRegulation Set Name=@Name where SID=@SID", con);
            //    cmd.Parameters.AddWithValue("@Name", NameHozer.Text);
              //  cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
             //   cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
              //  cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
             //   cmd.Parameters.AddWithValue("SID",id2);
            //    cmd.ExecuteNonQuery();
               
            
        }

      
        public void rede()
        {
            String id2 = Session["Id"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from AddRegulation where Id=@id2", con);
            cmd.Parameters.AddWithValue("@id2", id2);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            NameHozer.Text = dr[1].ToString();
            PerekHozer.Text = dr[2].ToString();
            SeifMakor.Text = dr[3].ToString();
            Namereq.Text = dr[4].ToString();
            TohenDrisha.Text = dr[5].ToString();
            if (dr[6].GetHashCode() == 1)
            {
                CheckBox1.Checked = true;
            }
            else
            {
                CheckBox1.Checked = false;
            }
            AlotHafara.Text = dr[7].ToString();
            DateNidrahsDay.SelectedIndex = dr[8].GetHashCode();
            DateNideashMounth.Text = dr[9].ToString();
            DateNidrashYear.SelectedIndex = dr[10].GetHashCode();
            DateNetuhnanDay.SelectedIndex = dr[11].GetHashCode();
            DateMetuhnanMonth.Text = dr[12].ToString();
            DateMetuhnanYear.SelectedIndex = dr[13].GetHashCode();
            RamatKoshi.Text = dr[14].ToString();
            if (dr[15].GetHashCode() == 1)
            {
                CheckBox3.Checked = true;
            }
            else
            {
                CheckBox3.Checked = false;
            }
            AhraiBairgon.SelectedIndex = dr[15].GetHashCode();
            //   SeifHok.SelectedIndex = dr[16].GetHashCode();
            //  SeifTakanot.SelectedIndex = dr[17].GetHashCode();
            //  KisurHahraot.SelectedIndex = dr[18].GetHashCode();
            //   IkareHanidrash.SelectedIndex = dr[19].GetHashCode();
            // MekorParshanot.SelectedIndex = dr[20].GetHashCode();
            //    BhiratSogHatraot.SelectedIndex = dr[21].GetHashCode();
            //  KisurBakarot.SelectedIndex = dr[22].GetHashCode();




            con.Close();
        }
    }
}