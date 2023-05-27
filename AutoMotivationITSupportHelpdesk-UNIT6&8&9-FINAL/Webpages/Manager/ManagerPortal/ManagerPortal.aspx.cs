using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.Manager.ManagerPortal
{
    public partial class ManagerPortal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lb_name.Text = Session["ManagerID"].ToString();
        }

        protected void btn_View_All_Tickets_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/Manager/ViewAllSubmittedTickets/ViewAllSubmittedTickets.aspx");
        }

        protected void btn_Create_Technician_Account_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/Manager/CreateNewITSupportTechnicianAccount/CreateNewITSupportTechnicianAccount.aspx");
        }

        protected void btn_Delete_Technician_Account_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/Manager/DeleteITSupportTechnicianAccount/DeleteITSupportTechnicianAccount.aspx");
        }

        protected void btn_Delete_General_Employee_Account_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/Manager/DeleteGeneralEmployeeAccount/DeleteGeneralEmployeeAccount.aspx");
        }

        protected void btn_Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Webpages/Default/Default.aspx");
            Session.Abandon();
        }
    }
}