using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Documents;

namespace HotelAsp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string username = TextBox1.Text;
            string password = TextBox2.Text;
            Session["Username"] = username;
            SqlConnection con = new SqlConnection("data source=.;database=proHotel1;integrated security=true");
            con.Open();

            string query = "SELECT password FROM Table_1 WHERE username ='" + username + "'";

            SqlCommand cmd = new SqlCommand(query, con);

            var pass = cmd.ExecuteScalar()?.ToString();


            if (pass != null && password == pass)
            {
                MessageBox.Show("Valid credentials!");
                Response.Redirect("grid.aspx");
            }
            else
            {
                MessageBox.Show("Login Invalid! Please Register");

            }
            con.Close();
        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgetpass.aspx");
        }
    }
}