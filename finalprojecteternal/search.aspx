<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="finalprojecteternal.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Search panel in C# - MdmSoft</title>
    <style type="text/css">
        .text-search {
            height: 24px;
            font-family: "Helvetica Neue",helvetica,sans-serif;
            font-weight: normal;
            color: rgb(0, 143, 213);
            font-size: 16px;
            padding: 0px 10px;
            border-radius: 4px;
            background-color: rgb(255, 255, 255);
            box-shadow: 0px 1px 2px rgb(81, 184, 228) inset;
            border: 1px solid rgb(22, 71, 88);
        }

        .button-search {
            cursor: pointer;
            height: 24px;
            font-family: "Helvetica Neue",helvetica,sans-serif;
            font-weight: bold;
            color: white;
            font-size: 16px;
            padding: 0px 24px;
            border-radius: 4px;
            background-color: rgb(0, 143, 213);
            box-shadow: 0px 1px 2px rgb(81, 184, 228) inset;
            text-shadow: 0px 1px 1px rgb(1, 72, 117);
            border: 1px solid rgb(22, 71, 88);
        }

            .button-search:hover {
                color: yellow;
            }
    </style>

    <script type="text/javascript">
    </script>
</head>
<body>
    <form id="formMain" runat="server">
        <asp:Panel ID="PanelSearch" runat="server" DefaultButton="ButtonSearch">
            <asp:TextBox ID="TextBoxSearch" runat="server"
                CssClass="text-search"
                Text=""
                Width="370" />
            <asp:Button ID="ButtonSearch" runat="server"
                CssClass="button-search"
                Text="Search"
                OnClick="ButtonSearch_Click" />
        </asp:Panel>
        <br />
        <div>
            <asp:GridView ID="GridViewEmployees" runat="server"
                BorderColor="Gray"
                BorderStyle="Solid"
                BorderWidth="1px"
                CellPadding="4"
                ForeColor="#333333"
                GridLines="None"
                Width="500px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Availability" HeaderText="Availability" SortExpression="Availability" />
                </Columns>
                <EditRowStyle HorizontalAlign="Left" />
                <HeaderStyle BackColor="#008ed5" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Availability] FROM [COUNSELOR] ORDER BY [LastName]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
