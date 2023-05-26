<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteGeneralEmployeeAccount.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.Manager.DeleteGeneralEmployeeAccount.DeleteGeneralEmployeeAccount" %>

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
        <div class="container my-5 bg-dark rounded shadow p-5" style="font-family: 'IBM Plex Sans', sans-serif; background-color: #d3d3d3">
            <div class="row p-4">
                <h1 class="lead text-center display-5 p-4 bg-white rounded fw-bold" style="font-family: 'IBM Plex Sans', sans-serif;">Delete General users</h1>
            </div>
            <div class="row p-4 justify-content-center">
                <asp:GridView ID="gv_Gerneral_Employees_Accounts" runat="server" CssClass=" justify-content-center align-content-center" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="sql_general_users">
                    <Columns>
                        <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                        <asp:BoundField DataField="UserFirstName" HeaderText="First Name" SortExpression="UserFirstName" />
                        <asp:BoundField DataField="UserLastName" HeaderText="Last Name" SortExpression="UserLastName" />
                        <asp:BoundField DataField="UserEmail" HeaderText="Email" SortExpression="UserEmail" />
                        <asp:BoundField DataField="UserPhoneNumber" HeaderText="Phone Number" SortExpression="UserPhoneNumber" />
                        <asp:BoundField DataField="AccountCreationTime" HeaderText="AccountCreationTime" SortExpression="AccountCreationTime" />
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
                <h3>Return back to manager portal</h3>
                <asp:Button ID="btn_Manager_Portal_Return" runat="server" Text="RETURN TO PORTAL" CssClass="btn btn-secondary" OnClick="btn_Manager_Portal_Return_Click" />

            </div>
        </div>
        <asp:SqlDataSource ID="sql_General_Employees" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserID], [UserFirstName], [UserLastName], [UserEmail], [UserPhoneNumber], [AccountCreationTime] FROM [GeneralUserAccount]"></asp:SqlDataSource>
    </form>
</body>
</html>