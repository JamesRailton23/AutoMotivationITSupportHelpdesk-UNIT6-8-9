<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignSupportTickets.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.ITSupportTechnician.AssignSupportTickets.AssignSupportTickets" %>

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
        <div class="container-lg my-5 rounded shadow" style="font-family: 'IBM Plex Sans', sans-serif; background-color:#d3d3d3">
            <div class="p-3 p-lg-4">
                <div class="row align-content-center justify-content-center text-center text-center bg-dark text-white p-4 mb-2 rounded">
                    <h1 class="display-5">Assign yourself a ticket</h1>
                </div>
                <div class="row text-center align-content-center justify-content-center">
                    <div class="card text-center my-2" style="width: 70rem;">
                        <div class="card-body">
                            <h5 class="card-title text-decoration-underline fw-bold">Tickets</h5>
                            <p>List of all the tickets within the system</p>
                            <asp:GridView ID="gv_Tickets" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="SupportTicketID" DataSourceID="sql_tickets" ForeColor="Black" HorizontalAlign="Center">
                                <Columns>
                                    <asp:BoundField DataField="SupportTicketID" HeaderText="SupportTicketID" InsertVisible="False" ReadOnly="True" SortExpression="SupportTicketID" />
                                    <asp:BoundField DataField="TicketPriority" HeaderText="TicketPriority" SortExpression="TicketPriority" />
                                    <asp:BoundField DataField="TicketCategory" HeaderText="TicketCategory" SortExpression="TicketCategory" />
                                    <asp:BoundField DataField="TicketSubject" HeaderText="TicketSubject" SortExpression="TicketSubject" />
                                    <asp:BoundField DataField="CreationTime" HeaderText="CreationTime" SortExpression="CreationTime" />
                                    <asp:BoundField DataField="TechnicianID" HeaderText="TechnicianID" SortExpression="TechnicianID" />
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
                            <br />
                            <asp:SqlDataSource ID="sql_tickets" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [SupportTicketID], [TicketPriority], [TicketCategory], [TicketSubject], [CreationTime], [TechnicianID] FROM [SupportTicket]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="card text-center my-2" style="width: 70rem;">
                    </div>
                            <br />
                            <br />
                            <br />
                            <br />
                            <div class="card text-center my-2" style="width: 70rem;">
                                <div class="row align-content-center justify-content-center p-4">
                                    <h3>Return back to IT Support technician portal</h3>
                                    <asp:Button ID="btn_ITSupport_Technician_Portal_Return" runat="server" Text="RETURN TO PORTAL" CssClass="btn btn-secondary" OnClick="btn_ITSupport_Technician_Portal_Return_Click"/>
                                </div>
                            </div>
                        </div>

            </div>
        </div>
    </form>
</body>
</html>