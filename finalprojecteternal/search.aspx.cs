using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalprojecteternal
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBoxSearch.Focus();
            string selectCommand = "SELECT FirstName, LastName, Availability" +
                                    "FROM COUNSELOR " +
                                    "ORDER BY LastName";

            SqlDataSource1.SelectCommand = selectCommand;

            GridViewEmployees.DataSource = SqlDataSource1;
            

        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            if (TextBoxSearch.Text != "")
            {
                string search = TextBoxSearch.Text;
                string selectCommand = "SELECT FirstName AS First Name, LastName AS Last Name, Availability" +
                                        "FROM COUNSELOR " +
                                        "WHERE FirstName LIKE'%" + search + "%' OR " +
                                        "LastName LIKE'%" + search + "%' OR " +
                                        "Availability LIKE'%" + search + "%' " +
                                        "ORDER BY LastName";

                SqlDataSource1.SelectCommand = selectCommand;

                GridViewEmployees.DataSource = SqlDataSource1;
                TextBoxSearch.Focus();
            }
        }
    }

    
}