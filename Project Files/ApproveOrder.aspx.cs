using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationFinal
{
    public partial class ApproveOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }
        protected void BindGridView()
        {
            string connectionString = "Data Source=DESKTOP-H2PTUVD;Initial Catalog=StoreMyGoods;Integrated Security=True;";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand("SELECT * FROM [To Be Approved]", connection);

            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);

            DataTable dataTable = new DataTable();

            dataAdapter.Fill(dataTable);

            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
        protected void btnApprove_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-H2PTUVD;Initial Catalog=StoreMyGoods;Integrated Security=True;";
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox chkApprove = (CheckBox)GridView1.Rows[i].FindControl("chkApprove"); // Corrected ID
                if (chkApprove.Checked)
                {
                    int orderID = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text);
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        using (SqlCommand command = new SqlCommand("approveOrder", connection))
                        {
                            command.CommandType = CommandType.StoredProcedure;

                            command.Parameters.Add("@OrderID", SqlDbType.Int).Value = orderID;

                            connection.Open();
                            command.ExecuteNonQuery();
                        }
                    }
                }
            }
            // Refresh the GridView
            BindGridView();
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