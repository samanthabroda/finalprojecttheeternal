using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Windows.Forms;

namespace finalprojecteternal
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection(@"Data Source=DESKTOP-DOT3O9P,1434; Initial Catalog=master; User Id=maliksimrah; Password=@Farmingdale123");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            c.Open();
            
            GlobalVariables.User = txtEmail.Text;
            GlobalVariables.Pass = txtPassword.Text;

            if (txtUser.Text == "Student")
            {
                SqlCommand goa = new SqlCommand("SELECT StudentID FROM STUDENTACCOUNTINFO WHERE Username='" + GlobalVariables.User + "' AND Password='" + GlobalVariables.Pass + "'", c);

                SqlDataReader goareader = goa.ExecuteReader();
                if (goareader.Read())
                {
                    GlobalVariables.i = goareader.GetInt32(0);
                }

                goareader.Close();
            }


            if (txtUser.Text == "Administrator")
            {
                SqlCommand goa = new SqlCommand("SELECT AdminID FROM ADMINACCOUNTINFO WHERE Username='" + GlobalVariables.User + "' AND Password='" + GlobalVariables.Pass + "'", c);

                SqlDataReader goareader = goa.ExecuteReader();
                if (goareader.Read())
                {
                    GlobalVariables.i = goareader.GetInt32(0);
                }

                goareader.Close();
            }

            if (txtUser.Text == "TLC Member")
            {
                SqlCommand goa = new SqlCommand("SELECT TLCID FROM TLCACCOUNTINFO WHERE Username='" + GlobalVariables.User + "' AND Password='" + GlobalVariables.Pass + "'", c);

                SqlDataReader goareader = goa.ExecuteReader();
                if (goareader.Read())
                {
                    GlobalVariables.i = goareader.GetInt32(0);
                }

                goareader.Close();
            }

            if (txtUser.Text == "Counselor")
            {
                SqlCommand goa = new SqlCommand("SELECT CounselorID FROM COUNSELORACCOUNTINFO WHERE Username='" + GlobalVariables.User + "' AND Password='" + GlobalVariables.Pass + "'", c);

                SqlDataReader goareader = goa.ExecuteReader();
                if (goareader.Read())
                {
                    GlobalVariables.i = goareader.GetInt32(0);
                }

                goareader.Close();
            }

            c.Close();

            

            using (c)
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
                        Session["username"] = txtEmail.Text.Trim();
                        Response.Redirect("StudentHomePage.aspx");
                    }
                    else
                    {
                        lblMessage.Visible = true;
                    }



                }
                



                if(txtUser.Text == "Administrator")
                {
                    string query = "SELECT COUNT(1) FROM ADMINACCOUNTINFO WHERE Username=@username AND Password=@password";
                    SqlCommand cmd = new SqlCommand(query, c);
                    cmd.Parameters.AddWithValue("@username", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    if (count == 1)
                    {
                        Session["username"] = txtEmail.Text.Trim();
                        Response.Redirect("HomePage.aspx");
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
                        Session["username"] = txtEmail.Text.Trim();
                        Response.Redirect("CounselorHomePage.aspx");
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
                        Session["username"] = txtEmail.Text.Trim();
                        Response.Redirect("TLCHomePage.aspx");
                    }
                    else
                    {
                        lblMessage.Visible = true;
                    }


                }
            }
        }
    }
}