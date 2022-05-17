<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="finalprojecteternal.AdminProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <strong>Name:</strong>
        <asp:Label ID="lblFirstName" runat="server"></asp:Label>
        <asp:Label ID="lblLastName" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <strong>Branch:</strong>
        <asp:Label ID="lblBranch" runat="server"></asp:Label>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <strong>Pronouns:</strong>
        <asp:Label ID="lblPronouns" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <strong>About Me:</strong>
        <asp:Label ID="lblAboutMe" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <strong>Experience:</strong>
        <asp:Label ID="lblExperience" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:HyperLink ID="hplEditProfile" runat="server" NavigateUrl="~/AdminEditProfile.aspx" style="text-decoration: underline; font-weight: 700">Edit Profile</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

