<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="People.aspx.cs" Inherits="People" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                <div class="col-lg-6">
                    <div class="row">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Jaishree.jpg" style="border-radius:50%; max-height:50%; max-width:50%" BorderStyle="None"/>
                    </div>
                    <div class="row">
                        <asp:Label ID="Label1" runat="server" Text="JAISHREE DHAGE" class="nf-r1"/>
                    </div>
                    
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Jaishree.jpg" style="border-radius:50%; max-height:50%; max-width:50%" BorderStyle="None"/>
                    </div>
                    <div class="row">
                        <asp:Label ID="Label2" runat="server" Text="ANUJA" class="nf-r1"/>
                    </div>
                    
                </div>>
            </div>
        </div>
    </div>
</asp:Content>

