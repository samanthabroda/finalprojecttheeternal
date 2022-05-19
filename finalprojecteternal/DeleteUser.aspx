<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="finalprojecteternal.DeleteStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Delete User </h1>
<p>
    &nbsp;</p>
    <label id="formLabel0" for="FirstName">
    Type Of User*:<br />
    &nbsp;<asp:RadioButtonList ID="txtUser" runat="server" Width="878px">
        <asp:ListItem>Student</asp:ListItem>
        <asp:ListItem>TLC Member</asp:ListItem>
        <asp:ListItem>Counselor</asp:ListItem>
        <asp:ListItem>Administrator</asp:ListItem>
    </asp:RadioButtonList>
    <br />
<br />

        <p>ID*:
            <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Delete User" OnClick="Button1_Click" />
        </p>

&nbsp;<br />
<br />
</label>
<asp:Label ID="lblMessage" runat="server"></asp:Label>
<p>
    &nbsp;</p>
<p>
    
    <br />
</p>
</asp:Content>
