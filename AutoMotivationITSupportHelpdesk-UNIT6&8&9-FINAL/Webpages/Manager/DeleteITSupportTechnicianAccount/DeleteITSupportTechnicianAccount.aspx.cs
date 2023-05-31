using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.Manager.DeleteITSupportTechnicianAccount
{
    public partial class DeleteITSupportTechnicianAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Manager_Portal_Return_Click(object sender, EventArgs e)
        {
            Response.Redirect("../ManagerPortal/ManagerPortal.aspx");
        }

        protected void btn_Delete_Technician_Click(object sender, EventArgs e)
        {
            deleteAccount();
        }

        protected void deleteAccount()
        {
            var helpdeskDatabase = new AutoMotivationITSupportHelpdeskDatabaseEntities();
            var ITSupportTechnician = helpdeskDatabase.ITSupportTechnicianAccounts.Find(Convert.ToInt32(gv_ITSupport_Technicians_Account.SelectedValue));
            helpdeskDatabase.ITSupportTechnicianAccounts.Remove(ITSupportTechnician);
            helpdeskDatabase.SaveChanges();
            gv_ITSupport_Technicians_Account.DataBind();
            string alertmessage = "alert('IT Support Technician Account Deleted Successfully!');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", alertmessage, true);
        }
    }
}