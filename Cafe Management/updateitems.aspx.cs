using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Management
{
    public partial class updateitems : System.Web.UI.Page
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
            updateitemgrid.DataSource = ds;
            updateitemgrid.DataBind();
        }

        protected void update_Click(object sender, EventArgs e)
        {
            query = "update items set item_name='"+itemname_text.Text+"', price="+price_value.Text+" where item_name='"+search_item.Text+"'";
            fn.setdata(query);
            loadData();

            itemname_text.Text = "";
            price_value.Text = "";
            search_item.Text = "";

        }

        protected void search_item_TextChanged(object sender, EventArgs e)
        {
            query = "select * from items where item_name like '" + search_item.Text + "%'";
            DataSet ds = fn.getdata(query);
            updateitemgrid.DataSource = ds;
            updateitemgrid.DataBind();
        }

        int id;
        protected void updateitemgrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            id = int.Parse(updateitemgrid.SelectedRow.Cells[1].Text.ToString());
            string item = updateitemgrid.SelectedRow.Cells[2].Text.ToString();
            float money = float.Parse(updateitemgrid.SelectedRow.Cells[3].Text.ToString());

            itemname_text.Text = item;
            price_value.Text = money.ToString();
            search_item.Text = item;
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }
    }
}