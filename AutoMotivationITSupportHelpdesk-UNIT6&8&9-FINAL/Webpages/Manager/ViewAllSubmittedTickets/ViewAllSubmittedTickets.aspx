﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAllSubmittedTickets.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.Manager.ViewAllSubmittedTickets.ViewAllSubmittedTickets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container my-5 bg-dark rounded shadow p-5" style="font-family: 'IBM Plex Sans', sans-serif; background-color: #d3d3d3">
            <div class="row p-4">
                <h1 class="lead text-center display-5 p-4 bg-white rounded fw-bold">Tickets</h1>
            </div>
            <div class="row p-4 justify-content-center">
                <asp:GridView ID="gv_All_Support_Tickets" runat="server" CssClass=" justify-content-center align-content-center" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="ITSupportTicketID" DataSourceID="sql_ITSupport_Tickets">
                    <Columns>
                        <asp:BoundField DataField="ITSupportTicketID" HeaderText="TicketID" InsertVisible="False" ReadOnly="True" SortExpression="ITSupportTicketID" />
                        <asp:BoundField DataField="GeneralEmployeeID" HeaderText="EmployeeID" SortExpression="GeneralEmployeeID" />
                        <asp:BoundField DataField="ITSupportTechnicianID" HeaderText="TechnicianID" SortExpression="ITSupportTechnicianID" />
                        <asp:BoundField DataField="ITSupportTicketPriority" HeaderText="Priority" SortExpression="ITSupportTicketPriority" />
                        <asp:BoundField DataField="ITSupportTicketCategory" HeaderText="Category" SortExpression="ITSupportTicketCategory" />
                        <asp:BoundField DataField="ITSupportTicketSubject" HeaderText="Subject" SortExpression="ITSupportTicketSubject" />
                        <asp:BoundField DataField="ITSupportTicketDescription" HeaderText="Description" SortExpression="ITSupportTicketDescription" />
                        <asp:BoundField DataField="ITSupportTicketCreationTime" HeaderText="CreationTime" SortExpression="ITSupportTicketCreationTime" />
                        <asp:BoundField DataField="ITSupportTicketComments" HeaderText="Comments" SortExpression="ITSupportTicketComments" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
            <div class="row p-4">
                <h3>Return back to manager portal</h3>
                <asp:Button ID="btn_Manager_Portal_Return" runat="server" Text="RETURN TO PORTAL" CssClass="btn btn-secondary" OnClick="btn_Manager_Portal_Return_Click"/>
            </div>
        </div>
        <br />
        <asp:SqlDataSource ID="sql_ITSupport_Tickets" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ITSupportTicket]"></asp:SqlDataSource>
    </form>
</body>
</html>