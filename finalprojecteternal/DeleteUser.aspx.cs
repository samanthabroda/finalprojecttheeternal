using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace finalprojecteternal
{
    public partial class DeleteStudent : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection(@"Data Source=DESKTOP-DOT3O9P,1434; Initial Catalog=master; User Id=maliksimrah; Password=@Farmingdale123");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                if (txtUser.Text == "Administrator")
                {
                    c.Open();
                    SqlCommand cmd = new SqlCommand("DELETE FROM ADMINISTRATOR WHERE AdminID ="+txtID.Text, c);
                    cmd.ExecuteNonQuery();
                    c.Close();

                }

                if (txtUser.Text == "Student")
                {
                    c.Open();
                    SqlCommand cmd = new SqlCommand("DELETE FROM STUDENT WHERE StudentID =" + txtID.Text, c);
                    cmd.ExecuteNonQuery();
                    c.Close();
                }

                if (txtUser.Text == "Counselor")
                {
                    c.Open();
                    SqlCommand cmd = new SqlCommand("DELETE FROM COUNSELOR WHERE CounselorID =" + txtID.Text, c);
                    cmd.ExecuteNonQuery();
                    c.Close();

                }

                if (txtUser.Text == "TLC Member")
                {
                    c.Open();
                    SqlCommand cmd = new SqlCommand("DELETE FROM TLC WHERE TLCID =" + txtID.Text, c);
                    cmd.ExecuteNonQuery();
                    c.Close();


                }

            lblMessage.Text = "User deleted!";

        }
    }
}