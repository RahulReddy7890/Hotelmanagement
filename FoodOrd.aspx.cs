using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace HotelAsp
{
    public partial class FoodOrd : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string food=string.Empty;
            int acost = 0;

            if(CheckBox1.Checked==true)
            {
                acost += 85;

            }
            if (CheckBox2.Checked == true)
            {
                acost += 65;
            }
            if(CheckBox3.Checked == true)
            {
                acost += 110;
            }
            if (CheckBox4.Checked == true)
            {
                acost += 40;

            }
            if (CheckBox9.Checked == true)
            { 
                acost += 90;
            }
            if (CheckBox10.Checked == true)
            {
                acost += 40;
            }
            if (CheckBox11.Checked == true)
            {
                acost += 35;
            }
            if (CheckBox12.Checked == true)
            {
                acost += 20;
            }
            if (CheckBox14.Checked == true)
            {
                acost += 25;
            }
            if (CheckBox15.Checked == true)
            {
                acost += 15;
            }
            if (CheckBox17.Checked == true)
            {
                acost += 20;
            }
            if (CheckBox19.Checked == true)
            {
                acost += 20;
            }
            if(CheckBox5.Checked== true)
            {
                acost += 30;
            }
            if (CheckBox6.Checked == true)
            {
                acost += 45;
            }
            if(CheckBox7.Checked == true)
            {
                acost += 40;
            }
            if(CheckBox8.Checked== true)
            {
                acost += 30;
            }
            if(CheckBox20.Checked== true)
            {
                acost += 60;
            }
            
            string username = Session["Username"] as string;
         
            int finalcost = 0;
            finalcost=finalcost+acost;
            Response.Write(username + " you pay " + (Label7.Text = finalcost.ToString()) + " Rs");

            MessageBox.Show(" Total = "+finalcost);

            Response.Redirect("hot reg.aspx");

        }
    }
}