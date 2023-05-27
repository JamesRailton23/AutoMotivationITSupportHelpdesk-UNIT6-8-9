<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GeneralEmployeePortal.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.GeneralEmployee.GeneralEmployeePortal.GeneralEmployeePortal" %>

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
        <div class="container-lg bg-dark my-5 p-3 rounded shadow">
            <div class="p-3">
                <h3 class="text-center p-3 fw-bold bg-light rounded fw-bold text-decoration-underline" style="font-family: 'IBM Plex Sans', sans-serif; background-color: #d3d3d3">Hello! <asp:Label ID="lb_Username" runat="server"></asp:Label>    &nbsp;these are your Services</h3>
                <div class="card-group">
                    <div class="card text-center rounded-start">
                        <asp:Image ID="img_New_Support_Ticket" runat="server" ImageUrl="ticket_icon.png" CssClass="card-img-top" />
                        <div class="card-body d-flex flex-column justify-content-center align-content-center">
                            <h5 class="card-title fw-bold text-decoration-underline">Submit a new ticket</h5>
                            <asp:Button ID="btn_New_Support_Ticket" Text="NEW TICKET" CssClass="btn btn-secondary mx-auto" runat="server" Width="150" Height="50" OnClick="btn_New_Support_Ticket_Click" />
                        </div>
                    </div>
                    <div class="card text-center">
                        <asp:Image ID="img_View_Submitted_Tickets" runat="server" ImageUrl="magnifier_search_zoom_icon.png" CssClass="card-img-top" />
                        <div class="card-body d-flex flex-column justify-content-center align-content-center">
                            <h5 class="card-title fw-bold text-decoration-underline">View your tickets</h5>
                            <asp:Button ID="btn_View_Tickets" Text="VIEW TICKETS" CssClass="btn btn-secondary mx-auto" runat="server" Width="150" Height="50" OnClick="btn_View_Tickets_Click" />
                        </div>
                    </div>
                    <div class="card text-center rounded-end">
                        <asp:Image ID="img_change_account" runat="server" ImageUrl="password_account_security_reset_safety_icon.png" CssClass="card-img-top" />
                        <div class="card-body d-flex flex-column justify-content-center align-content-center">
                            <h5 class="card-title fw-bold text-decoration-underline">Change your account details</h5>
                            <asp:Button ID="btn_Change_Account_Details" Text="CHANGE ACCOUNT DETAILS" CssClass="btn btn-secondary mx-auto" runat="server" Width="300" Height="50" OnClick="btn_Change_Account_Details_Click" />
                        </div>
                    </div>
                </div>
                <div class="row text-center mt-5 mb-3 bg-light p-3 rounded-pill">
                    <div class="col ">
                        <div class="row justify-content-center">
                            <asp:Image ID="img_AutoMotivation_Logo" runat="server" ImageUrl="exit.png" CssClass="img-fluid" Width="130px" Height="100px" />
                        </div>
                        <br />
                        <div class="row justify-content-center">
                            <asp:Button ID="btn_Logout" Text="LOGOUT" CssClass="btn btn-danger mx-auto" runat="server" Width="100" Height="50" OnClick="btn_Logout_Click"  />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>