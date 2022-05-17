<%@ Page Title="" Language="C#" MasterPageFile="~/TLCMaster.Master" AutoEventWireup="true" CodeBehind="TLCProfile.aspx.cs" Inherits="finalprojecteternal.TLCProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <strong>Name:</strong>
        <asp:Label ID="lblFirstName" runat="server"></asp:Label>
        <asp:Label ID="lblLastName" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <strong>Position:</strong>
        <asp:Label ID="lblPosition" runat="server"></asp:Label>
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
        <strong>Goals:</strong>
        <asp:Label ID="lblGoals" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:HyperLink ID="hplEditProfile" runat="server" NavigateUrl="~/TLCEditProfile.aspx" style="text-decoration: underline; font-weight: 700">Edit Profile</asp:HyperLink>
    </p>
</asp:Content>
