<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="finalprojecteternal.ViewUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#E3EAEB" />
            <ItemTemplate>
                RAMID:
                <asp:Label ID="RAMIDLabel" runat="server" Text='<%# Eval("RAMID") %>' />
                <br />
                FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                Major:
                <asp:Label ID="MajorLabel" runat="server" Text='<%# Eval("Major") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />
                Standing:
                <asp:Label ID="StandingLabel" runat="server" Text='<%# Eval("Standing") %>' />
                <br />
                CurrentGPA:
                <asp:Label ID="CurrentGPALabel" runat="server" Text='<%# Eval("CurrentGPA") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                PhoneNumber:
                <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                <br />
                HomeAddress:
                <asp:Label ID="HomeAddressLabel" runat="server" Text='<%# Eval("HomeAddress") %>' />
                <br />
                Status:
                <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [RAMID], [FirstName], [Major], [LastName], [Standing], [CurrentGPA], [Email], [PhoneNumber], [HomeAddress], [Status] FROM [STUDENT] ORDER BY [FirstName]"></asp:SqlDataSource>
    </form>
</body>
</html>
