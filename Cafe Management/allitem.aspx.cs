using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Cafe_Management
{
    public partial class allitem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
            try
            {
                using(con)
                {
                    string allitem = "select * from items";
                    SqlCommand cmd = new SqlCommand(allitem, con);
                    con.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    allitemgrid.DataSource = rd;
                    allitemgrid.DataBind();
                    rd.Close();
                    
                }
            }
            catch (Exception ex)
            {
                Response.Write("errors:" + ex.Message);
            }
        }

        protected void backitemadd_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }
    }
}