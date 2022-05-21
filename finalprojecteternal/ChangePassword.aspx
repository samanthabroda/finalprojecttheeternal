<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="finalprojecteternal.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



* {
    box-sizing: inherit;
    max-width: 100%;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
    margin-left: 0px;
}

td {
    padding: 0;
}

    </style>
</head>
<body>
            <strong>Change Password</strong><br />
            <br />
    <form id="form1" runat="server">
        <asp:Label ID="lblSuccess" runat="server" Text="Password successfully changed!"></asp:Label>
    <label id="formLabel0" for="FirstName">
            <br />
        <br />
            Type Of User*:<br />
    &nbsp;<asp:RadioButtonList ID="txtUser" runat="server" Width="878px">
        <asp:ListItem>Student</asp:ListItem>
        <asp:ListItem>TLC Member</asp:ListItem>
        <asp:ListItem>Counselor</asp:ListItem>
        <asp:ListItem>Administrator</asp:ListItem>
    </asp:RadioButtonList>
</label>
            <br />
            <br />
            <br />
            Email:
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            Current
            Password:
            <asp:TextBox ID="txtPassword" type="password" runat="server"></asp:TextBox>
            <br />
        New Password:
        <asp:TextBox ID="txtNew" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Change Password" />
            <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StudentLogin.aspx">Back To Login Page</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Incorrect username or password!"></asp:Label>
        <div>
        </div>
    </form>
</body>
</html>
