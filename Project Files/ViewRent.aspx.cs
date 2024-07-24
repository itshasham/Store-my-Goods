using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplicationFinal
{
    public partial class ViewRent : System.Web.UI.Page
    {
        SqlConnection c = new SqlConnection("Data Source=DESKTOP-H2PTUVD;Initial Catalog=StoreMyGoods;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Charges",c);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void goBackbtn(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() == "1")
            {
                Response.Redirect("AdminMenu.aspx");
            }
            else
                Response.Redirect("Menu.aspx");
        }
    }
}