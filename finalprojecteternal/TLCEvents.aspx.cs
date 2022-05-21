using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace finalprojecteternal
{
    public partial class TLCEvents : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection(@"Data Source=DESKTOP-DOT3O9P,1434; Initial Catalog=master; User Id=maliksimrah; Password=@Farmingdale123");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "RSVPMe")
            {
                String rs = ((Label)e.Item.FindControl("IDNum")).Text;
                String ra = ((Label)e.Item.FindControl("Label3")).Text;
                int newID = int.Parse(rs);
                int newR = int.Parse(ra) + 1;
                c.Open();
                SqlCommand cmd2 = new SqlCommand("SELECT COUNT(*) FROM RSVP WHERE Email='" + GlobalVariables.User + "'", c);
                SqlCommand cmd4 = new SqlCommand("SELECT RSVP_count FROM EVENTS1 WHERE EventID=" + newID + "", c);
                int exist = Int32.Parse("0");
                int totalamount = Int32.Parse("0");
                SqlDataReader cmd2reader = cmd2.ExecuteReader();
                if (cmd2reader.Read())
                {
                    exist = cmd2reader.GetInt32(0);
                }

                cmd2reader.Close();

                SqlDataReader cmd4reader = cmd4.ExecuteReader();
                if (cmd4reader.Read())
                {
                    totalamount = cmd4reader.GetInt32(0);
                }

                cmd4reader.Close();
                //var exist = (int)cmd2.ExecuteScalar();
                if (exist == 0 && exist < totalamount)
                {
                    SqlCommand cmd = new SqlCommand("UPDATE EVENTS1 SET RSVPCount = " + newR + "WHERE EventID = " + newID, c);
                    cmd.ExecuteNonQuery();
                    SqlCommand cmd3 = new SqlCommand("INSERT INTO RSVP VALUES (" + newID + ", '" + GlobalVariables.User + "')", c);
                    cmd3.ExecuteNonQuery();
                }

                else if (exist > totalamount)
                {
                    warnMe.Text = "The RSVP limit has been reached.";
                    warnMe.Visible = true;
                }




                else
                {
                    warnMe.Visible = true;
                }
                c.Close();
            }
        }
    }
}