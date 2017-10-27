<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditDetails.aspx.cs" Inherits="EditDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        input.underlined
        {
           border:0;
           border-bottom:solid 1px #000;
           outline:none; /* prevents textbox highlight in chrome */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="margin-top:50px">
        <div class="row text-center">
            <div class="col-lg-offset-3 col-lg-6 nf-r2">
                <%# edit %>
            </div>
        </div>
        <div class="row" >
            <div class="col-lg-11 col-sm-offset-1" style="margin-top:80px">
                <div class="row">
                    <div class="col-lg-2 btn-group-vertical">
                        <asp:Button ID="Button1" runat="server" Text="STUDENTS" class="btn btn-block btn-success"/>
                        <asp:Button ID="Button2" runat="server" Text="RESEARCH" class="btn btn-block btn-success" style="margin-top:20px" />
                        <asp:Button ID="Button3" runat="server" Text="INVENTORY" class="btn btn-block btn-success" style="margin-top:20px"/>
                    </div>
                    <div class="col-lg-9 col-lg-offset-1">
                        <div class="row">
                            <asp:Button ID="Button4" runat="server" Text="ADD NEW" class="btn btn-danger"/>
                            <asp:Button ID="Button5" runat="server" Text="SEARCH FOR EXISITING" class="btn btn-danger" style="margin-left:100px"/>
                        </div>
                        <div class="row" style="margin-top:30px">
                            <asp:Panel runat="server" ID="Panel1" Width="100%">
                                <div class="row">
                                    <div class="col-lg-offset-2 col-lg-10 nf-r1">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <asp:Label ID="Label1" runat="server" Text="REGISTRATION NUMBER" class="nf-r1" />
                                            </div>
                                            <div class="col-lg-8 col-lg-offset-1">
                                                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="NotSet" CssClass="underlined"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row" >
                                            <div class="col-lg-3">
                                                <asp:Label ID="Label2" runat="server" Text="NAME" class="nf-r1" />
                                            </div>
                                            <div class="col-lg-8 col-lg-offset-1">
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="underlined"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row" >
                                            <div class="col-lg-3">
                                                <asp:Label ID="Label7" runat="server" Text="DEPARTMENT" class="nf-r1" />
                                            </div>
                                            <div class="col-lg-8 col-lg-offset-1">
                                                <asp:TextBox ID="TextBox7" runat="server" CssClass="underlined"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row" >
                                            <div class="col-lg-3">
                                                <asp:Label ID="Label3" runat="server" Text="ADDRESS" class="nf-r1" />
                                            </div>
                                            <div class="col-lg-8 col-lg-offset-1">
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="underlined"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <asp:Label ID="Label4" runat="server" Text="DOB" class="nf-r1" />
                                            </div>
                                            <div class="col-lg-8 col-lg-offset-1">
                                                <asp:TextBox ID="TextBox4" runat="server" CssClass="underlined"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <asp:Label ID="Label5" runat="server" Text="YEAR JOINING" class="nf-r1" />
                                            </div>
                                            <div class="col-lg-8 col-lg-offset-1">
                                                <asp:TextBox ID="TextBox5" runat="server" CssClass="underlined"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <asp:Label ID="Label6" runat="server" Text="YEAR OF GRADUATION" class="nf-r1" />
                                            </div>
                                            <div class="col-lg-8 col-lg-offset-1">
                                                <asp:TextBox ID="TextBox6" runat="server" CssClass="underlined"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row" style="margin-top:30px">
                                            <div class="col-lg-6 col-lg-offset-3">
                                                <asp:Button ID="Button6" runat="server" Text="ADD STUDENT" class="btn btn-primary" OnClick="Button6_Click"/>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </asp:Panel>
                        </div>
                    </div>
                
                </div>
            </div>
        </div>
    </div>
</asp:Content>

