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
        function fn = new function();
        String query;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void add_item_Click(object sender, EventArgs e)
        {
            query = "insert into items (item_name,price) values ('"+itemname_text.Text+ "' , '" + price_text.Text + "')";
            fn.setdata(query);
            clearall();
            Response.Write("<script>alert('Item Added Successfully !!!')</script>");
        }
        public void clearall()
        {
            itemname_text.Text = "";
            price_text.Text = "";
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }
    }
}