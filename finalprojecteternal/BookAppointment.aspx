<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="BookAppointment.aspx.cs" Inherits="finalprojecteternal.BookAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p id="askappointment">Who would you like to book an appointment with?</p>
    <asp:DropDownList ID="lblWhichCounselor" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="FirstName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="236px">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [FirstName] FROM [COUNSELOR]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="lblDisplay" runat="server" Text="Availability:"></asp:Label>
&nbsp;<asp:Label ID="lblAvailability" runat="server"></asp:Label>
    <br />
<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
<br />
<br />
<asp:Label ID="lblWhatDate" runat="server" Text="What day would you like to book an appointment? (MM/DD/YY format)"></asp:Label>
&nbsp;<br />
<asp:TextBox ID="txtDay" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="lblWhatTime" runat="server" Text="What time would you like to book an appointment? (00:00 format)"></asp:Label>
<br />
<asp:TextBox ID="txtTime" runat="server" OnTextChanged="txtTime_TextChanged"></asp:TextBox>
<br />
<br />
<asp:Label ID="lblBasic" runat="server" Text="Please provide a brief description as to why you're calling this appointment."></asp:Label>
<br />
<asp:TextBox ID="txtDescription" runat="server" Width="530px"></asp:TextBox>
<br />
<br />
<asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    <br />
    <br />
</asp:Content>
