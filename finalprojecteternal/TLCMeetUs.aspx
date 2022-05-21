<%@ Page Title="" Language="C#" MasterPageFile="~/TLCMaster.Master" AutoEventWireup="true" CodeBehind="TLCMeetUs.aspx.cs" Inherits="finalprojecteternal.TLCMeetUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Meet Us!<br />
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="305px">
            <ItemTemplate>
                First Name:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                Availability:
                <asp:Label ID="AvailabilityLabel" runat="server" Text='<%# Eval("Availability") %>' />
                <br />
                About Me:
                <asp:Label ID="AboutMeLabel" runat="server" Text='<%# Eval("AboutMe") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [FirstName], [Availability], [AboutMe] FROM [COUNSELOR]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TLCBookAppointment.aspx">Book Appointment</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>