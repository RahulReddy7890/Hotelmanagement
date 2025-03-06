using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace HotelAsp
{
    public partial class Forgetpass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string password = TextBox2.Text;
            string newpassword = TextBox3.Text;
            string conformpass = TextBox4.Text;

            SqlConnection con = new SqlConnection("data source=.;database=proHotel1;integrated security=true");

            con.Open();

            SqlCommand cmd = new SqlCommand("demo", con);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@oldpassword", password);
            cmd.Parameters.AddWithValue("@newpassword", newpassword);
            cmd.Parameters.AddWithValue("@confirmpassword", conformpass);

            cmd.ExecuteNonQuery();
            MessageBox.Show("Password updated successfully!");
            
            con.Close();
            Response.Redirect("WebForm1.aspx");

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}