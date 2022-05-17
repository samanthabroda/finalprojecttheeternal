<%@ Page Title="" Language="C#" MasterPageFile="~/TLCMaster.Master" AutoEventWireup="true" CodeBehind="TLCEditProfile.aspx.cs" Inherits="finalprojecteternal.TLCEditForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        Current Pronouns:
        <asp:Label ID="lblPronouns" runat="server"></asp:Label>
    </p>
    <p>
        Pronouns:
        <asp:TextBox ID="txtPronouns" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        Current About Me:
        <asp:Label ID="lblAboutMe" runat="server"></asp:Label>
    </p>
    <p>
        About Me:
        <asp:TextBox ID="txtAboutMe" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        Current Goals:
        <asp:Label ID="lblGoals" runat="server"></asp:Label>
    </p>
    <p>
        Goals:
        <asp:TextBox ID="txtGoals" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="btnSaveButton" runat="server" OnClick="btnSaveButton_Click" Text="Save Changes" />
    </p>
    <p>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:HyperLink ID="hplEditProfile" runat="server" NavigateUrl="~/TLCProfile.aspx" style="text-decoration: underline; font-weight: 700">Back To Profile Page</asp:HyperLink>
    </p>
    <p>
    </p>
</asp:Content>
