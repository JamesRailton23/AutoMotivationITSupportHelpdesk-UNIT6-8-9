using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.Manager.DeleteGeneralEmployeeAccount
{
    public partial class DeleteGeneralEmployeeAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Manager_Portal_Return_Click(object sender, EventArgs e)
        {
            Response.Redirect("../ManagerPortal/ManagerPortal.aspx");
        }

        protected void btn_Delete_General_Employee_Click(object sender, EventArgs e)
        {
            deleteEmployeeAccount();
        }

        protected void deleteEmployeeAccount()
        {
            var helpdeskDatabase = new AutoMotivationITSupportHelpdeskDatabaseEntities();
            var GeneralEmployee = helpdeskDatabase.GeneralEmployeeAccounts.Find(Convert.ToInt32(gv_Gerneral_Employees_Accounts.SelectedValue));
            helpdeskDatabase.GeneralEmployeeAccounts.Remove(GeneralEmployee);
            helpdeskDatabase.SaveChanges();
            gv_Gerneral_Employees_Accounts.DataBind();
            string alertmessage = "alert('General Employee Account Deleted Successfully!');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", alertmessage, true);

        }
    }
}