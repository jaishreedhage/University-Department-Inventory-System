<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditDetails.aspx.cs" Inherits="EditDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .nf-r2 {
          font-family: Roboto, serif;
          font-size: 22px;
          line-height: 38px;
          font-weight:  normal;
          font-style: italic;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="margin-top:50px">
        <div class="row text-center">
            <div class="col-lg-offset-3 col-lg-6 nf-r2">
                <%# edit %>
            </div>
            <div class="row" >
                <div class="col-lg-6 col-lg-offset-3" style="margin-top:50px">
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>

