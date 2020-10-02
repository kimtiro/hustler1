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
    public partial class adminorders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindgrid();
                //  SearchCustomers();
            }
        }

        private void bindgrid()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand();      //
            cmd.CommandText = "select customerorders.or_id as or_id, customerorders.or_date as or_date,customerorders.qty as qty , CONCAT(customers.fname ,' ',customers.lname) as customerID, products.productcode as productID from customerorders join customers on customerorders.customerID = customers.Id join products on customerorders.prodID = products.Id";
            cmd.Connection = con;

            SqlDataReader rd = cmd.ExecuteReader();
            grid1.DataSource = rd;
            grid1.DataBind();
            con.Close();
        }

        protected void grid1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label l1 = grid1.Rows[e.RowIndex].FindControl("idlbl") as Label;
            Label or_id = grid1.Rows[e.RowIndex].FindControl("orderdatelbl") as Label;
            Label customerlbl = grid1.Rows[e.RowIndex].FindControl("customer") as Label;
            Label productlbl = grid1.Rows[e.RowIndex].FindControl("product") as Label;
            Label qty = grid1.Rows[e.RowIndex].FindControl("qtylbl") as Label;


            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from [customerorders] where or_id=@id1";
            cmd.Parameters.AddWithValue("@id1", l1.Text);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
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

        protected void grid1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grid1.EditIndex = e.NewEditIndex;
            bindgrid();
        }



        protected void grid1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            grid1.EditIndex = -1;
            bindgrid();
        }

        protected void grid1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            grid1.EditIndex = e.NewEditIndex;
            bindgrid();
        }

    }
}