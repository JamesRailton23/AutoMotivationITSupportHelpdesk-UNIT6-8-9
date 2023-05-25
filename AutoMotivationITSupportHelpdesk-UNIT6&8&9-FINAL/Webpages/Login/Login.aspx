<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&display=swap" rel="stylesheet">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div class="container my-5 bg-dark rounded shadow p-5" style="font-family: 'IBM Plex Sans', sans-serif; background-color: #d3d3d3">
        <div class="row mb-4 lead text-center p-4 bg-white rounded fw-bold">
            <h1 class="mb-4 display-4">Helpdesk Login</h1>
            <div class="col text-white bg-dark m-3 p-4 rounded">
                <h3>Username</h3>
                <asp:TextBox ID="tbx_username" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col text-white bg-dark m-3 p-4 rounded">
                <h3>Password</h3>
                <asp:TextBox ID="tbx_password" runat="server" CssClass="form-control" type="password"></asp:TextBox>
            </div>
            <div class="row justify-content-center align-items-center">
                <asp:Button ID="btn_login" runat="server" Text="LOGIN" CssClass="btn btn-success btn-lg" Width="550" Height="60" OnClick="btn_login_Click" />
            </div>
        </div>
    </div>
</form>
</body>
</html>