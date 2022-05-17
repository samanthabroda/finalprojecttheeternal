﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TLCMaster.Master" AutoEventWireup="true" CodeBehind="TLCEventsEdit.aspx.cs" Inherits="finalprojecteternal.TLCEventsEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Events Manager (<a href="TLCEvents.aspx">Done</a>)</h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="EventID" DataSourceID="SqlDataSource1" Width="1344px">
        <Columns>
            <asp:BoundField DataField="EventID" HeaderText="EventID" InsertVisible="False" ReadOnly="True" SortExpression="EventID" />
            <asp:BoundField DataField="EventName" HeaderText="EventName" SortExpression="EventName" />
            <asp:BoundField DataField="EventLocation" HeaderText="EventLocation" SortExpression="EventLocation" />
            <asp:BoundField DataField="EventDescription" HeaderText="EventDescription" SortExpression="EventDescription" />
            <asp:BoundField DataField="EventLink" HeaderText="EventLink" SortExpression="EventLink" />
            <asp:BoundField DataField="EventDateTime" HeaderText="EventDateTime" SortExpression="EventDateTime" />
            <asp:BoundField DataField="RSVPCount" HeaderText="RSVPCount" SortExpression="RSVPCount" />
            <asp:BoundField DataField="EventApproval" HeaderText="EventApproval" SortExpression="EventApproval" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <h3>Create Event</h3>
    <br />

    Event Title:
    <asp:TextBox ID="TextBox1" runat="server" Width="327px"></asp:TextBox>
    <br />
    Event Image:
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    Event Date and Time: 
    <asp:TextBox ID="TextBox3" runat="server" Width="327px" TextMode="DateTimeLocal"></asp:TextBox>
    <br />
    Event Location: 
    <asp:TextBox ID="TextBox2" runat="server" Width="338px"></asp:TextBox>
    <br />
    Event Link: 
    <asp:TextBox ID="TextBox4" runat="server" Width="316px"></asp:TextBox>
    <br />
    Event Description:
    <asp:TextBox ID="TextBox5" runat="server" Width="1000px"></asp:TextBox>
    <br/>
    <asp:Button ID="Button1" runat="server" Text="Submit" Height="46px" OnClick="Button1_Click" Width="177px" />
    <br />
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [EventID], [EventName], [EventImage], [EventLocation], [EventDescription], [EventLink], [EventDateTime], [RSVPCount], [EventApproval] FROM [EVENTS1] ORDER BY [EventDateTime]"></asp:SqlDataSource>
</asp:Content>