using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationFinal
{
    public partial class AdminMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void appOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("ApproveOrder.aspx");
        }
        protected void Comp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Complaint.aspx");
        }
        protected void RecordBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentRecord.aspx");
        }
        protected void viewChargesBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewRent.aspx");
        }
        protected void Modify_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModifyInventory.aspx");
        }
        protected void Complaint_Click(object sender, EventArgs e)
        {
            Response.Redirect("ComplainApproval.aspx");
        }
        

    }
}