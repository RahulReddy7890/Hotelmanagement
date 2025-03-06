using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using static System.Net.Mime.MediaTypeNames;




namespace HotelAsp
{
    public partial class grid : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=.;database=proHotel1;integrated security=true");

        public void getmethod()
        {
            //  string ss = Session["Username"].ToString();
            //SqlCommand cmdd = new SqlCommand("select * from Table_1 where username='" + ss + "'", con);

            SqlCommand cmdd = new SqlCommand("select * from Table_1  ", con);
            SqlDataAdapter daa = new SqlDataAdapter(cmdd);

            DataSet dsa = new DataSet();
            daa.Fill(dsa);

            GridView1.DataSource = dsa.Tables[0];

            GridView1.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {


            if(!IsPostBack)
            {
            //    if (Session["Username"] !=null)
            //    {
            //        string ss = Session ["Username"].ToString();
            //    }
                getmethod();

           }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("hot reg.aspx");
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            getmethod();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow rs = GridView1.Rows[e.RowIndex];
            TextBox t1 = (TextBox)rs.FindControl("TextBox1");
            TextBox t2 = (TextBox)rs.FindControl("TextBox2");
            TextBox t3 = (TextBox)rs.FindControl("TextBox3");
            TextBox t8 = (TextBox)rs.FindControl("TextBox8");

            TextBox t4 = (TextBox)rs.FindControl("TextBox4");
            TextBox t5 = (TextBox)rs.FindControl("TextBox5");
            TextBox t6 = (TextBox)rs.FindControl("TextBox6");
            TextBox t7 = (TextBox)rs.FindControl("TextBox7");


            SqlConnection con = new SqlConnection("data source=.;database=proHotel1;integrated security=true");

            con.Open();
            string q = "UPDATE Table_1 SET firstname = '" + t1.Text + "', lastname = '" + t2.Text + "" +
                "', email = '" + t8.Text + "', password = '" + t4.Text + "', conformpassword = '" + t5.Text + 
                "', phone = '" + t6.Text + "', address = '" + t7.Text + "' WHERE username = '" + t3.Text + "'";

            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            getmethod();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            getmethod();
        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow rows = GridView1.Rows[e.RowIndex];
            Label leb = (Label)rows.FindControl("Label3");

          
            var q = "delete from Table_1 where username='" + leb.Text + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(q, con);

            cmd.ExecuteNonQuery();
            con.Close();
            getmethod();
        }

    }
}