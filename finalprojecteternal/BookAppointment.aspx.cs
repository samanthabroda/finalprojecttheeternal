using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

namespace finalprojecteternal
{
    
    
    public partial class BookAppointment : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection(@"Data Source=DESKTOP-DOT3O9P,1434; Initial Catalog=master; User Id=maliksimrah; Password=@Farmingdale123");


        protected void Page_Load(object sender, EventArgs e)
        {
            lblDisplay.Visible = false;
            lblWhatDate.Visible = false;
            lblAvailability.Visible = false;
            lblBasic.Visible = false;
            lblWhatTime.Visible = false;
            txtDay.Visible = false;
            txtDescription.Visible = false;
            txtTime.Visible = false;
            btnSubmit.Visible = false;
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblDisplay.Visible = true;
            lblWhatDate.Visible = true;
            lblAvailability.Visible = true;
            lblBasic.Visible = true;
            lblWhatTime.Visible = true;
            txtDay.Visible = true;
            txtDescription.Visible = true;
            txtTime.Visible = true;
            btnSubmit.Visible = true;

            c.Open();
            SqlCommand disp = new SqlCommand("SELECT Availability FROM COUNSELOR WHERE FirstName = '" + lblWhichCounselor.Text + "'", c);
            SqlDataReader dispreader = disp.ExecuteReader();
            if (dispreader.Read())
            {
                lblAvailability.Text = dispreader.GetString(0);
            }
            c.Close();
        }

        protected void txtTime_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            c.Open();

            SqlCommand goa = new SqlCommand("SELECT CounselorID FROM COUNSELOR WHERE FirstName='" + lblWhichCounselor.Text + "'", c);
            string id = "0";
            int i = Int32.Parse(id);
            SqlDataReader goareader = goa.ExecuteReader();
            if (goareader.Read())
            {
                i = goareader.GetInt32(0);
            }


            goareader.Close();

            

            SqlCommand cmd = new SqlCommand("INSERT INTO APPOINTMENT VALUES (" + GlobalVariables.i + ", " + i + ", '" + txtDay.Text + "', '" + txtTime.Text + "', 'Sinclair 109', '" + txtDescription.Text + "')", c);
            cmd.ExecuteNonQuery();
            c.Close();


        }
    }
}