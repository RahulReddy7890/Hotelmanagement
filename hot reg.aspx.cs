using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace HotelAsp
{
    public partial class hot_reg : System.Web.UI.Page
    {
        public void add()
        {
           
        }
        protected void Page_Load(object sender, EventArgs e)
        {
         
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    string ss = Session["Username"].ToString();
                    TextBox1.Text = ss;
                }

            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int totalcost = 0, acost = 0, roomrent = 0;
            string amninities = string.Empty;
            string roomtype = string.Empty;
            if (CheckBox1.Checked == true)
            {
                acost += 1200;
                amninities = CheckBox1.Text + ",";
            }
            if (CheckBox2.Checked == true)
            {
                acost += 700;
                amninities = amninities + CheckBox2.Text;
            }
            if (RadioButton1.Checked == true)
            {
                roomrent = 2200;
                roomtype = RadioButton1.Text;

            }
            if (RadioButton2.Checked == true)
            {
                roomrent += 500;
                roomtype = RadioButton2.Text;
            }

            totalcost = acost + roomrent;

            Label5.Text = totalcost.ToString();

            string username = TextBox1.Text;






            SqlConnection con = new SqlConnection("data source=.;database=proHotel1;integrated security=true");
            con.Open();


            string query = "insert into Table_2 values('" + username + "','" + roomtype + "','" + amninities + "')";
            SqlCommand cmd=new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        
            con.Close();




            MessageBox.Show(username + " you select " + roomtype + " and " + amninities + " total is " + totalcost);

          
            Response.Redirect("table_2grid.aspx");





        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("FoodOrd.aspx");
        }
    }
}