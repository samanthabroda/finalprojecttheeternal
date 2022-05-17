using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            c.Open();
            var x = TextBox3.Text.ToString();
            SqlCommand cmd = new SqlCommand("INSERT INTO EVENTS1 VALUES ('" + TextBox1.Text + "', '" + FileUpload1.FileBytes + "', '"+x+"', '"+TextBox2.Text+"', '"+TextBox4.Text+"', '"+TextBox5.Text+"', 0, 'not approved')", c);
            cmd.ExecuteNonQuery();
            c.Close();
        }


    }
}