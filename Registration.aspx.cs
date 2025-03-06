using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace HotelAsp
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string firstname = TextBox1.Text;
            string lastname = TextBox2.Text;
            string username= TextBox3.Text;
            string gender= string.Empty;
            if (RadioButton1.Checked == true)
            {
                gender = RadioButton1.Text;
            }
            else if (RadioButton2.Checked == true)
            {
                gender = RadioButton2.Text;
            }


            string password= TextBox4.Text;
            string conformpassword= TextBox5.Text;
            string email= TextBox6.Text;
            string phone= TextBox7.Text;
            string address= TextBox8.Text;
            int age= Convert.ToInt32(TextBox9.Text);
            string language=string.Empty;
            if(CheckBox1.Checked== true)
            {
                language=CheckBox1.Text+",";
            }
            if (CheckBox2.Checked == true)
            {
                language = language + CheckBox2.Text+",";
            }
            if (CheckBox3.Checked == true)
            {
                language=language+ CheckBox3.Text+",";
            }
            if (CheckBox4.Checked == true)
            {
                language=language+ CheckBox4.Text;
            }

            string states= DropDownList1.SelectedItem.ToString();   


            SqlConnection con = new SqlConnection("data source=.;database=proHotel1;integrated security=true");
                con.Open();

            string query = "insert into Table_1 values ('" + firstname + "','" + lastname + "','" + username + "','" + gender + "','" + password + "','" + conformpassword + "','" + email + "','" + phone + "','" + address + "','" + age + "','" + language + "','" + states + "')";

            SqlCommand cmd= new SqlCommand(query, con);

            cmd.ExecuteNonQuery();

            con.Close();

            if(password==conformpassword)
            {
              MessageBox.Show("WebForm1.aspx");
               Response.Redirect("WebForm1.aspx");
            }
            else
            {
                Response.Write("password and conform password must be same");
            }

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}