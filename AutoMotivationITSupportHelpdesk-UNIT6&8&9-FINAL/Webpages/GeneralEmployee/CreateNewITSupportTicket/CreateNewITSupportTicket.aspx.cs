﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.GeneralEmployee.CreateNewITSupportTicket
{
    public partial class CreateNewITSupportTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Submit_Support_Ticket_Click(object sender, EventArgs e)
        {
            CreateNewItSupportTicket();
        }

        protected void CreateNewItSupportTicket()
        {
            var helpdeskDatabase = new AutoMotivationITSupportHelpdeskDatabaseEntities();
            var supportTicket = helpdeskDatabase.ITSupportTickets;
            var newSupportTicket = new ITSupportTicket();
            newSupportTicket.ITSupportTicketSubject = tbx_Issue_Subject.Text.Trim();
            newSupportTicket.ITSupportTicketCategory = tbx_Issue_Category.Text.Trim();
            newSupportTicket.ITSupportTicketPriority = tbx_Issue_Priority.Text.Trim();
            newSupportTicket.ITSupportTicketDescription = tbx_Issue_Description.Text.Trim();
            newSupportTicket.GeneralEmployeeID = Convert.ToInt32(Session["GeneralEmployeeID"]);
            newSupportTicket.ITSupportTicketCreationTime = DateTime.Now;
            supportTicket.Add(newSupportTicket);
            helpdeskDatabase.SaveChanges();
            tbx_Issue_Subject.Enabled = false;
            tbx_Issue_Category.Enabled = false;
            tbx_Issue_Priority.Enabled = false;
            tbx_Issue_Description.Enabled = false;
            btn_Submit_Support_Ticket.Enabled = false;
            
            string alertmessage = "alert('New IT Support Ticket Created Successfully!');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", alertmessage, true);

            
        }
    }
}