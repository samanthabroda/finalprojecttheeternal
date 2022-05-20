<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EventsEdit.aspx.cs" Inherits="finalprojecteternal.EventsEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Events Manager (<a href="Events.aspx">Done</a>)</h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="EventID" DataSourceID="SqlDataSource1" Width="1344px" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="EventID" HeaderText="EventID" InsertVisible="False" ReadOnly="True" SortExpression="EventID" />
            <asp:BoundField DataField="EventName" HeaderText="EventName" SortExpression="EventName" />
            <asp:BoundField DataField="EventLocation" HeaderText="EventLocation" SortExpression="EventLocation" />
            <asp:BoundField DataField="EventDescription" HeaderText="EventDescription" SortExpression="EventDescription" />
            <asp:BoundField DataField="EventLink" HeaderText="EventLink" SortExpression="EventLink" />
            <asp:BoundField DataField="EventDateTime" HeaderText="EventDateTime" SortExpression="EventDateTime" />
            <asp:BoundField DataField="RSVPCount" HeaderText="RSVPCount" SortExpression="RSVPCount" />
            <asp:BoundField DataField="EventApproval" HeaderText="EventApproval" SortExpression="EventApproval" />
            <asp:ButtonField CommandName="Delete" HeaderText="Delete Event" ShowHeader="True" Text="Delete Entry" />
            <asp:ButtonField CommandName="Approve" HeaderText="Approve Event" ShowHeader="True" Text="Approve" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <h3>Create Event</h3>
    <br />

    Event Title:
    <asp:TextBox ID="TextBox1" runat="server" Width="327px"></asp:TextBox>
    <br />
    <br />
    Event Image:
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Label ID="ImgWarning" runat="server"></asp:Label>
    <br />
    <br />
    Event Date and Time: 
    <asp:TextBox ID="TextBox3" runat="server" Width="327px" TextMode="DateTimeLocal"></asp:TextBox>
    <br />
    <br />
    Event Location: 
    <asp:TextBox ID="TextBox2" runat="server" Width="338px"></asp:TextBox>
    <br />
    <br />
    Event Link: 
    <asp:TextBox ID="TextBox4" runat="server" Width="316px"></asp:TextBox>
    <br />
    <br />
    Event Description:
    <asp:TextBox ID="TextBox5" runat="server" Width="571px" Height="21px"></asp:TextBox>
    <br/>
    <br />
    <asp:Label runat="server" id="hideMe">How many attendees are allowed? <asp:TextBox ID="TextBox6" runat="server" Width="106px"></asp:TextBox></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" Height="46px" OnClick="Button1_Click" Width="177px" />
    <br />
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [EventID], [EventName], [EventImage], [EventLocation], [EventDescription], [EventLink], [EventDateTime], [RSVPCount], [EventApproval] FROM [EVENTS1] ORDER BY [EventDateTime]"></asp:SqlDataSource>
</asp:Content>
