using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Management
{
    public partial class placeorder : System.Web.UI.Page
    {
        function fn = new function();
        String query;
        protected void Page_Load(object sender, EventArgs e)
        {
            loadData();

        }

        public void loadData()
        {
            query = "select * from items";
            DataSet ds = fn.getdata(query);
            allitem_grid.DataSource = ds;
            allitem_grid.DataBind();
        }

        protected void allitem_grid_SelectedIndexChanged(object sender, EventArgs e)
        {
            string item = allitem_grid.SelectedRow.Cells[2].Text.ToString();
            int money = int.Parse(allitem_grid.SelectedRow.Cells[3].Text.ToString());
            selected_item.Text = item;
            selected_price.Text = money.ToString();
             
        }

        public static int tsum = 0;
        protected void add_Click(object sender, EventArgs e)
        {
            tsum += int.Parse(price.Text);
            sum.Text = "Rs." + tsum;
            query = "insert into order_item (name, money, quantity, total) values ('" + selected_item.Text + "' , '" + selected_price.Text + "' , '" + quantity.Text + "' , '" + price.Text + "')";
            fn.setdata(query);
            order();
            clean();
        }

        public void clean()
        {
            selected_item.Text = "";
            selected_price.Text = "";
            quantity.Text = "";
            price.Text = "";
        }

        public void order()
        {
            query = "select * from order_item";
            DataSet ds = fn.getdata(query);
            orderitem_grid.DataSource = ds;
            orderitem_grid.DataBind();
        }

        protected void quantity_TextChanged(object sender, EventArgs e)
        {
            int quan = int.Parse(quantity.Text.ToString());
            int pric = int.Parse(selected_price.Text.ToString());
            int totalamo = (quan * pric);
            price.Text = totalamo.ToString();

        }

        protected void delete_order_Click(object sender, EventArgs e)
        {
            query = "delete from order_item";
            DataSet ds = fn.getdata(query);
            
            tsum = 0;
            sum.Text = "Rs." + tsum;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }
    }
}