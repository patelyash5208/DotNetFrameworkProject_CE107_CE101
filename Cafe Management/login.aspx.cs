using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Cafe_Management
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
                con.Open();
                string insert = "insert into [user] (username, password) values (@uname, @pass)";
                SqlCommand com = new SqlCommand(insert, con);
                com.Parameters.AddWithValue("@uname", username_text.Text);
                com.Parameters.AddWithValue("@pass", password_text.Text);
                com.ExecuteNonQuery();
                Response.Redirect("dashboard.aspx");
                Response.Write("Login successful !!!"); 

                con.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.Message);
            }
        }
    }
}