<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="BookAppointment.aspx.cs" Inherits="finalprojecteternal.BookAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Who would you like to book an appointment with?</p>
    <asp:DropDownList ID="lblWhichCounselor" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="FirstName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [FirstName] FROM [COUNSELOR]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="lblDisplay" runat="server" Text="Availability:"></asp:Label>
&nbsp;<asp:Label ID="lblAvailability" runat="server"></asp:Label>
    <br />
    <br />
</asp:Content>
