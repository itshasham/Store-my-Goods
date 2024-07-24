using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplicationFinal
{
    public partial class Complaint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btclick(object sender, EventArgs e)
        {
            string connString = "Data Source=DESKTOP-H2PTUVD;Initial Catalog=StoreMyGoods;Integrated Security=True;";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("SubmitComplaint", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserID"]);
                    cmd.Parameters.Add("@Description", SqlDbType.NVarChar).Value = TextBox2.Text;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            Response.Redirect("ComplaintPlaced.aspx");
        }

    }
}
