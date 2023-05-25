<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateNewITSupportTechnicianAccount.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.Manager.CreateNewITSupportTechnicianAccount.CreateNewITSupportTechnicianAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container my-5 bg-dark rounded shadow p-5" style="font-family: 'IBM Plex Sans', sans-serif; background-color: #d3d3d3">
            <div class="row p-5 shadow rounded text-center justify-content-center align-content-center bg-white">
                <div class="row bg-dark text-white mb-5 rounded">
                    <div class="col text-center p-3">
                        <h1 class="fw-bold">Create Technician Account</h1>
                    </div>
                </div>
                <div class="row bg-dark text-white p-3 rounded-top">
                    <div class="col">
                        <h3 class="form-label text-center">First name</h3>
                        <asp:TextBox ID="tbx_first_name" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                    </div>
                    <div class="col">
                        <h3 class="form-label text-center">Last Name</h3>
                        <asp:TextBox ID="tbx_last_name" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                    </div>
                </div>
                <div class="row bg-dark text-white p-3 ">
                    <div class="col">
                        <h3 class="form-label">Username</h3>
                        <asp:TextBox ID="tbx_username" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
                    </div>
                    <div class="col">
                        <h3 class="form-label">Password</h3>
                        <asp:TextBox ID="tbx_password" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="row bg-dark text-white p-3 ">
                    <div class="col">
                        <h3 class="form-label">Email</h3>
                        <asp:TextBox ID="tbx_email" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                    </div>
                    <div class="col">
                        <h3 class="form-label text-center">Phone Number</h3>
                        <asp:TextBox ID="tbx_phone_Number" runat="server" CssClass="form-control" placeholder="Phone Number"></asp:TextBox>
                    </div>
                </div>
                <div class="row bg-dark text-white p-3 rounded-bottom">
                    <div class="col">
                        <h3 class="form-label">Technician Specialty</h3>
                        <asp:TextBox ID="tbx_specialty" runat="server" CssClass="form-control" placeholder="Specialty"></asp:TextBox>
                    </div>
                </div>
                <div class="row justify-content-center align-items-center">
                    <asp:Button ID="btn_createAccount" runat="server" Text="CREATE ACCOUNT" CssClass="btn btn-success btn-lg my-5" Width="550" Height="60" OnClick="btn_createAccount_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
