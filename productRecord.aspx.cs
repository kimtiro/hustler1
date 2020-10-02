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
    public partial class productRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindgrid();
                SearchProducts();
            }
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

        protected void save_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into products(productcode,prodbrand,prodcategory) values (@productcode,@prodbrand,@prodcategory)";
            cmd.Parameters.AddWithValue("@productcode", productcode.Text);
            cmd.Parameters.AddWithValue("@prodbrand", prodbrand.Text);
            cmd.Parameters.AddWithValue("@prodcategory", prodcategory.Text);
            cmd.Connection = con;

            SqlDataReader rd = cmd.ExecuteReader();
            grid1.DataSource = rd;
            grid1.DataBind();
            con.Close();
            bindgrid();
        }

        protected void grid1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label l1 = grid1.Rows[e.RowIndex].FindControl("idlbl") as Label;
            TextBox productcode = grid1.Rows[e.RowIndex].FindControl("productcodetxt") as TextBox;
            TextBox prodbrand = grid1.Rows[e.RowIndex].FindControl("prodbrandtxt") as TextBox;
            TextBox prodcategory = grid1.Rows[e.RowIndex].FindControl("prodcategorytxt") as TextBox;


            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update [products] set productcode=@productcode,prodbrand=@prodbrand,prodcategory=@prodcategory where Id=@id1";
            cmd.Parameters.AddWithValue("@id1", l1.Text);
            cmd.Parameters.AddWithValue("@productcode", productcode.Text);
            cmd.Parameters.AddWithValue("@prodbrand", prodbrand.Text);
            cmd.Parameters.AddWithValue("@prodcategory", prodcategory.Text);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            grid1.EditIndex = -1;
            bindgrid();
        }

        protected void grid1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label l1 = grid1.Rows[e.RowIndex].FindControl("idlbl") as Label;
            TextBox productcode = grid1.Rows[e.RowIndex].FindControl("productcodetxt") as TextBox;
            TextBox prodbrand = grid1.Rows[e.RowIndex].FindControl("prodbrandtxt") as TextBox;
            TextBox prodcategory = grid1.Rows[e.RowIndex].FindControl("prodcategorytxt") as TextBox;


            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from [products] where Id=@id1";
            cmd.Parameters.AddWithValue("@id1", l1.Text);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            grid1.EditIndex = -1;
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

        protected void SearchEvent(object sender, EventArgs e)
        {
            SearchProducts();
        }

        protected void grid1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grid1.PageIndex = e.NewPageIndex;
            this.SearchProducts();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            this.SearchProducts();
        }

        protected void CheckoutButton_Click(object sender, EventArgs e)
        {

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

        protected void grid1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}