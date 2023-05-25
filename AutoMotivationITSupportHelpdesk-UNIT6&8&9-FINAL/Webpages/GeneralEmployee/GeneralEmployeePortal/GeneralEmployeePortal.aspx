<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GeneralEmployeePortal.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.GeneralEmployee.GeneralEmployeePortal.GeneralEmployeePortal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-lg bg-dark my-5 p-3 rounded shadow">
            <div class="p-3">
                <h3 class="text-center p-3 fw-bold bg-light rounded fw-bold text-decoration-underline" style="font-family: 'IBM Plex Sans', sans-serif; background-color: #d3d3d3">Hello! <asp:Label ID="lb_name" runat="server"></asp:Label>    &nbsp;these are your Services</h3>
                <div class="card-group">
                    <div class="card text-center rounded-start">
                        <asp:Image ID="img_newTicket" runat="server" ImageUrl="ticket_icon.png" Width="500" Height="500" CssClass="card-img-top" />
                        <div class="card-body d-flex flex-column justify-content-center align-content-center">
                            <h5 class="card-title fw-bold text-decoration-underline">Submit New Ticket</h5>
                            <asp:Button ID="btn_newTicket" Text="NEW TICKET" CssClass="btn btn-secondary mx-auto" runat="server" Width="150" Height="50" OnClick="btn_newTicket_Click" />
                        </div>
                    </div>
                    <div class="card text-center">
                        <asp:Image ID="img_viewTickets" runat="server" ImageUrl="magnifier_search_zoom_icon.png" Width="500" Height="500" CssClass="card-img-top" />
                        <div class="card-body d-flex flex-column justify-content-center align-content-center ">
                            <h5 class="card-title fw-bold text-decoration-underline">View Tickets</h5>
                            <asp:Button ID="btn_viewTickets" Text="VIEW TICKETS" CssClass="btn btn-secondary mx-auto" runat="server" Width="150" Height="50" OnClick="btn_viewTickets_Click" />
                        </div>
                    </div>
                    <br />
                </div>
                <div class="row text-center mt-5 mb-3 bg-light p-3 rounded-pill">
                    <div class="col ">
                        <div class="row justify-content-center">
                            <asp:Image ID="img_logo" runat="server" ImageUrl="exit.png" CssClass="img-fluid" Width="130px" Height="100px" />
                        </div>
                        <br />
                        <div class="row justify-content-center">
                            <asp:Button ID="btn_logout" Text="LOGOUT" CssClass="btn btn-danger mx-auto" runat="server" Width="100" Height="50" OnClick="btn_logout_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>