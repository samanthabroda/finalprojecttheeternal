<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudentProfile.aspx.cs" Inherits="finalprojecteternal.StudentProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
    <p>
        &nbsp;<strong>Name:</strong>
    <asp:Label ID="lblFirstName" runat="server"></asp:Label>
    <asp:Label ID="lblLastName" runat="server"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p id="lblPro">
    <strong>Pronouns:</strong>
    <asp:Label ID="lblPronouns" runat="server"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p id="lblAbMe">
    <strong>About Me:</strong>
    <asp:Label ID="lblAboutMe" runat="server"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p id="lblGoa">
    <strong>Goals:</strong>
    <asp:Label ID="lblGoals" runat="server"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StudentEditProfile.aspx">Edit Profile</asp:HyperLink>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
