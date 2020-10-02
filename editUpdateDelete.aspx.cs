using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hustler1
{
    public partial class editUpdateDelete : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindgrid();
            }
        }

        private void bindgrid()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from [usertable]";
            cmd.Connection = con;

            SqlDataReader rd = cmd.ExecuteReader();
            grid1.DataSource = rd;
            grid1.DataBind();
            con.Close();
        }

        protected void grid1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grid1.EditIndex = e.NewEditIndex;
            bindgrid();
        }

        protected void grid1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grid1.EditIndex = -1;
            bindgrid();
        }

        protected void grid1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label l1 = grid1.Rows[e.RowIndex].FindControl("idlbl") as Label;
            TextBox t1 = grid1.Rows[e.RowIndex].FindControl("usernametext") as TextBox;
            TextBox t2 = grid1.Rows[e.RowIndex].FindControl("firstnametext") as TextBox;
            TextBox t3 = grid1.Rows[e.RowIndex].FindControl("lastnametext") as TextBox;
            TextBox t4 = grid1.Rows[e.RowIndex].FindControl("emailaddresstext") as TextBox;


            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update [usertable] set Name=@nm,Firstname=@fname, Lastname=@lname,Emailaddress=@emailaddress where Id=@id1";
            cmd.Parameters.AddWithValue("@id1",l1.Text);
            cmd.Parameters.AddWithValue("@nm",t1.Text);
            cmd.Parameters.AddWithValue("@fname", t2.Text);
            cmd.Parameters.AddWithValue("@lname", t3.Text);
            cmd.Parameters.AddWithValue("@emailaddress", t4.Text);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            grid1.EditIndex = -1;
            bindgrid();
        }

        protected void grid1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}