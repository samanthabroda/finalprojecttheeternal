using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace finalprojecteternal
{
    public partial class CounselorEditProfile : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection(@"Data Source=DESKTOP-DOT3O9P,1434; Initial Catalog=master; User Id=maliksimrah; Password=@Farmingdale123");


        protected void Page_Load(object sender, EventArgs e)
        {
            c.Open();

            SqlCommand pro = new SqlCommand("SELECT Pronouns FROM COUNSELOR WHERE CounselorID=1", c);
            SqlCommand abme = new SqlCommand("SELECT AboutMe FROM COUNSELOR WHERE CounselorID=1", c);
            SqlCommand exp = new SqlCommand("SELECT Experience FROM COUNSELOR WHERE CounselorID=1", c);

            SqlDataReader abmereader = abme.ExecuteReader();
            if (abmereader.Read())
            {

                lblAboutMe.Text = abmereader.GetString(0);

            }

            abmereader.Close();

            SqlDataReader proreader = pro.ExecuteReader();
            if (proreader.Read())
            {
                lblPronouns.Text = proreader.GetString(0);

            }

            proreader.Close();

            SqlDataReader expreader = exp.ExecuteReader();
            if (expreader.Read())
            {
                lblExperience.Text = expreader.GetString(0);

            }

            expreader.Close();
            c.Close();

        }

        protected void btnSaveButton_Click(object sender, EventArgs e)
        {
            c.Open();
            SqlCommand cmd = new SqlCommand("exec spUpdateCounselorProfile @CounselorID=@id, @Pronouns=@pro , @Aboutme=@abme, @Experience=@exp;", c);
            cmd.Parameters.AddWithValue("@id", 1);
            if (txtPronouns.Text.Length < 1)
            {
                txtPronouns.Text = lblPronouns.Text;
            }
            if (txtAboutMe.Text.Length < 1)
            {
                txtAboutMe.Text = lblAboutMe.Text;
            }
            if (txtExperience.Text.Length < 1)
            {
                txtExperience.Text = lblExperience.Text;
            }
            cmd.Parameters.AddWithValue("@pro", txtPronouns.Text);
            cmd.Parameters.AddWithValue("@abme", txtAboutMe.Text);
            cmd.Parameters.AddWithValue("@exp", txtExperience.Text);
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Changes saved successfully!";
            c.Close();
        }

    }
}