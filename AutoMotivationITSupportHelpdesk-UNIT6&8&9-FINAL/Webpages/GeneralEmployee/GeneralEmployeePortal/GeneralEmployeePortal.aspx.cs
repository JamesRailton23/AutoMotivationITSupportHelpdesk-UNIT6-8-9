using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.GeneralEmployee.GeneralEmployeePortal
{
    public partial class GeneralEmployeePortal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //lb_Username.Text = Session["GeneralEmployeeUsername"].ToString();
        }

        protected void btn_New_Support_Ticket_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/GeneralEmployee/CreateNewITSupportTicket/CreateNewITSupportTicket.aspx");
        }

        protected void btn_View_Tickets_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/GeneralEmployee/ViewCreatedITSupportTickets/ViewCreatedITSupportTickets.aspx");
        }

        protected void btn_Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/Default/Default.aspx");
            Session.Abandon();
        }

        protected void btn_Change_Account_Details_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/GeneralEmployee/GeneralEmployeeChangeAccount/GeneralEmployeeChangeAccount.aspx");
        }
    }
}