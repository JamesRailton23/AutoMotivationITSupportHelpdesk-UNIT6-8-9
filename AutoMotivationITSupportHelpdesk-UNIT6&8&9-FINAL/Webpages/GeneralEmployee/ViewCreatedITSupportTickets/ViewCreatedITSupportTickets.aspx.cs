using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.GeneralEmployee.ViewCreatedITSupportTickets
{
    public partial class ViewCreatedITSupportTickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_General_Employee_Portal_Return_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/GeneralEmployee/GeneralEmployeePortal/GeneralEmployeePortal.aspx");
        }

       
    }
}