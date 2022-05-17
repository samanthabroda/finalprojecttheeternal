﻿<%@ Page Title="" Language="C#" MasterPageFile="~/CounselorMaster.Master" AutoEventWireup="true" CodeBehind="CounselorFAQPage.aspx.cs" Inherits="finalprojecteternal.CounselorFAQPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>FAQ (<a class="adminOnly" href="FAQEdit.aspx">Edit</a>)</h1>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatLayout="Flow">
        <ItemTemplate>
            -
            <asp:Label ID="QuestionLabel" runat="server" Text='<%# Eval("Question") %>' />
            <br />
            &nbsp;&nbsp;&nbsp;
            &nbsp;<asp:Label ID="AnswerLabel" runat="server" Text='<%# Eval("Answer") %>' />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT [Question], [Answer] FROM [FAQ]"></asp:SqlDataSource>
</asp:Content>
