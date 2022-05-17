<%@ Page Title="" Language="C#" MasterPageFile="~/CounselorMaster.Master" AutoEventWireup="true" CodeBehind="CounselorEvents.aspx.cs" Inherits="finalprojecteternal.CounselorEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Events (<a class="aandcOnly" href="CounselorEventsEdit.aspx">Edit</a>)</h1>
    <asp:datalist runat="server" DataKeyField="EventID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged">
        <ItemTemplate>
            <h3><asp:Label ID="EventNameLabel" runat="server" Text='<%# Eval("EventName") %>' /></h3>
            <asp:Image runat="server" ID="EventImage" height="600px" width="600px" runat="server" src='<%# Eval("EventImage") %>'/>
            <br />
            Event Date and Time:
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("EventDateTime") %>' />
            <br />
            Event Location:
            <asp:Label ID="EventLocationLabel" runat="server" Text='<%# Eval("EventLocation") %>' />
            <br />
            Event Link:
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("EventLink") %>' />
            <br />
            Event Description:
            <asp:Label ID="EventDescriptionLabel" runat="server" Text='<%# Eval("EventDescription") %>' />
            <br />
<br />
        </ItemTemplate>

    </asp:datalist>


    <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:masterConnectionString %>" selectcommand="SELECT [EventID], [EventName], [EventImage], [EventLocation], [EventDescription], [EventLink], [EventDateTime], [RSVPCount], [EventApproval] FROM [EVENTS1] ORDER BY [EventDateTime]"></asp:sqldatasource>
</asp:Content>
