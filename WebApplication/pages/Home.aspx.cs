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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conn_str = @"server=DESKTOP-LNBE6AT\SQLEXPRESS;database=test;uid=sa;pwd=Abc@12345;";
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Product", conn_str);
                DataSet ds = new DataSet();
                da.Fill(ds, "Product");

                rptProducts.DataSource = ds.Tables["Product"];
                rptProducts.DataBind();
            }
        }
    }
}