<%@ Page Title="" Language="C#" MasterPageFile="~/CounselorMaster.Master" AutoEventWireup="true" CodeBehind="CounselorProfile.aspx.cs" Inherits="finalprojecteternal.CounselorProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
    <strong>Name:</strong>
    <asp:Label ID="lblFirstName" runat="server"></asp:Label>
    <asp:Label ID="lblLastName" runat="server"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p>
    <strong>Availability:</strong>
    <asp:Label ID="lblAvailability" runat="server"></asp:Label>
    &nbsp;</p>
<p>
    <asp:HyperLink ID="HyperLink1" runat="server" style="text-decoration: underline">Book Appointment</asp:HyperLink>
</p>
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
</p>
<p>
    <asp:HyperLink ID="hplEditProfile" runat="server" NavigateUrl="~/CounselorEditProfile.aspx" style="text-decoration: underline; font-weight: 700">Edit Profile</asp:HyperLink>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
