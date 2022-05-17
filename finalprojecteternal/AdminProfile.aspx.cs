using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace finalprojecteternal
{
    public partial class AdminProfile : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection(@"Data Source=DESKTOP-DOT3O9P,1434; Initial Catalog=master; User Id=maliksimrah; Password=@Farmingdale123");

        protected void Page_Load(object sender, EventArgs e)
        {
            c.Open();
            SqlCommand fname = new SqlCommand("SELECT FirstName FROM ADMINISTRATOR WHERE AdminID=1", c);
            SqlCommand lname = new SqlCommand("SELECT LastName FROM ADMINISTRATOR WHERE AdminID=1", c);
            SqlCommand pro = new SqlCommand("SELECT Pronouns FROM ADMINISTRATOR WHERE AdminID=1", c);
            SqlCommand abme = new SqlCommand("SELECT AboutMe FROM ADMINISTRATOR WHERE AdminID=1", c);
            SqlCommand exp = new SqlCommand("SELECT Experience FROM ADMINISTRATOR WHERE AdminID=1", c);
            SqlCommand bra = new SqlCommand("SELECT Branch FROM ADMINISTRATOR WHERE AdminID=1", c);


            SqlDataReader fnamereader = fname.ExecuteReader();
            if (fnamereader.Read())
            {
                lblFirstName.Text = fnamereader.GetString(0);
            }

            fnamereader.Close();

            SqlDataReader lnamereader = lname.ExecuteReader();
            if (lnamereader.Read())
            {
                lblLastName.Text = lnamereader.GetString(0);
            }

            lnamereader.Close();

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

            SqlDataReader brareader = bra.ExecuteReader();
            if (brareader.Read())
            {
                lblBranch.Text = brareader.GetString(0);

            }

            brareader.Close();
            c.Close();
        }
    }
}