using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.ITSupportTechnician.ViewAssignedTickets
{
    public partial class ViewAssignedTickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ITSupport_Technician_Portal_Return_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/ITSupportTechnician/ITSupportTechnicianPortal/ITSupportTechnicianPortal.aspx");
        }

        protected void btn_Add_Ticket_Comments_Click(object sender, EventArgs e)
        {
            addComments();
        }

        protected void btn_Delete_Ticket_Click(object sender, EventArgs e)
        {
            deleteTicket();
        }

        protected void addComments()
        {
            var helpdeskDatabase = new AutoMotivationITSupportHelpdeskDatabaseEntities();
            var ITSupportTicketID = helpdeskDatabase.ITSupportTickets.Find(Convert.ToInt32(gv_Your_Assigned_Tickets.SelectedValue));
            ITSupportTicketID.ITSupportTicketComments = tbx_comments.Text;
            helpdeskDatabase.SaveChanges();
            gv_Your_Assigned_Tickets.DataBind();
        }
        protected void deleteTicket()
        {
            var helpdeskDatabase = new AutoMotivationITSupportHelpdeskDatabaseEntities();
            var ITSupportTicketID = helpdeskDatabase.ITSupportTickets.Find(Convert.ToInt32(gv_Your_Assigned_Tickets.SelectedValue));
            helpdeskDatabase.ITSupportTickets.Remove(ITSupportTicketID);
            helpdeskDatabase.SaveChanges();
            gv_Your_Assigned_Tickets.DataBind();
        }
    }
}