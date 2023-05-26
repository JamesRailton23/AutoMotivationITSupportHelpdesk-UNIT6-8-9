using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Account_Login_Click(object sender, EventArgs e)
        {
            var helpdeskDatabase = new AutoMotivationITSupportHelpdeskDatabaseEntities();
            var generalEmployeeAccount = helpdeskDatabase.GeneralEmployeeAccounts;
            var managerAccount = helpdeskDatabase.ManagerAccounts;
            var ITSupportTechnicianAccount = helpdeskDatabase.ITSupportTechnicianAccounts;

            foreach (var generalEmployee in generalEmployeeAccount)
            {
                if (generalEmployee.GeneralEmployeeUsername == tbx_Username.Text.Trim() && generalEmployee.GeneralEmployeePassword == tbx_Password.Text.Trim())
                {
                    Session["GeneralEmployeeUsername"] = generalEmployee.GeneralEmployeeUsername;
                    Session["GeneralEmployeeID"] = generalEmployee.GeneralEmployeeID;
                    Response.Redirect("../GeneralEmployee/GeneralEmployeePortal/GeneralEmployeePortal.aspx");
                }
            }
            foreach (var ITSupportTechnician in ITSupportTechnicianAccount)
            {
                if (ITSupportTechnician.ITSupportTechnicianUsername == tbx_Username.Text.Trim() && ITSupportTechnician.ITSupportTechnicianPassword == tbx_Password.Text.Trim())
                {
                    Session["ITSupportTechnicianUsername"] = ITSupportTechnician.ITSupportTechnicianUsername;
                    Session["ITSupportTechnicianID"] = ITSupportTechnician.ITSupportTechnicianID;
                    Response.Redirect("../ITSupportTechnician/ITSupportTechnicianPortal/ITSupportTechnicianPortal.aspx");
                }
            }
            foreach (var manager in managerAccount)
            {
                if (manager.ManagerUsername == tbx_Username.Text.Trim() && manager.ManagerPassword == tbx_Password.Text.Trim())
                {
                    Session["ManagerUsername"] = manager.ManagerUsername;
                    Session["ManagerID"] = manager.ManagerID;
                    Response.Redirect("../Manager/ManagerPortal/ManagerPortal.aspx");
                }
            }
        }
    }
}