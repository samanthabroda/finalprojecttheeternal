using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace finalprojecteternal
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection(@"Data Source=DESKTOP-DOT3O9P,1434; Initial Catalog=master; User Id=maliksimrah; Password=@Farmingdale123");

        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
            lblSuccess.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            c.Open();

            if (txtUser.Text == "Student")
            {
                
                string query = "SELECT COUNT(1) FROM STUDENTACCOUNTINFO WHERE Username=@username AND Password=@password";
                SqlCommand cmd = new SqlCommand(query, c);
                cmd.Parameters.AddWithValue("@username", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count == 1)
                {
                    SqlCommand goa = new SqlCommand("Update STUDENTACCOUNTINFO SET Password='" + txtNew.Text + "' WHERE Username='" + txtEmail.Text + "' AND Password='" + txtPassword.Text + "'", c);

                    goa.ExecuteNonQuery();

                    lblSuccess.Visible = true;

                    c.Close();
                }
                else
                {
                    lblMessage.Visible = true;
                }

            }

            if (txtUser.Text == "TLC Member")
            {

                string query = "SELECT COUNT(1) FROM TLCACCOUNTINFO WHERE Username=@username AND Password=@password";
                SqlCommand cmd = new SqlCommand(query, c);
                cmd.Parameters.AddWithValue("@username", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count == 1)
                {
                    SqlCommand goa = new SqlCommand("Update TLCACCOUNTINFO SET Password='" + txtNew.Text + "' WHERE Username='" + txtEmail.Text + "' AND Password='" + txtPassword.Text + "'", c);

                    goa.ExecuteNonQuery();

                    lblSuccess.Visible = true;

                    c.Close();
                }
                else
                {
                    lblMessage.Visible = true;
                }

            }

            if (txtUser.Text == "Counselor")
            {

                string query = "SELECT COUNT(1) FROM COUNSELORACCOUNTINFO WHERE Username=@username AND Password=@password";
                SqlCommand cmd = new SqlCommand(query, c);
                cmd.Parameters.AddWithValue("@username", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count == 1)
                {
                    SqlCommand goa = new SqlCommand("Update COUNSELORACCOUNTINFO SET Password='" + txtNew.Text + "' WHERE Username='" + txtEmail.Text + "' AND Password='" + txtPassword.Text + "'", c);

                    goa.ExecuteNonQuery();

                    lblSuccess.Visible = true;

                    c.Close();
                }
                else
                {
                    lblMessage.Visible = true;
                }

            }

            if (txtUser.Text == "Administrator")
            {

                string query = "SELECT COUNT(1) FROM ADMINACCOUNTINFO WHERE Username=@username AND Password=@password";
                SqlCommand cmd = new SqlCommand(query, c);
                cmd.Parameters.AddWithValue("@username", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count == 1)
                {
                    SqlCommand goa = new SqlCommand("Update ADMINACCOUNTINFO SET Password='" + txtNew.Text + "' WHERE Username='" + txtEmail.Text + "' AND Password='" + txtPassword.Text + "'", c);

                    goa.ExecuteNonQuery();

                    lblSuccess.Visible = true;

                    c.Close();
                }
                else
                {
                    lblMessage.Visible = true;
                }

            }
        }
    }
}