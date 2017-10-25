<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Research.aspx.cs" Inherits="Research" %>

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
            <div class="col-lg-offset-3 col-lg-6">
                <p class="nf-r2">
                    We are a leading research institute with many publications in many journals. We encourage faculty and students to actively take part in research. <br />
                    Below are all the research publications - on going and published.
                </p>
            </div>
            <div class="row" >
                <div class="col-lg-6 col-lg-offset-3" style="margin-top:50px">
                    <asp:SqlDataSource ID="research" runat="server" ConnectionString="<%$ ConnectionStrings:UDIS %>" SelectCommand="SELECT Department,Faculty_name,Status,Details FROM Research" />
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="research" Width="100%"></asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

