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
    public partial class customermanageorders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           customerID.Text = Session["user_id"].ToString();
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
            cmd.CommandText = "select customerorders.or_id as or_id, customerorders.or_date as or_date,customerorders.qty as qty , products.productcode as productID from customerorders join products on customerorders.prodID = products.Id where customerorders.customerID = @customerID order by or_id desc";
            cmd.Parameters.AddWithValue("@customerID", customerID.Text);
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
            Label or_date = grid1.Rows[e.RowIndex].FindControl("order_date") as Label;
            Label customerlbl = grid1.Rows[e.RowIndex].FindControl("customerID") as Label;
            TextBox producttxt = grid1.Rows[e.RowIndex].FindControl("productID") as TextBox;
            TextBox qty = grid1.Rows[e.RowIndex].FindControl("qty") as TextBox;


            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update [customerorders] set qty=@qty where or_id=@id1";
            cmd.Parameters.AddWithValue("@id1", l1.Text);

            cmd.Parameters.AddWithValue("@qty", qty.Text);

            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            grid1.EditIndex = -1;
            bindgrid();
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

        protected void Button6_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("registration.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerOrder.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("customermanageorders.aspx");
        }
    }
}