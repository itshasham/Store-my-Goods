using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationFinal
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void viewInventoryBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewInventory.aspx");
        }
        protected void InboundBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateInboundOrder.aspx");
        }
        protected void OutboundBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("OutboundOrder.aspx");
        }
        protected void Comp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Complaint.aspx");
        }
        protected void viewChargesBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewRent.aspx");
        }
    }
}