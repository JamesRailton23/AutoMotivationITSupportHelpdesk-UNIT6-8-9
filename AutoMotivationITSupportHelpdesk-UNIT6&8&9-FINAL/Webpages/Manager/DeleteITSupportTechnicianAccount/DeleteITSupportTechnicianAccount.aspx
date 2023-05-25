<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteITSupportTechnicianAccount.aspx.cs" Inherits="AutoMotivationITSupportHelpdesk_UNIT6_8_9_FINAL.Webpages.Manager.DeleteITSupportTechnicianAccount.DeleteITSupportTechnicianAccount" %>

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
            <div class="row p-4">
                <h1 class="lead text-center display-5 p-4 bg-white rounded fw-bold" style="font-family: 'IBM Plex Sans', sans-serif;">Delete Technicians</h1>
            </div>
            <div class="row p-4 justify-content-center">
                <asp:GridView ID="gv_technicians" runat="server" CssClass=" justify-content-center align-content-center p-4" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="TechnicianID" DataSourceID="sql_technicans">
                    <Columns>
                        <asp:BoundField DataField="TechnicianID" HeaderText="TechnicianID" InsertVisible="False" ReadOnly="True" SortExpression="TechnicianID" />
                        <asp:BoundField DataField="TechnicianFirstName" HeaderText="FirstName" SortExpression="TechnicianFirstName" />
                        <asp:BoundField DataField="TechnicianLastName" HeaderText="LastName" SortExpression="TechnicianLastName" />
                        <asp:BoundField DataField="TechnicianEmail" HeaderText="Email" SortExpression="TechnicianEmail" />
                        <asp:BoundField DataField="TechnicianPhoneNumber" HeaderText="PhoneNumber" SortExpression="TechnicianPhoneNumber" />
                        <asp:BoundField DataField="TechnicianSpecialty" HeaderText="Specialty" SortExpression="TechnicianSpecialty" />
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
                <h3>Delete technicians By selecting their ID number from dropdown box and then press button labled "Delete"</h3>
                <br />
                <asp:DropDownList ID="ddl_deleteID" runat="server" DataSourceID="sql_technicans" DataTextField="TechnicianID" DataValueField="TechnicianID"></asp:DropDownList>
                <br />
                <asp:Button ID="btn_delete" runat="server" Text="DELETE" CssClass="btn btn-danger" OnClick="btn_delete_Click" />
                <br />
                <asp:SqlDataSource ID="sql_technicans" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TechnicianID], [TechnicianFirstName], [TechnicianLastName], [TechnicianEmail], [TechnicianPhoneNumber], [TechnicianSpecialty], [AccountCreationTime] FROM [TechnicianAccount]"></asp:SqlDataSource>
                <br />
            </div>
            <div class="row p-4">
                <h3>Return back to manager portal</h3>
                <asp:Button ID="btn_portalreturn" runat="server" Text="RETURN TO PORTAL" CssClass="btn btn-secondary" OnClick="btn_portalreturn_Click" />

            </div>
        </div>
    </form>
</body>
</html>