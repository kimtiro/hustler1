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
    public partial class CustomerOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            customerID.Text = Session["user_id"].ToString();
            user();
            if (!Page.IsPostBack)
            {
                bindgrid();
            }
        }

        private void user()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            DateTime dateTimeVariable = DateTime.Now;



            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM customers WHERE Id = '" + customerID.Text + "'";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                sdr.Read();
                Label2.Text = "Hello , "  +  sdr["fname"].ToString() + "!";

            }


            con.Close();
        }


        private void bindgrid()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from [products]";
            cmd.Connection = con;

            SqlDataReader rd = cmd.ExecuteReader();
            grid1.DataSource = rd;
            grid1.DataBind();
            con.Close();
        }

        protected void grid1_SelectedIndexChanged(object sender, EventArgs e)
        {

            prodID.Text = grid1.SelectedRow.Cells[1].Text;
            productcode.Text = grid1.SelectedRow.Cells[2].Text;
            prodbrand.Text = grid1.SelectedRow.Cells[3].Text;
            prodcategory.Text = grid1.SelectedRow.Cells[4].Text;

        }

        protected void save_Click(object sender, EventArgs e)
        {
           
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
                con.Open();

                DateTime dateTimeVariable = DateTime.Now;



                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "insert into customerorders(or_date,customerID,prodID,qty) values (@or_date,@customerID,@prodID,@qty)";
                cmd.Parameters.AddWithValue("@or_date", dateTimeVariable);
                cmd.Parameters.AddWithValue("@customerID", customerID.Text);
                cmd.Parameters.AddWithValue("@prodID", prodID.Text);
                cmd.Parameters.AddWithValue("@qty", qty.Text);
                cmd.Connection = con;

                SqlDataReader rd = cmd.ExecuteReader();
                grid1.DataSource = rd;
                grid1.DataBind();
                con.Close();

                bindgrid();

             
        }
        private void SearchProducts()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();


            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM products Where prodbrand Like  @prodbrand+ '%'";
            cmd.Parameters.AddWithValue("@prodbrand", searchbox.Text.Trim());
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);
            grid1.DataSource = ds;
            grid1.DataBind();
            con.Close();


        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("registration.aspx");
        }

        protected void myorders_Click(object sender, EventArgs e)
        {
            Response.Redirect("customermanageorders.aspx");
        }

        protected void products_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerOrder.aspx");
        }

        protected void grid1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grid1.PageIndex = e.NewPageIndex;
            this.SearchProducts();
        }

        protected void searchbox_TextChanged(object sender, EventArgs e)
        {
            this.SearchProducts();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SearchProducts();
        }
    }
}