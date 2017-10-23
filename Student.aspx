<%@ Page Title="Student Information" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Search for a particular student ?

    </p>
    <p>
        Registration number :
    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Dashed"  ></asp:TextBox>

    <asp:GridView ID="GridView1" runat="server" Height="50px" Width="605px">
        </asp:GridView>
</p>
</asp:Content>

