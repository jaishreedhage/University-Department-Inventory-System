<%@ Page Title="Student Information" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

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
                    Registration for fall semester is now open. Students are requested to register for no more than 22 credits and no less than 18 credits.
                </p>
            </div>
        </div>
        <div class="row" style="margin-top:50px">
            <div class="col-sm-6">
                COURSES AVAILABLE ARE
                <asp:GridView ID="GridView1" runat="server" Height="50px" Width="605px">
                </asp:GridView>
                
            </div>
            <div class="col-sm-6" style="margin-top:50px">
                    Registration number
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            </div>
        </div>
    </div>
</asp:Content>
