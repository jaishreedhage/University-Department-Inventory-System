<%@ Page Title="Student Information" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="margin-top:50px">
        <div class="row text-center">
            REGISTRATION FOR FALL SEMESTER IS NOW OPEN. STUDENTS ARE REQUESTED TO REGISTER FOR NO MORE THAN 22 CREDITS AND NO LESS THAN 18 CREDITS.
        </div>
        <div class="row" style="margin-top:50px">
            <div class="col-sm-6">
                COURSES AVAILABLE ARE
                <asp:GridView ID="GridView1" runat="server" Height="50px" Width="605px">
                </asp:GridView>
                
            </div>
            <div class="col-sm-6" style="margin-top:50px">
                    
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            </div>
        </div>
    </div>
</asp:Content>
