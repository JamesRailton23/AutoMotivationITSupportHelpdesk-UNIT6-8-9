<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.Default.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AutoMotivation-IT-Support-Helpdesk</title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&display=swap" rel="stylesheet">
</head>
<body>
<form id="form1" runat="server">
    <div class="container my-5 bg-dark rounded shadow p-5" style="font-family: 'IBM Plex Sans', sans-serif; background-color: #d3d3d3">
        <div class="row p-4">
            <h1 class="lead text-center display-3 p-4 bg-white rounded fw-bold">AutoMotivation - IT Support Helpdesk</h1>
        </div>
        <div class="row p-4 justify-content-center">
            <asp:Image ID="img_Logo" runat="server" ImageUrl="automotivation-high-resolution-logo-white-on-black-background.png" Width="500" Height="500" />
        </div>
        <div class="row p-4 lead text-center display-3 p-4 bg-white rounded fw-bold">
            <h1 class="">Login or Create Account Below</h1>
            <div class="row justify-content-center">
                <div class="col">
                    <asp:Button ID="btn_Account_Login" runat="server" Text="HELPDESK LOGIN" class="btn btn-secondary" Width="250" Height="50" OnClick="btn_Account_Login_Click"/>
                </div>
                <div class="col">
                    <asp:Button ID="btn_General_Employee_Create_Account" runat="server" Text="CREATE GENERAL EMPLOYEE ACCOUNT" class="btn btn-secondary" Width="400px" Height="50" OnClick="btn_General_Employee_Create_Account_Click"/>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>