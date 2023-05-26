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
                <asp:GridView ID="gv_Gerneral_Employees_Accounts" runat="server" CssClass=" justify-content-center align-content-center" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="GeneralEmployeeID" DataSourceID="sql_General_Employees" AllowPaging="True">
                    <Columns>
                        <asp:CommandField ButtonType="Button" SelectText="SELECT" ShowSelectButton="True" HeaderText="SelectEmployee" >
                        <ControlStyle CssClass="btn btn-primary" />
                        </asp:CommandField>
                        <asp:TemplateField HeaderText="DeleteEmployee">
                            <ItemTemplate>
                                <asp:Button ID="btn_Delete_General_Employee" runat="server" Text="DELETE" CssClass="btn btn-danger" OnClick="btn_Delete_General_Employee_Click"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="GeneralEmployeeID" HeaderText="EmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="GeneralEmployeeID" />
                        <asp:BoundField DataField="GeneralEmployeeFirstName" HeaderText="FirstName" SortExpression="GeneralEmployeeFirstName" />
                        <asp:BoundField DataField="GeneralEmployeeLastName" HeaderText="LastName" SortExpression="GeneralEmployeeLastName" />
                        <asp:BoundField DataField="GeneralEmployeeUsername" HeaderText="Username" SortExpression="GeneralEmployeeUsername" />
                        <asp:BoundField DataField="GeneralEmployeeEmail" HeaderText="EmployeeEmail" SortExpression="GeneralEmployeeEmail" />
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
            </div>
            <div class="row p-4">
                <h3>Return back to manager portal</h3>
                <asp:Button ID="btn_Manager_Portal_Return" runat="server" Text="RETURN TO PORTAL" CssClass="btn btn-secondary" OnClick="btn_Manager_Portal_Return_Click" />

            </div>
        </div>
        <asp:SqlDataSource ID="sql_General_Employees" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [GeneralEmployeeID], [GeneralEmployeeFirstName], [GeneralEmployeeLastName], [GeneralEmployeeUsername], [GeneralEmployeeEmail], [GeneralEmployeePhoneNumber], [AccountCreationTime] FROM [GeneralEmployeeAccount]"></asp:SqlDataSource>
    </form>
</body>
</html>