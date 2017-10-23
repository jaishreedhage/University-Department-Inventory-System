<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap-theme.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap-theme.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap.min.css"/>
</head>
<body style="background-color:black">
    <form id="form1" runat="server">
        <br />
        <div class="container-fluid center-block" style="background-color:white">
            <div class="row">
                LOGIN
            </div>
            <div class="row form-group">
                <div class="col-lg-3 center-block">
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group">
                
                <div class="col-lg-3">
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group">
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem Value="Office">Office</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="row">
                <asp:Button ID="Button1" runat="server" Text="Login" class="btn-success" OnClick="Button1_Click"/>
            </div>
            <div class="row">
                <asp:Button ID="Button2" runat="server" Text="Add member" class="btn-danger" OnClick="Button2_Click"/>
            </div>
        </div>
    </form>
</body>
</html>
