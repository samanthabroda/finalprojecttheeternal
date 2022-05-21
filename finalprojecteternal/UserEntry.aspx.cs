using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace finalprojecteternal
{
    public partial class UserEntry : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection(@"Data Source=DESKTOP-DOT3O9P,1434; Initial Catalog=master; User Id=maliksimrah; Password=@Farmingdale123");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            if (txtFirstName.Text.Length < 1 || txtLastName.Text.Length < 1 || txtEmail.Text.Length < 1 || txtPhoneNumber.Text.Length < 1 || txtHomeAddress.Text.Length < 1)
            {
                lblFill.Text = "Please fill in all necessary fields!";
            }

            else
            {
                if (txtUser.Text == "Administrator")
                {
                    if (txtBranch.Text.Length < 1)
                    {
                        lblFill.Text = "Please fill in all necessary fields for administrator!";
                    }

                    else
                    {
                        c.Open();
                        SqlCommand cmd = new SqlCommand("insert into ADMINISTRATOR (FirstName, LastName, Branch, Email, PhoneNumber, HomeAddress, Status, Pronouns, AboutMe, Experience) values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtBranch.Text + "','" + txtEmail.Text + "','" + txtPhoneNumber.Text + "','" + txtHomeAddress.Text + "','" + txtStatus.Text + "','','','')", c);
                        cmd.ExecuteNonQuery();
                        SqlCommand goa = new SqlCommand("SELECT AdminID FROM ADMINISTRATOR WHERE FirstName='" + txtFirstName.Text + "'", c);
                        string id = "0";
                        int i = Int32.Parse(id);
                        SqlDataReader goareader = goa.ExecuteReader();
                        if (goareader.Read())
                        {
                            i = goareader.GetInt32(0);
                        }


                        goareader.Close();
                        SqlCommand cmde = new SqlCommand("INSERT INTO ADMINACCOUNTINFO VALUES (" + i + ", '" + txtEmail.Text + "', 'abc123')", c);
                        cmde.ExecuteNonQuery();
                        lblFill.Visible = false;
                        lblMessage.Text = "Record submitted successfully!";
                        c.Close();
                    }

                }

                if (txtUser.Text == "Student")
                {
                    if (txtMajor.Text.Length < 1 || txtCurrentGPA.Text.Length < 1 || txtRamID.Text.Length < 1 || txtStanding.Text.Length < 1)
                    {
                        lblFill.Text = "Please fill in all necessary fields for student!";
                    }

                    else
                    {
                        c.Open();
                        SqlCommand cmd = new SqlCommand("insert into STUDENT (RAMID, FirstName, LastName, Major, Standing, CurrentGPA, Email, PhoneNumber, HomeAddress, Status, Pronouns, AboutMe, Goals) values('" + txtRamID.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtMajor.Text + "','" + txtStanding.Text + "','" + txtCurrentGPA.Text + "','" + txtEmail.Text + "','" + txtPhoneNumber.Text + "','" + txtHomeAddress.Text + "','" + txtStatus.Text + "', '', '', '')", c);
                        cmd.ExecuteNonQuery();
                        SqlCommand goa = new SqlCommand("SELECT StudentID FROM STUDENT WHERE FirstName='" + txtFirstName.Text+"'", c);
                        string id = "0";
                        int i = Int32.Parse(id);
                        SqlDataReader goareader = goa.ExecuteReader();
                        if (goareader.Read())
                        {
                            i = goareader.GetInt32(0);
                        }
                        

                        goareader.Close();
                        SqlCommand cmde = new SqlCommand("INSERT INTO STUDENTACCOUNTINFO VALUES (" + i + ", '" + txtEmail.Text + "', 'abc123')", c);
                        cmde.ExecuteNonQuery();
                        lblFill.Visible = false;
                        lblMessage.Text = "Record submitted successfully!";
                        c.Close();
                    }


                }

                if (txtUser.Text == "Counselor")
                {
                    if (txtEducation.Text.Length < 1 || txtAvailability.Text.Length < 1 || txtDepartment.Text.Length < 1)
                    {
                        lblFill.Text = "Please fill in all necessary fields for counselor!";
                    }

                    else
                    {
                        c.Open();
                        SqlCommand cmd = new SqlCommand("insert into COUNSELOR (FirstName, LastName, Education, Availability, Email, PhoneNumber, HomeAddress, Department, Status, Pronouns, AboutMe, Experience) VALUES ('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtEducation.Text + "','" + txtAvailability.Text + "','" + txtEmail.Text + "','" + txtPhoneNumber.Text + "','" + txtHomeAddress.Text + "','" + txtDepartment.Text + "','" + txtStatus.Text + "','','','')", c);
                        cmd.ExecuteNonQuery();
                        SqlCommand goa = new SqlCommand("SELECT CounselorID FROM COUNSELOR WHERE FirstName='" + txtFirstName.Text + "'", c);
                        string id = "0";
                        int i = Int32.Parse(id);
                        SqlDataReader goareader = goa.ExecuteReader();
                        if (goareader.Read())
                        {
                            i = goareader.GetInt32(0);
                        }


                        goareader.Close();
                        SqlCommand cmde = new SqlCommand("INSERT INTO COUNSELORACCOUNTINFO VALUES (" + i + ", '" + txtEmail.Text + "', 'abc123')", c);
                        cmde.ExecuteNonQuery();
                        lblFill.Visible = false;
                        lblMessage.Text = "Record submitted successfully!";
                        c.Close();
                    }

                }

                if (txtUser.Text == "TLC Member")
                {
                    if (txtMajor.Text.Length < 1 || txtCurrentGPA.Text.Length < 1 || txtRamID.Text.Length < 1 || txtStanding.Text.Length < 1 || txtPosition.Text.Length < 1)
                    {
                        lblFill.Text = "Please fill in all necessary fields for TLC member!";
                    }

                    else
                    {
                        c.Open();
                        SqlCommand cmd = new SqlCommand("insert into TLC (RAMID, FirstName, LastName, Position, Major, Standing, CurrentGPA, Email, PhoneNumber, HomeAddress, Status, Pronouns, AboutMe, Goals) values('" + txtRamID.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtPosition.Text + "','" + txtMajor.Text + "','" + txtStanding.Text + "','" + txtCurrentGPA.Text + "','" + txtEmail.Text + "','" + txtPhoneNumber.Text + "','" + txtHomeAddress.Text + "','" + txtStatus.Text + "','','','')", c);
                        cmd.ExecuteNonQuery();
                        SqlCommand goa = new SqlCommand("SELECT TLCID FROM TLC WHERE FirstName='" + txtFirstName.Text + "'", c);
                        string id = "0";
                        int i = Int32.Parse(id);
                        SqlDataReader goareader = goa.ExecuteReader();
                        if (goareader.Read())
                        {
                            i = goareader.GetInt32(0);
                        }


                        goareader.Close();
                        SqlCommand cmde = new SqlCommand("INSERT INTO TLCACCOUNTINFO VALUES (" + i + ", '" + txtEmail.Text + "', 'abc123')", c);
                        cmde.ExecuteNonQuery();
                        lblFill.Visible = false;
                        lblMessage.Text = "Record submitted successfully!";
                        c.Close();
                    }


                }
            }
        }
    }
}