﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap-theme.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap-theme.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap.min.css"/>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,300,100,700,100italic,300italic,400italic,700italic&amp;subset=latin" media="all">
    <style type="text/css">
        .nf-r1 {
          font-family: Roboto, serif;
          font-size: 12px;
          line-height: 38px;
          font-weight:  normal;
          font-style: normal;
        }
    </style>
</head>
<body style="background-color:black">
    <form id="form1" runat="server">
        <br /><br /><br /><br /><br /><br /><br /><br />
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text-center">
                    <div class="col-sm-4 col-sm-offset-4 text-center">
                        <asp:Label ID="Label1" runat="server" Text="LOGIN / SIGNUP" ForeColor="White" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </div>
                </div>
            </div>
            <br /><br />
            <div class="row form-group">
                <div class="col-sm-4 col-sm-offset-4 text-center">
                    <div class="col-sm-8 col-sm-offset-2 text-center">
                        
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter username" OnTextChanged="TextBox1_TextChanged" AutoPostBack="true"></asp:TextBox>
                        
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-sm-4 col-sm-offset-4 text-center">
                    <div class="col-sm-8 col-sm-offset-2 text-center">
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter password" Type="Password" OnTextChanged="TextBox2_TextChanged" AutoPostBack="true"></asp:TextBox>
                        
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-sm-4 col-sm-offset-4 text-center">
                    <div class="col-sm-8 col-sm-offset-2 text-center">
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" style="width:100%; height:35px">
                            <asp:ListItem>Choose member type..</asp:ListItem>
                            <asp:ListItem>Student</asp:ListItem>
                            <asp:ListItem>Administrator</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4 text-center">
                    <div class="col-sm-8 col-sm-offset-2 text-center">
                        <asp:Button ID="Button1" runat="server" Text="LOGIN" class="btn btn-success btn-block" OnClick="Button1_Click"/>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4 text-center">
                    <div class="col-sm-8 col-sm-offset-2 text-center">
                        <asp:Button ID="Button2" runat="server" Text="CREATE NEW ACCOUNT" class="btn btn-danger btn-block"  OnClick="Button2_Click"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 col-sm-offset-4 text-center">
                    <div class="col-sm-8 col-sm-offset-2 text-center">
                        <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red" Font-Bold="True" Font-Size="Medium"/>
                    </div>
                </div>
            </div>
            <br />
        </div>
    </form>
</body>
</html>
