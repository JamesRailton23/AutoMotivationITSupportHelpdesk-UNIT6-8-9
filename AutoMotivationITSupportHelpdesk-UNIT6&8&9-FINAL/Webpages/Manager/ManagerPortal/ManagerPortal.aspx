<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerPortal.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.Manager.ManagerPortal.ManagerPortal" %>

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
        <div class="container-lg bg-dark my-5 p-3 rounded shadow" style="font-family: 'IBM Plex Sans', sans-serif; background-color: #d3d3d3">
            <div class="p-3">
                <h3 class="text-center p-3 fw-bold bg-light rounded fw-bold text-decoration-underline">Hello! <asp:Label ID="lb_name" runat="server"></asp:Label> these are your Services</h3>
                <div class="card-group rounded">
                    <div class="card text-center rounded">
                        <asp:Image ID="img_viewTickets" runat="server" ImageUrl="magnifier_search_zoom_icon.png" Width="500" Height="500" CssClass="card-img-top" />
                        <div class="card-body d-flex flex-column justify-content-center align-content-center">
                            <h5 class="card-title fw-bold text-decoration-underline">View all submitted tickets</h5>
                            <asp:Button ID="btn_viewticket" Text="VIEW TICKETS" CssClass="btn btn-secondary mx-auto" runat="server" Width="500" Height="50" OnClick="btn_viewticket_Click" />
                        </div>
                    </div>
                    <div class="card text-center rounded ">
                        <asp:Image ID="img_createAccount" runat="server" ImageUrl="createAccount.png" Width="500" Height="500" CssClass="card-img-top" />
                        <div class="card-body d-flex flex-column justify-content-center align-content-center ">
                            <h5 class="card-title fw-bold text-decoration-underline">Create technician Account</h5>
                            <asp:Button ID="btn_createaccount" Text="CREATE TECHNICIAN ACCOUNT" CssClass="btn btn-secondary mx-auto" runat="server" Width="500" Height="50" OnClick="btn_createaccount_Click" />
                        </div>
                    </div>
                    <br />
                </div>
                <div class="card-group">

                    <div class="card text-center rounded">
                        <asp:Image ID="img_deleteTechnican" runat="server" ImageUrl="deleteAccount.png" Width="500" Height="500" CssClass="card-img-top" />
                        <div class="card-body d-flex flex-column justify-content-center align-content-center">
                            <h5 class="card-title fw-bold text-decoration-underline">Delete technician Account</h5>
                            <asp:Button ID="btn_deletetechnican" Text="DELETE TECHNICIAN ACCOUNT" CssClass="btn btn-secondary mx-auto" runat="server" Width="500" Height="50" OnClick="btn_deletetechnican_Click" />
                        </div>
                    </div>
                    <div class="card text-center rounded">
                        <asp:Image ID="img_deleteGeneralUser" runat="server" ImageUrl="deleteAccount.png" Width="500" Height="500" CssClass="card-img-top" />
                        <div class="card-body d-flex flex-column justify-content-center align-content-center ">
                            <h5 class="card-title fw-bold text-decoration-underline">Delete general user account</h5>
                            <asp:Button ID="btn_deletgeneraluser" Text="DELETE GENERAL USER ACCOUNT" CssClass="btn btn-secondary mx-auto" runat="server" Width="500" Height="50" OnClick="btn_deletgeneraluser_Click" />
                        </div>
                    </div>
                    <br />
                </div>
                <div class="row text-center mt-5 mb-3 bg-light p-3 rounded-pill">
                    <div class="col ">
                        <div class="row justify-content-center">
                            <asp:Image ID="img_logout" runat="server" ImageUrl="exit.png" CssClass="img-fluid" Width="130px" Height="100px" />
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