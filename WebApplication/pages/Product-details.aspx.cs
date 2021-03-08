using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication.pages
{
    public partial class Product_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
                return;
            string searchTerm = Request.QueryString["id"];

            string conn_str = @"server=DESKTOP-LNBE6AT\SQLEXPRESS;database=test;uid=sa;pwd=Abc@12345;";
            SqlConnection con = new SqlConnection(conn_str);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Product where Id = " + searchTerm, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                img1.ImageUrl = dr["ImageURL"].ToString();
                lblName.Text = dr["Name"].ToString();
                lblDescription.Text = dr["Description"].ToString();
                lblPrice.Text = dr["Price"].ToString();
            }
        }
    }
}