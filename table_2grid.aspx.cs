using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelAsp
{
    public partial class table_2grid : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=.;database=proHotel1;integrated security=true");

        public void getdata()
        {
            
                SqlCommand cmd = new SqlCommand("select * from Table_2 ", con);
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();

            

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getdata();


            }




        }

  

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            //GridViewRow rs = GridView1.Rows[e.RowIndex];
            //con.Open();
            //TextBox t1 = (TextBox)rs.FindControl("TextBox1");
            //TextBox t2 = (TextBox)rs.FindControl("TextBox2");
            //TextBox t3 = (TextBox)rs.FindControl("TextBox3");

            //string q = "UPDATE Table_2 set RoomType = '" + t2.Text +  "' where  username = '" + t1.Text + "'";

            //SqlCommand cmd = new SqlCommand(q, con);
            //cmd.ExecuteNonQuery();

            //GridView1.EditIndex = -1;
            //con.Close();

            //getdata();


            GridViewRow rs = GridView1.Rows[e.RowIndex];
            TextBox t1 = (TextBox)rs.FindControl("TextBox1");
            TextBox t2 = (TextBox)rs.FindControl("TextBox2");
            TextBox t3 = (TextBox)rs.FindControl("TextBox3");

            SqlConnection con = new SqlConnection("data source=.;database=proHotel1;integrated security=true");
            con.Open();
            string q = "UPDATE Table_2 SET RoomType = '" + t2.Text + "', Amenites =  '" + t3.Text + "' where  username = '" + t1.Text + "'";

            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            getdata();





        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            getdata();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            getdata();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow rows = GridView1.Rows[e.RowIndex];
            Label leb = (Label)rows.FindControl("Label1");
            SqlConnection con = new SqlConnection("data source=.;database=proHotel1;integrated security=true");
            con.Open();
            var q = "delete from Table_2 where username='" + leb.Text + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            con.Close();
            getdata();
        
    }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}