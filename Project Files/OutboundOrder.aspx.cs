using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication4
{
    public partial class OutboundOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCreateOrder_Click(object sender, EventArgs e)
        {
            int goodsID = Convert.ToInt32(txtGoodsID.Text);
            DateTime departureDate = calDepartureDate.SelectedDate;
            int quantity = Convert.ToInt32(txtQuantity.Text);
            int userID = Convert.ToInt32(Session["UserID"]);

            string connectionString = "Data Source=DESKTOP-H2PTUVD;Initial Catalog=StoreMyGoods;Integrated Security=True;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("Create Outbound Order", connection))
                {
                    command.CommandType = System.Data.CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@GoodsID", goodsID);
                    command.Parameters.AddWithValue("@DepartureDate", departureDate);
                    command.Parameters.AddWithValue("@Quantity", quantity);
                    command.Parameters.AddWithValue("@UserID", userID);

                    connection.Open();
                    try
                    {
                        command.ExecuteNonQuery();
                        Response.Redirect("OrderPlaced.aspx");
                    }
                    catch (SqlException ex)
                    {
                        if (ex.Number == 50000)
                        {
                            // Handle insufficient quantity exception
                            lblMessage.Text = "Insufficient quantity available in inventory. Please try again.";
                        }
                        else
                        {
                            // Handle other exceptions if necessary
                            lblMessage.Text = "An error occurred. Please try again.";
                        }
                    }
                }
            }
        }
    }
}
