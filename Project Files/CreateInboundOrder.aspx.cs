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
    public partial class CreateInboundOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string connString = "Data Source=DESKTOP-H2PTUVD;Initial Catalog=StoreMyGoods;Integrated Security=True;";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("Create Inbound Order", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = Convert.ToInt32(Session["UserID"]);
                    cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = TextBox2.Text;
                    cmd.Parameters.Add("@ArrivalDate", SqlDbType.DateTime).Value = Calendar1.SelectedDate;
                    cmd.Parameters.Add("@GoodsType", SqlDbType.Int).Value = DropDownList1.SelectedValue;
                    cmd.Parameters.Add("@Length", SqlDbType.Float).Value = Convert.ToDouble(TextBox3.Text);
                    cmd.Parameters.Add("@Width", SqlDbType.Float).Value = Convert.ToDouble(TextBox4.Text);
                    cmd.Parameters.Add("@Height", SqlDbType.Float).Value = Convert.ToDouble(TextBox5.Text);
                    cmd.Parameters.Add("@ExpiryDate", SqlDbType.DateTime).Value = Calendar2.SelectedDate;
                    cmd.Parameters.Add("@Quantity", SqlDbType.Int).Value = Convert.ToInt32(TextBox6.Text);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            Response.Redirect("OrderPlaced.aspx");
        }
    }
}