//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class ITSupportTicket
    {
        public int ITSupportTicketID { get; set; }
        public Nullable<int> GeneralEmployeeID { get; set; }
        public Nullable<int> ITSupportTechnicianID { get; set; }
        public string ITSupportTicketPriority { get; set; }
        public string ITSupportTicketCategory { get; set; }
        public string ITSupportTicketSubject { get; set; }
        public string ITSupportTicketDescription { get; set; }
        public System.DateTime ITSupportTicketCreationTime { get; set; }
        public string ITSupportTicketComments { get; set; }
    
        public virtual GeneralEmployeeAccount GeneralEmployeeAccount { get; set; }
        public virtual ITSupportTechnicianAccount ITSupportTechnicianAccount { get; set; }
    }
}
