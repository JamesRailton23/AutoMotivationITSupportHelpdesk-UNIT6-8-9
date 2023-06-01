using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.GeneralEmployee.CreateNewGeneralEmployeeAccount
{
    public partial class CreateNewGeneralEmployeeAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Submit_General_Employee_Account_Click(object sender, EventArgs e)
        {
            CreateNewAccount();
        }

        protected void CreateNewAccount()
        {
            //This method creates a new account for a general employee.
            var helpdeskDatabase = new AutoMotivationITSupportHelpdeskDatabaseEntities();
            var generalEmployeeAccount = helpdeskDatabase.GeneralEmployeeAccounts;
            var newGeneralEmployee = new GeneralEmployeeAccount();
            newGeneralEmployee.GeneralEmployeeFirstName = tbx_First_Name.Text.Trim();
            newGeneralEmployee.GeneralEmployeeLastName = tbx_Last_Name.Text.Trim();
            newGeneralEmployee.GeneralEmployeeEmail = tbx_Email.Text.Trim();
            newGeneralEmployee.GeneralEmployeeUsername = tbx_Username.Text.Trim();
            newGeneralEmployee.GeneralEmployeePassword = tbx_Password.Text.Trim();
            newGeneralEmployee.GeneralEmployeePhoneNumber = tbx_Phone_Number.Text.Trim();
            newGeneralEmployee.AccountCreationTime = DateTime.Now;
            generalEmployeeAccount.Add(newGeneralEmployee);
            helpdeskDatabase.SaveChanges();
            tbx_First_Name.Enabled = false;
            tbx_Last_Name.Enabled = false;
            tbx_Email.Enabled = false;
            tbx_Username.Enabled = false;
            tbx_Password.Enabled = false;
            tbx_Phone_Number.Enabled = false;
            btn_Submit_General_Employee_Account.Enabled = false;

            string alertmessage = "alert('New General Employee Account Created Successfully!');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", alertmessage, true);


        }

        protected void btn_Back_To_Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Webpages/Default/Default.aspx");
        }
    }
}