using System;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class ViewInventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            string connString = "Data Source=DESKTOP-H2PTUVD;Initial Catalog=StoreMyGoods;Integrated Security=True;";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Inventory", conn))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int goodsId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            GridViewRow row = GridView1.Rows[e.RowIndex];
            string name = (row.Cells[2].Controls[0] as TextBox).Text;
            DateTime inboundDate;
            if (!DateTime.TryParse((row.Cells[3].Controls[0] as TextBox).Text, out inboundDate))
            {
                lblMessage.Text = "Invalid Inbound Date format. Please use a valid date format like yyyy-MM-dd or MM/dd/yyyy.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }
            int userId = Convert.ToInt32((row.Cells[4].Controls[0] as TextBox).Text);
            int goodsType = Convert.ToInt32((row.Cells[5].Controls[0] as TextBox).Text);
            int storageSection = Convert.ToInt32((row.Cells[6].Controls[0] as TextBox).Text);
            int rateId = Convert.ToInt32((row.Cells[7].Controls[0] as TextBox).Text);
            float volume = Convert.ToSingle((row.Cells[8].Controls[0] as TextBox).Text);
            DateTime expiryDate;
            if (!DateTime.TryParse((row.Cells[9].Controls[0] as TextBox).Text, out expiryDate))
            {
                lblMessage.Text = "Invalid Expiry Date format. Please use a valid date format like yyyy-MM-dd or MM/dd/yyyy.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }
            int qty = Convert.ToInt32((row.Cells[10].Controls[0] as TextBox).Text);

            UpdateInventoryItem(goodsId, name, inboundDate, userId, goodsType, storageSection, rateId, volume, expiryDate, qty);

            GridView1.EditIndex = -1;
            BindGridView();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGridView();
        }




        private void UpdateInventoryItem(int goodsId, string name, DateTime inboundDate, int userId, int goodsType, int storageSection, int rateId, float volume, DateTime expiryDate, int qty)
        {
            string connString = "Data Source=DESKTOP-H2PTUVD;Initial Catalog=StoreMyGoods;Integrated Security=True;";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE Inventory SET Name = @Name, InboundDate = @InboundDate, UserID = @UserID, GoodsType = @GoodsType, StorageSection = @StorageSection, RateId = @RateId, Volume = @Volume, ExpiryDate = @ExpiryDate, Qty = @Qty WHERE GoodsId = @GoodsId;", conn))
                {
                    cmd.Parameters.AddWithValue("@GoodsId", goodsId);
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@InboundDate", inboundDate);
                    cmd.Parameters.AddWithValue("@UserID", userId);
                    cmd.Parameters.AddWithValue("@GoodsType", goodsType);
                    cmd.Parameters.AddWithValue("@StorageSection", storageSection);
                    cmd.Parameters.AddWithValue("@RateId", rateId);
                    cmd.Parameters.AddWithValue("@Volume", volume);
                    cmd.Parameters.AddWithValue("@ExpiryDate", expiryDate);
                    cmd.Parameters.AddWithValue("@Qty", qty);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
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