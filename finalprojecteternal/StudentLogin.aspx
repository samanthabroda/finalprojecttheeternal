<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="finalprojecteternal.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title></title>
    <style type="text/css">


*,
*:before,
*:after {
    box-sizing: inherit;
    max-width: 100%;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
    margin-left: 0px;
}

td,
th {
    padding: 0;
}

    </style>



</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>LOGIN PAGE</strong><br />
            <br />
    <label id="formLabel0" for="FirstName">
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
            Password:
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Log In" />
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Incorrect username or password!"></asp:Label>
        </div>
    </form>
</body>
</html>
