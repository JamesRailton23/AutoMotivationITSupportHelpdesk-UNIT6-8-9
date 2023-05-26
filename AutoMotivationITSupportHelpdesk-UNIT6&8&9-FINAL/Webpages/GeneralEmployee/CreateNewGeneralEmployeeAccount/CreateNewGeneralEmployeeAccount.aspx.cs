﻿using System;
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
        }
    }
}