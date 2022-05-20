<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="finalprojecteternal.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Events (<a class="aandcOnly" href="EventsEdit.aspx">Edit</a>)</h1><asp:Label ID="warnMe" runat="server" Visible="false" Text="You are already RSVP'd!"></asp:Label>
    <asp:datalist ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Unnamed1_ItemCommand">
        <ItemTemplate>
            Event Name: <asp:Label ID="EventNameLabel" runat="server" Text='<%# Eval("EventName") %>'></asp:Label> <asp:Label ID="IDNum" runat="server" Visible="false" Text='<%# Eval("EventID") %>'></asp:Label> <asp:Label ID="Label3" runat="server" Visible="false" Text='<%# Eval("RSVPCount") %>'></asp:Label>
            <br />
            Event Location: <asp:Label ID="EventLocationLabel" runat="server" Text='<%# Eval("EventLocation") %>'></asp:Label>
            <br />
            Event Description:
            <asp:Label ID="EventDescriptionLabel" runat="server" Text='<%# Eval("EventDescription") %>' />
            <br />
            Event Link:
            <asp:Label ID="EventLinkLabel" runat="server" Text='<%# Eval("EventLink") %>' />
            <br />
            Event Date/Time:
            <asp:Label ID="EventDateTimeLabel" runat="server" Text='<%# Eval("EventDateTime") %>' />
            <br />
            RSVP Count:
            <asp:Label ID="RSVPCountLabel" runat="server" Text='<%# Eval("RSVPCount") %>' />
<br />
            Limit:
            <asp:Label ID="RSVP_countLabel" runat="server" Text='<%# Eval("RSVP_count") %>' />
            <br />
           
            <asp:Button ID="Button1" runat="server" Text="RSVP" CommandArgument='<% #Eval("EventID") %>' CommandName="RSVPMe" /> 
            <br />
        </ItemTemplate>

    </asp:datalist>


    <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:masterConnectionString %>" selectcommand="SELECT [EventID], [EventName], [EventLocation], [EventDescription], [EventLink], [EventDateTime], [RSVPCount], [RSVP_count] FROM [EVENTS1] WHERE ([EventApproval] = @EventApproval) ORDER BY [EventDateTime]">
        <SelectParameters>
            <asp:Parameter DefaultValue="Approved" Name="EventApproval" Type="String" />
        </SelectParameters>
    </asp:sqldatasource>
</asp:Content>


