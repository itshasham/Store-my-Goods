using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ComplainApproval
{
    public partial class ComplainApproval : System.Web.UI.Page
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

            SqlCommand command = new SqlCommand("SELECT * FROM Complaints", connection);

            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);

            DataTable dataTable = new DataTable();

            dataAdapter.Fill(dataTable);

            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        protected void btnUpdateStatus_Click(object sender, EventArgs e)
        {
            
            string connectionString = "Data Source=DESKTOP-H2PTUVD;Initial Catalog=StoreMyGoods;Integrated Security=True;";
            SqlConnection connection = new SqlConnection(connectionString);

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox chkSelect = (CheckBox)GridView1.Rows[i].FindControl("chkSelect");
                if (chkSelect.Checked)
                {
                    int complaintId = Convert.ToInt32(GridView1.Rows[i].Cells[1].Text); // Assuming the complaint ID is in the second cell

                    SqlCommand updateCommand = new SqlCommand("UPDATE Complaints SET Status = 'Accepted' WHERE ComplaintId = @ComplaintId", connection);

                    updateCommand.Parameters.AddWithValue("@ComplaintId", complaintId);

                    try
                    {
                        connection.Open();
                        updateCommand.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        
                    }
                    finally
                    {
                        connection.Close();
                    }
                }
            }
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

