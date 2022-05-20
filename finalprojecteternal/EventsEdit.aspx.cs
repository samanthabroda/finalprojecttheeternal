using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace finalprojecteternal
{
    public partial class EventsEdit : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection(@"Data Source=DESKTOP-DOT3O9P,1434; Initial Catalog=master; User Id=maliksimrah; Password=@Farmingdale123");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string fileName = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(fileName);
            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".jpeg")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader br = new BinaryReader(stream);
                byte[] bytes = br.ReadBytes((int)stream.Length);
                c.Open();
                if (TextBox6.Text == "")
                {
                    SqlCommand cmde = new SqlCommand("INSERT INTO EVENTS1 (EventName, EventImage, EventLocation, EventDescription, EventLink, EventDateTime, RSVPCount, EventApproval) VALUES ('" + TextBox1.Text + "', '" + bytes + "', '" + TextBox2.Text + "', '" + TextBox5.Text + "', '" + TextBox4.Text + "', '" + TextBox3.Text + "', 0, 'not approved')", c);
                    cmde.ExecuteNonQuery();
                }

                else
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO EVENTS1 VALUES ('" + TextBox1.Text + "', '" + bytes + "', '" + TextBox2.Text + "', '" + TextBox5.Text + "', '" + TextBox4.Text + "', '" + TextBox3.Text + "', 0, 'not approved', " + TextBox6.Text + ")", c);
                    cmd.ExecuteNonQuery();
                }

                
                c.Close();
            }
            else
            {
                ImgWarning.Text = "Must be .jpg or jpeg";
            }
        }

        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete1")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                //string idd = row.Cells[1].Text;
                string idd = row.Cells[0].Text;
                int newID = int.Parse(idd);
                //int newID = Int32.Parse(idd);
                c.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM EVENTS1 WHERE EventID=" + newID, c);
                cmd.ExecuteNonQuery();
                c.Close();
                //GridView1.DataBind();
            }
            else if (e.CommandName == "Approve")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                string idd = row.Cells[0].Text;
                int newID = int.Parse(idd);
                string app = "Approved";
                c.Open();
                SqlCommand cmd = new SqlCommand("UPDATE EVENTS1 SET EventApproval='" + app + "' WHERE EventID=" + newID, c);
                cmd.ExecuteNonQuery();
                c.Close();
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}