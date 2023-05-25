<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ITSupportTechnicianPortal.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.ITSupportTechnician.ITSupportTechnicianPortal.ITSupportTechnicianPortal" %>

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
     <div class="container-lg bg-dark my-5 p-3 rounded shadow" style="font-family: 'IBM Plex Sans', sans-serif; background-color:#d3d3d3">
  <div class="p-3">
    <h3 class="text-center p-3 fw-bold bg-light rounded fw-bold text-decoration-underline">Hello! <asp:Label ID="lb_name" runat="server"></asp:Label> these are your Services</h3>
    <div class="row">
        <div class="card-group rounded">
      <div class="card text-center rounded-start">
        <asp:Image ID="img_Ticket" runat="server" ImageUrl="magnifier_search_zoom_icon.png" Width="500" Height="500" CssClass="card-img-top mx-auto" />
        <div class="card-body d-flex flex-column justify-content-center align-items-center">
          <h5 class="card-title fw-bold text-decoration-underline">View your assgined tickets</h5>
          <asp:Button ID="btn_viewTicket" Text="VIEW ASSIGNED TICKETS" CssClass="btn btn-secondary mx-auto" runat="server" Width="300px" Height="50" OnClick="btn_viewTicket_Click" />
        </div>
      </div>
        <div class="card text-center rounded-end">
        <asp:Image ID="img_Assign" runat="server" ImageUrl="add-ticket-icon.png" Width="500" Height="500" CssClass="card-img-top mx-auto" />
        <div class="card-body d-flex flex-column justify-content-center align-items-center">
          <h5 class="card-title fw-bold text-decoration-underline">ASSIGN YOURSELF TICKETS</h5>
          <asp:Button ID="btn_assign" Text="ASSIGN TICKETS" CssClass="btn btn-secondary mx-auto" runat="server" Width="300px" Height="50" OnClick="btn_assign_Click" />
        </div>
      </div>

        </div>
    </div>
      <div class="row text-center mt-5 mb-3 bg-light p-3 rounded-pill">
      <div class="col">
        <div class="row justify-content-center">
          <asp:Image ID="img_logo" runat="server" ImageUrl="exit.png" CssClass="img-fluid mx-auto" Width="130px" Height="100px" />
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
