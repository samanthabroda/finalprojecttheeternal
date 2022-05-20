using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalprojecteternal
{
    public partial class Events : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection(@"Data Source=DESKTOP-DOT3O9P,1434; Initial Catalog=master; User Id=maliksimrah; Password=@Farmingdale123");
        protected void Page_Load(object sender, EventArgs e)
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
                SqlCommand cmd = new SqlCommand("UPDATE Events1 SET RSVPCount = " + newR + "WHERE EventID = " + newID, c);
                cmd.ExecuteNonQuery();
                c.Close();
            }
        }
    }
}