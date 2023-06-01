﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.Manager.CreateNewITSupportTechnicianAccount
{
    public partial class CreateNewITSupportTechnicianAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Create_Technician_Account_Click(object sender, EventArgs e)
        {
            createITSupportTechnicianAccount();
        }

        protected void createITSupportTechnicianAccount()
        {
            var HelpdeskDatabase = new AutoMotivationITSupportHelpdeskDatabaseEntities();
            var ITSupportTechnicianAccount = HelpdeskDatabase.ITSupportTechnicianAccounts;
            var ITSupportTechnician = new ITSupportTechnicianAccount();
            ITSupportTechnician.ITSupportTechnicianFirstName = tbx_First_Name.Text.Trim();
            ITSupportTechnician.ITSupportTechnicianLastName = tbx_Last_Name.Text.Trim();
            ITSupportTechnician.ITSupportTechnicianUsername = tbx_Username.Text.Trim();
            ITSupportTechnician.ITSupportTechnicianPassword = tbx_Password.Text.Trim();
            ITSupportTechnician.ITSupportTechnicianEmail = tbx_Email.Text.Trim();
            ITSupportTechnician.ITSupportTechnicianPhoneNumber = tbx_Phone_Number.Text.Trim();
            ITSupportTechnician.ITSupportTechnicianSpecialty = tbx_Technician_Specialty.Text.Trim();
            ITSupportTechnician.AccountCreationTime = DateTime.Now;
            ITSupportTechnicianAccount.Add(ITSupportTechnician);
            HelpdeskDatabase.SaveChanges();
            tbx_First_Name.Enabled = false;
            tbx_Last_Name.Enabled = false;
            tbx_Username.Enabled = false;
            tbx_Password.Enabled = false;
            tbx_Email.Enabled = false;
            tbx_Phone_Number.Enabled = false;
            tbx_Technician_Specialty.Enabled = false;
            btn_Create_Technician_Account.Enabled = false;
            string alertmessage = "alert('New IT Support Technician Account Created Successfully!');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", alertmessage, true);


        }

        protected void btn_Back_To_Portal_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Webpages/Manager/ManagerPortal/ManagerPortal.aspx");
        }
    }
}