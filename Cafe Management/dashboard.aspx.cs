using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Management
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void place_order_Click(object sender, EventArgs e)
        {
            Response.Redirect("placeorder.aspx");
        }

        protected void add_items_Click(object sender, EventArgs e)
        {
            Response.Redirect("additems.aspx");
        }

        protected void update_items_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateitems.aspx");
        }

        protected void remove_items_Click(object sender, EventArgs e)
        {
            Response.Redirect("removeitems.aspx");
        }
    }
}