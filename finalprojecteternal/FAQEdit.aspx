<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FAQEdit.aspx.cs" Inherits="finalprojecteternal.FAQEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>FAQEdit (<a href="FAQ.aspx">Done</a>)</h1>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="113px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="764px" DataKeyNames="QuestionID">
        <Columns>
            <asp:BoundField runat="server" DataField="QuestionID" HeaderText="QuestionID" SortExpression="QuestionID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField runat="server" DataField="Question" HeaderText="Question" SortExpression="Question" />
            <asp:BoundField runat="server" DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [QuestionID], [Question], [Answer] FROM [FAQ]"></asp:SqlDataSource>
    <br/>
    <h3>Delete Entry</h3>
    <p>Enter the ID of the question entry you want to delete: </p>
    <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="318px"></asp:TextBox>
    <br\ />
    <br />
    <asp:Button ID="Button1" runat="server" Height="44px" OnClick="Button1_Click" Text="Delete" Width="171px" />

    <br />
    <br />
    <h3>Add Q and A:</h3>
    
    Question:
    
    <asp:TextBox ID="TextBox2" runat="server" Height="38px" Width="313px"></asp:TextBox>
    <br />
    Answer:&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Height="38px" Width="313px"></asp:TextBox>
    <br />
    <asp:Button ID="Button2" runat="server" Height="42px" Text="Add" Width="182px" OnClick="Button2_Click" />
    
</asp:Content>
