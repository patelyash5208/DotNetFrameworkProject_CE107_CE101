using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Cafe_Management
{
    public partial class additems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            

        }

        protected void add_item_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
                con.Open();
                string insert = "insert into items (item_name, price) values (@iname, @price)";
                SqlCommand com = new SqlCommand(insert, con);
                com.Parameters.AddWithValue("@iname", itemname_text.Text);
                com.Parameters.AddWithValue("@price", price_text.Text);
                com.ExecuteNonQuery();

                con.Close();

                
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.Message);
            }
            
            Response.Redirect("allitem.aspx");
        }
    }
}