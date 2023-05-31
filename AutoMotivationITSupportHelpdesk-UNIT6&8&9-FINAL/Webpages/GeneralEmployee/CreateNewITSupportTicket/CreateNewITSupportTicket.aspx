<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateNewITSupportTicket.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.GeneralEmployee.CreateNewITSupportTicket.CreateNewITSupportTicket" %>

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
        <div class="container-lg my-5 rounded shadow" style="font-family: 'IBM Plex Sans', sans-serif; background-color: #d3d3d3">
            <div class="p-3 p-lg-4">
                <div class="row align-content-center justify-content-center text-center text-center bg-dark text-white p-4 mb-2 rounded">
                    <h1 class="display-4">Create New Ticket</h1>
                </div>
                <div class="row text-center align-content-center justify-content-center">
                    <div class="card text-center my-2" style="width: 50rem;">
                        <div class="card-body">
                            <h5 class="card-title text-decoration-underline fw-bold">Subject of issue</h5>
                            <p>please state the reason for this ticket</p>
                            <asp:TextBox ID="tbx_Issue_Subject" runat="server" CssClass="form-control form-control-lg" />
                        </div>
                    </div>
                    <div class="card text-center my-2" style="width: 50rem;">
                        <div class="card-body">
                            <h5 class="card-title text-decoration-underline fw-bold">Category of issue</h5>
                            <p>please select the category of the issue that you are having</p>
                            <asp:DropDownList ID="ddl_category" runat="server" CssClass="form-control">
                                <asp:ListItem>Hardware</asp:ListItem>
                                <asp:ListItem>Software</asp:ListItem>
                                <asp:ListItem>Network</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="card text-center my-2" style="width: 50rem;">
                        <div class="card-body">
                            <h5 class="card-title text-decoration-underline fw-bold">Priority of this issue</h5>
                            <p>please select the priority of this issue</p>
                            <asp:DropDownList ID="ddl_priority" runat="server" CssClass="form-control">
                                <asp:ListItem>Low</asp:ListItem>
                                <asp:ListItem>Medium</asp:ListItem>
                                <asp:ListItem>High</asp:ListItem>
                                <asp:ListItem>ASAP</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row my-2 text-center align-content-center justify-content-center">
                    <div class="card text-center" style="width: 50rem;">
                        <div class="card-body">
                            <h5 class="card-title text-decoration-underline fw-bold">Description of the issue</h5>
                            <p class="card-subtitle">please describe as much details as possible such as: what happen, when it happened, what where you doing at the time it happen, has it happened before etc.</p>
                            <br />
                            <asp:TextBox ID="tbx_Issue_Description" runat="server" TextMode="MultiLine" CssClass="form-control form-control-lg" />
                        </div>
                    </div>
                </div>
                <div class="row text-center align-content-center justify-content-center bg-dark p-5 rounded">
                    <div class="col text-white text-decoration-underline fw-bold">
                        <asp:Button ID="btn_Submit_Support_Ticket" runat="server" Text="SUBMIT TICKET" CssClass="btn btn-success" Width="300px" Height="100px" OnClick="btn_Submit_Support_Ticket_Click"/>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>