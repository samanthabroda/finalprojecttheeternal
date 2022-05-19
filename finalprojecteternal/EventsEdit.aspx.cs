using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Windows;
using System.Windows.Input;

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
            if(fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".jpeg")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader br = new BinaryReader(stream);
                byte[] bytes = br.ReadBytes((int)stream.Length);
                c.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO EVENTS1 VALUES ('" + TextBox1.Text + "', '" + bytes + "', '" + TextBox2.Text + "', '" + TextBox5.Text + "', '" + TextBox4.Text + "', '" + TextBox3.Text + "', 0, 'not approved')", c);
                cmd.ExecuteNonQuery();
                c.Close();
            }
            else
            {
                ImgWarning.Text = "Must be .jpg or jpeg";
            }
        }

    }
}