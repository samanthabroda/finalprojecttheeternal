using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace finalprojecteternal
{
	public partial class FAQEdit : System.Web.UI.Page
	{
		SqlConnection c = new SqlConnection(@"Data Source=DESKTOP-DOT3O9P,1434; Initial Catalog=master; User Id=maliksimrah; Password=@Farmingdale123");

		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            c.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM FAQ WHERE QuestionID=" + TextBox1.Text, c);
            cmd.ExecuteNonQuery();
            c.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            c.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO FAQ VALUES ('" + TextBox2.Text + "', '" + TextBox3.Text + "')", c);
            cmd.ExecuteNonQuery();
            c.Close();
        }
    }
}