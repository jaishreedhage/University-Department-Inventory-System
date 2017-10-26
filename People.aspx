<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="People.aspx.cs" Inherits="People" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .nf-r2 {
          font-family: Roboto, serif;
          font-size: 20px;
          line-height: 38px;
          font-weight:  normal;
          font-style: italic;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="margin-top:50px">
        <div class="row text-center">
            <div class="col-lg-6 col-lg-offset-3">
                <p class="nf-r2">
                    This project has been completed by 
                </p>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-lg-8 col-lg-offset-2" style="margin-top:50px">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Jaishree.jpg" style="border-radius:50%; max-height:30%; max-width:30%" BorderStyle="None"/>
                <asp:ImageButton ID="ImageButton2" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>

