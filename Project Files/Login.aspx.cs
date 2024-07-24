using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationFinal
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string connString = "Data Source=DESKTOP-H2PTUVD;Initial Catalog=StoreMyGoods;Integrated Security=True;";
            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand("SELECT UserID FROM [User] WHERE UserName=@username AND Password=@password", conn);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            conn.Open();
            object userID = cmd.ExecuteScalar();
            SqlCommand cmd2 = new SqlCommand("SELECT UserType FROM [User] WHERE UserName=@username AND Password=@password", conn);
            cmd2.Parameters.AddWithValue("@username", username);
            cmd2.Parameters.AddWithValue("@password", password);
            object userType = cmd2.ExecuteScalar();
            conn.Close();
            if (userID != null)
            {
                Session["UserID"] = userID.ToString();
                Session["UserType"] = userType;
                if (Session["UserType"].ToString() == "1")
                {
                    Response.Redirect("AdminMenu.aspx");
                }
                else
                    Response.Redirect("Menu.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid username or password!";
            }
        }
        protected void btnSign_UP(object sender, EventArgs e)
        {
            Response.Redirect("SignUP.aspx");
        }
    }
}