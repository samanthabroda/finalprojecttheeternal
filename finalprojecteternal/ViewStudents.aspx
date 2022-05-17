<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewStudents.aspx.cs" Inherits="finalprojecteternal.ViewStudents" %>
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
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                <asp:BoundField DataField="RAMID" HeaderText="RAMID" SortExpression="RAMID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
                <asp:BoundField DataField="Standing" HeaderText="Standing" SortExpression="Standing" />
                <asp:BoundField DataField="CurrentGPA" HeaderText="CurrentGPA" SortExpression="CurrentGPA" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="HomeAddress" HeaderText="HomeAddress" SortExpression="HomeAddress" />
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
                <asp:BoundField DataField="TLCID" HeaderText="TLCID" InsertVisible="False" ReadOnly="True" SortExpression="TLCID" />
                <asp:BoundField DataField="RAMID" HeaderText="RAMID" SortExpression="RAMID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
                <asp:BoundField DataField="Standing" HeaderText="Standing" SortExpression="Standing" />
                <asp:BoundField DataField="CurrentGPA" HeaderText="CurrentGPA" SortExpression="CurrentGPA" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="HomeAddress" HeaderText="HomeAddress" SortExpression="HomeAddress" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [TLCID], [RAMID], [FirstName], [LastName], [Position], [Major], [Standing], [CurrentGPA], [Email], [PhoneNumber], [HomeAddress] FROM [TLC]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [StudentID], [RAMID], [FirstName], [LastName], [Major], [Standing], [CurrentGPA], [Email], [PhoneNumber], [HomeAddress] FROM [STUDENT] ORDER BY [FirstName]"></asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>
