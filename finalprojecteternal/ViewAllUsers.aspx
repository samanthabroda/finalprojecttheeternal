<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewAllUsers.aspx.cs" Inherits="finalprojecteternal.ViewAllUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        Student List</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" Width="706px">
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                <asp:BoundField DataField="RAMID" HeaderText="RAM ID" SortExpression="RAMID" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
                <asp:BoundField DataField="Standing" HeaderText="Standing" SortExpression="Standing" />
                <asp:BoundField DataField="CurrentGPA" HeaderText="Current GPA" SortExpression="CurrentGPA" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="HomeAddress" HeaderText="Home Address" SortExpression="HomeAddress" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        TLC Members</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="TLCID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="TLCID" HeaderText="TLC ID" InsertVisible="False" ReadOnly="True" SortExpression="TLCID" />
                <asp:BoundField DataField="RAMID" HeaderText="RAM ID" SortExpression="RAMID" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
                <asp:BoundField DataField="Standing" HeaderText="Standing" SortExpression="Standing" />
                <asp:BoundField DataField="CurrentGPA" HeaderText="Current GPA" SortExpression="CurrentGPA" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="HomeAddress" HeaderText="Home Address" SortExpression="HomeAddress" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [TLCID], [RAMID], [FirstName], [LastName], [Position], [Major], [Standing], [CurrentGPA], [Email], [PhoneNumber], [HomeAddress], [Status] FROM [TLC] ORDER BY [LastName]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [StudentID], [RAMID], [FirstName], [LastName], [Major], [Standing], [CurrentGPA], [Email], [PhoneNumber], [HomeAddress] FROM [STUDENT] ORDER BY [FirstName]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Counselors</p>
    <p>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="CounselorID" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="CounselorID" HeaderText="Counselor ID" InsertVisible="False" ReadOnly="True" SortExpression="CounselorID" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="Education" HeaderText="Education" SortExpression="Education" />
                <asp:BoundField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="HomeAddress" HeaderText="Home Address" SortExpression="HomeAddress" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [CounselorID], [FirstName], [LastName], [Education], [Availability], [Email], [PhoneNumber], [HomeAddress], [Department], [Status] FROM [COUNSELOR] ORDER BY [LastName]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Administrators</p>
    <p>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="AdminID" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="AdminID" HeaderText="Admin ID" InsertVisible="False" ReadOnly="True" SortExpression="AdminID" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="HomeAddress" HeaderText="Home Address" SortExpression="HomeAddress" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [AdminID], [FirstName], [LastName], [Branch], [Email], [PhoneNumber], [HomeAddress] FROM [ADMINISTRATOR] ORDER BY [LastName]"></asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>

