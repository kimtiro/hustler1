using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hustler1
{
    public partial class customerRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindgrid();
                SearchCustomers();
            }
        }
        private void bindgrid()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from [customers]";
            cmd.Connection = con;

            SqlDataReader rd = cmd.ExecuteReader();
            grid1.DataSource = rd;
            grid1.DataBind();
            con.Close();
        }

        protected void save_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into customers(uname,fname,lname,emailadd,pword) values (@uname,@fname,@lname,@emailadd,@pword)";
            cmd.Parameters.AddWithValue("@uname", username.Text);
            cmd.Parameters.AddWithValue("@fname", firstname.Text);
            cmd.Parameters.AddWithValue("@lname", lastname.Text);
            cmd.Parameters.AddWithValue("@emailadd", emailaddd.Text);
            cmd.Parameters.AddWithValue("@pword", pword.Text);
            cmd.Connection = con;

            SqlDataReader rd = cmd.ExecuteReader();
            grid1.DataSource = rd;
            grid1.DataBind();
            con.Close();
            bindgrid();
        }

        protected void grid1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grid1.EditIndex = e.NewEditIndex;
            bindgrid();
        }

        protected void grid1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label l1 = grid1.Rows[e.RowIndex].FindControl("idlbl") as Label;
            TextBox username = grid1.Rows[e.RowIndex].FindControl("usernametext") as TextBox;
            TextBox firstname = grid1.Rows[e.RowIndex].FindControl("firstnametext") as TextBox;
            TextBox lastname = grid1.Rows[e.RowIndex].FindControl("lastnametext") as TextBox;
            TextBox emailaddd = grid1.Rows[e.RowIndex].FindControl("emailaddresstext") as TextBox;
            TextBox pword = grid1.Rows[e.RowIndex].FindControl("passwordtext") as TextBox;


            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update [customers] set uname=@uname,fname=@fname,lname=@lname,emailadd=@emailadd,pword=@pword where Id=@id1";
            cmd.Parameters.AddWithValue("@id1", l1.Text);
            cmd.Parameters.AddWithValue("@uname", username.Text);
            cmd.Parameters.AddWithValue("@fname", firstname.Text);
            cmd.Parameters.AddWithValue("@lname", lastname.Text);
            cmd.Parameters.AddWithValue("@emailadd", emailaddd.Text);
            cmd.Parameters.AddWithValue("@pword", pword.Text);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            grid1.EditIndex = -1;
            bindgrid();
        }

        protected void grid1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label l1 = grid1.Rows[e.RowIndex].FindControl("idlbl") as Label;
            TextBox username = grid1.Rows[e.RowIndex].FindControl("usernametext") as TextBox;
            TextBox firstname = grid1.Rows[e.RowIndex].FindControl("firstnametext") as TextBox;
            TextBox lastname = grid1.Rows[e.RowIndex].FindControl("lastnametext") as TextBox;
            TextBox emailaddd = grid1.Rows[e.RowIndex].FindControl("emailaddresstext") as TextBox;
            TextBox pword = grid1.Rows[e.RowIndex].FindControl("passwordtext") as TextBox;


            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from [customers] where Id=@id1";
            cmd.Parameters.AddWithValue("@id1", l1.Text);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            grid1.EditIndex = -1;
            bindgrid();
        }

        private void SearchCustomers()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();
     
     
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM customers Where fname Like  @CustomerName + '%'";
            cmd.Parameters.AddWithValue("@CustomerName", searchbox.Text.Trim());
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);
            grid1.DataSource = ds;
            grid1.DataBind();
            con.Close();


        }

        protected void grid1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grid1.PageIndex = e.NewPageIndex;
            this.SearchCustomers();
        }

        protected void SearchEvent(object sender, EventArgs e)
        {

           this.SearchCustomers();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                this.SearchCustomers();
        
           
        }

        protected void grid1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grid1.EditIndex = -1;
            bindgrid();
        }

        protected void ManageCustomersAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("customerRecord.aspx");
        }

        protected void ManageProductsAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("productRecord.aspx");
        }

        protected void ManageOrdersAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminorders.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("adminlogin.aspx");
        }
    }
}