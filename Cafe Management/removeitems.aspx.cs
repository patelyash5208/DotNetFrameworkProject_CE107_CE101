using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cafe_Management
{
    public partial class removeitems : System.Web.UI.Page
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
            deleteitemgrid.DataSource = ds;
            deleteitemgrid.DataBind();
        }

        protected void delete_item_TextChanged(object sender, EventArgs e)
        {
            query = "select * from items where item_name like '" + delete_item.Text + "%'";
            DataSet ds = fn.getdata(query);
            deleteitemgrid.DataSource = ds;
            deleteitemgrid.DataBind();
        }

        protected void deleteitemgrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            string item = deleteitemgrid.SelectedRow.Cells[2].Text.ToString();
            delete_item.Text = item;
            Response.Write("<script>alert('Are you Sure you want to delete selected item ?')</script>");
            query = "delete from items where item_name = '"+delete_item.Text+"'";
            DataSet ds = fn.getdata(query);
            loadData();
            delete_item.Text = "";
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }
    }
}