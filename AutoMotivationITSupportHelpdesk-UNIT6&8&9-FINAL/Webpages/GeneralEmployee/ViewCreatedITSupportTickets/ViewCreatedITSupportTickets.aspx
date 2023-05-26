<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCreatedITSupportTickets.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.GeneralEmployee.ViewCreatedITSupportTickets.ViewCreatedITSupportTickets" %>

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
        <div class="container my-5 bg-dark rounded shadow p-5">
            <div class="row p-4">
                <h1 class="lead text-center display-5 p-4 bg-white rounded fw-bold" style="font-family: 'IBM Plex Sans', sans-serif; background-color: #d3d3d3">Your Tickets</h1>
            </div>
            <div class="row p-4 justify-content-center">
                <asp:GridView ID="gv_Your_Created_Tickets" runat="server" CssClass=" justify-content-center align-content-center" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Center" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SupportTicketID" DataSourceID="sql_guvt">
                    <Columns>
                        <asp:BoundField DataField="SupportTicketID" HeaderText="SupportTicketID" InsertVisible="False" ReadOnly="True" SortExpression="SupportTicketID" />
                        <asp:BoundField DataField="TicketPriority" HeaderText="TicketPriority" SortExpression="TicketPriority" />
                        <asp:BoundField DataField="TicketCategory" HeaderText="TicketCategory" SortExpression="TicketCategory" />
                        <asp:BoundField DataField="TicketSubject" HeaderText="TicketSubject" SortExpression="TicketSubject" />
                        <asp:BoundField DataField="TicketDescription" HeaderText="TicketDescription" SortExpression="TicketDescription" />
                        <asp:BoundField DataField="CreationTime" HeaderText="CreationTime" SortExpression="CreationTime" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                        <asp:BoundField DataField="TechnicianID" HeaderText="TechnicianID" SortExpression="TechnicianID" />
                        <asp:BoundField DataField="TicketComments" HeaderText="TicketComments" SortExpression="TicketComments" />
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
                <h3>Return back to general employee portal</h3>
                <asp:Button ID="btn_General_Employee_Portal_Return" runat="server" Text="RETURN TO PORTAL" CssClass="btn btn-secondary" OnClick="btn_General_Employee_Portal_Return_Click"/>
            </div>
        </div>
        <asp:SqlDataSource ID="sql_General_User_Tickets" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [SupportTicket] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </form>
</body>
</html>