using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;

namespace WebApplicationFinal
{
    public partial class SignUP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void signUpButton_Click(object sender, EventArgs e)
        {
            string connString = "Data Source=DESKTOP-H2PTUVD;Initial Catalog=StoreMyGoods;Integrated Security=True;";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("SignUp", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", username.Text);
                    cmd.Parameters.AddWithValue("@FirstName", firstname.Text);
                    cmd.Parameters.AddWithValue("@LastName", lastname.Text);
                    cmd.Parameters.AddWithValue("@Password", password.Text);
                    cmd.Parameters.AddWithValue("@UserType", category.SelectedValue);
                    cmd.Parameters.AddWithValue("@Cnic", cnic.Text);
                    cmd.Parameters.AddWithValue("@dob", birthdate.Text);
                    cmd.Parameters.AddWithValue("@PhoneNo", phoneno.Text);
                    cmd.Parameters.AddWithValue("@City", cityname.Text);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            Response.Redirect("MainPage.aspx");
        }
    }
}