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
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
         
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
            cmd.CommandText = "select * from [customers]";
            cmd.Connection = con;

            con.Close();
        }


        private void user() 
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();

            DateTime dateTimeVariable = DateTime.Now;



            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM customers WHERE uname = '" + username.Text + "' AND pword = '" + password.Text + "'";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                sdr.Read();
                userID.Text = sdr["Id"].ToString();
                Session["user_id"] = userID.Text;
            }
      

            con.Close();
        }
 



        protected void btn1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mydbConnectionString"].ToString();
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM customers WHERE uname = '" + username.Text + "' AND pword = '" + password.Text + "'", con);
            /* in above line the program is selecting the whole data from table and the matching it with the user name and password provided by user. */
            DataTable dt = new DataTable(); //this is creating a virtual table  
            sda.Fill(dt);

            if (dt.Rows[0][0].ToString() == "1")
            {
                /* I have made a new page called home page. If the user is successfully authenticated then the form will be moved to the next form */
                //  this.Hide();
                //  new home().Show();

          
                user();
                Response.Redirect("CustomerOrder.aspx");
            }
            else {
                //MessageBox.Show("Invalid username or password");
                Label2.Visible = true;
            }

            con.Close();

        }





     
        }
    }
