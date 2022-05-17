<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FAQEdit.aspx.cs" Inherits="finalprojecteternal.FAQEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>FAQEdit (<a href="FAQ.aspx">Edit</a>)</h1>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="113px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="741px">
        <Columns>
            <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
            <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
            <asp:CommandField HeaderText="Edit" ShowCancelButton="False" ShowEditButton="True" ShowHeader="True" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" ShowHeader="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [Question], [Answer] FROM [FAQ]"></asp:SqlDataSource>

</asp:Content>
