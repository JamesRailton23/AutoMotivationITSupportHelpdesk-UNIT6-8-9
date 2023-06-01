<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GeneralEmployeeChangeAccount.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.GeneralEmployee.GeneralEmployeeChangeAccount.GeneralEmployeeChangeAccount" %>

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
            <div class="row p-5 shadow rounded text-center justify-content-center align-content-center bg-white">
                <div class="row bg-dark text-white mb-5 rounded">
                    <div class="col text-center p-3">
                        <h1 class="fw-bold">Change Account Details</h1>
                    </div>
                </div>
                <div class="row bg-dark text-white mb-5 rounded">
                    <div class="row p-3">
                        <h3>Account Details</h3>
                    </div>
                    <div class="row p-3">
                        <asp:GridView ID="gv_Employee_Account_Details" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="GeneralEmployeeID" DataSourceID="sql_Employee_Account_Details" ForeColor="Black" HorizontalAlign="Center">
                            <Columns>
                                <asp:BoundField DataField="GeneralEmployeeID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="GeneralEmployeeID" />
                                <asp:BoundField DataField="GeneralEmployeeFirstName" HeaderText="FirstName" SortExpression="GeneralEmployeeFirstName" />
                                <asp:BoundField DataField="GeneralEmployeeLastName" HeaderText="LastName" SortExpression="GeneralEmployeeLastName" />
                                <asp:BoundField DataField="GeneralEmployeeUsername" HeaderText="Username" SortExpression="GeneralEmployeeUsername" />
                                <asp:BoundField DataField="GeneralEmployeePassword" HeaderText="Password" SortExpression="GeneralEmployeePassword" />
                                <asp:BoundField DataField="GeneralEmployeeEmail" HeaderText="Email" SortExpression="GeneralEmployeeEmail" />
                                <asp:BoundField DataField="GeneralEmployeePhoneNumber" HeaderText="PhoneNumber" SortExpression="GeneralEmployeePhoneNumber" />
                                <asp:BoundField DataField="AccountCreationTime" HeaderText="CreationTime" SortExpression="AccountCreationTime" />
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
                        <asp:SqlDataSource ID="sql_Employee_Account_Details" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [GeneralEmployeeAccount] WHERE ([GeneralEmployeeID] = @GeneralEmployeeID)">
                            <SelectParameters>
                                <asp:SessionParameter Name="GeneralEmployeeID" SessionField="GeneralEmployeeID" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div class="row bg-dark text-white p-3 ">
                    <div class="col">
                        <h3 class="form-label">Username</h3>
                        <asp:TextBox ID="tbx_Username" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
                    </div>
                    <div class="col">
                        <h3 class="form-label">Password</h3>
                        <asp:TextBox ID="tbx_Password" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="row bg-dark text-white p-3 rounded-bottom">
                    <div class="col">
                        <h3 class="form-label">Email</h3>
                        <asp:TextBox ID="tbx_Email" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="col">
                        <h3 class="form-label text-center">Phone Number</h3>
                        <asp:TextBox ID="tbx_Phone_Number" runat="server" CssClass="form-control" placeholder="Phone Number"></asp:TextBox>
                    </div>
                </div>
                <div class="row justify-content-center align-items-center">
                    <asp:Button ID="btn_Change_Employee_Account_Details" runat="server" Text="UPDATE DETAILS" CssClass="btn btn-success btn-lg my-5" Width="550" Height="60" OnClick="btn_Change_Employee_Account_Details_Click"/>
                </div>
                <div class="row justify-content-center align-items-center">
                    <asp:Button ID="btn_Back_To_Portal" runat="server" Text="RETURN TO PORTAL" CssClass="btn btn-success btn-lg my-5" Width="550" Height="60" OnClick="btn_Back_To_Portal_Click"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
