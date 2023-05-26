using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.GeneralEmployee.GeneralEmployeeChangeAccount
{
    public partial class GeneralEmployeeChangeAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Change_Employee_Account_Details_Click(object sender, EventArgs e)
        {
            updateDetails();
        }

        protected void updateDetails()
        {
            var helpdeskDatabase = new AutoMotivationITSupportHelpdeskDatabaseEntities();
            var generalEmployee = helpdeskDatabase.GeneralEmployeeAccounts.Find(Convert.ToInt32(Session["GeneralEmployeeID"]));
           generalEmployee.GeneralEmployeeEmail = tbx_Email.Text.Trim();
           generalEmployee.GeneralEmployeePhoneNumber = tbx_Phone_Number.Text.Trim();
           generalEmployee.GeneralEmployeePassword = tbx_Password.Text.Trim();
           generalEmployee.GeneralEmployeeUsername = tbx_Username.Text.Trim();
           helpdeskDatabase.SaveChanges();
           gv_Employee_Account_Details.DataBind();


        }
    }
}