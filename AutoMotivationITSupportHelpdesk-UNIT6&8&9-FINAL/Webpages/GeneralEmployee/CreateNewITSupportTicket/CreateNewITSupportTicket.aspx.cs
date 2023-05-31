using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;

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
            newSupportTicket.ITSupportTicketCategory = ddl_category.SelectedValue;
            newSupportTicket.ITSupportTicketPriority = ddl_priority.SelectedValue;
            newSupportTicket.ITSupportTicketDescription = tbx_Issue_Description.Text.Trim();
            newSupportTicket.GeneralEmployeeID = Convert.ToInt32(Session["GeneralEmployeeID"]);
            newSupportTicket.ITSupportTicketCreationTime = DateTime.Now;
            supportTicket.Add(newSupportTicket);
            helpdeskDatabase.SaveChanges();
            tbx_Issue_Subject.Enabled = false;
            ddl_category.Enabled = false;
            ddl_priority.Enabled = false;
            tbx_Issue_Description.Enabled = false;
            btn_Submit_Support_Ticket.Enabled = false;
            
            string alertmessage = "alert('New IT Support Ticket Created Successfully!');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", alertmessage, true);
           // twilliomessage();
            
        }

        protected void twilliomessage()
        {
            var accountSid = "";
            var authToken = "";
            string username = Session["GeneralEmployeeUsername"].ToString();
            
            
            TwilioClient.Init(accountSid, authToken);

            var messageOptions = new CreateMessageOptions(
              new PhoneNumber("+447922617611"));
            messageOptions.From = new PhoneNumber("+16206088321");
            messageOptions.Body = $"HI {username}! Thank you for submitting a support ticket to our IT support technicians. The department has received your support ticket and a technician will be assigned to the ticket shortly, we kindly ask you to please be patient while we work on your ticket. Many thanks AutoMotivation IT Department";


            var message = MessageResource.Create(messageOptions);
            Console.WriteLine(message.Body);
        }
    }
}