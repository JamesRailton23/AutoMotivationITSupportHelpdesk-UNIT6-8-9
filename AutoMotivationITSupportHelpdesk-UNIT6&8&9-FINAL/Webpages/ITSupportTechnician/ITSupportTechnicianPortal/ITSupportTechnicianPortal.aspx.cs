using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.ITSupportTechnician.ITSupportTechnicianPortal
{
    public partial class ITSupportTechnicianPortal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           lb_Username.Text = Session["ITSupportTechnicianUsername"].ToString();
        }

        protected void btn_Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/Default/Default.aspx");
            Session.Clear();
        }

        protected void btn_Technicians_Assign_Tickets_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/ITSupportTechnician/AssignSupportTickets/AssignSupportTickets.aspx");
        }

        protected void btn_View_Assigned_Tickets_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/ITSupportTechnician/ViewAssignedTickets/ViewAssignedTickets.aspx");
        }
    }
}