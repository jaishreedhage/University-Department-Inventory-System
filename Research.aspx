<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Research.aspx.cs" Inherits="Research" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="margin-top:50px">
        <div class="row text-center">
            <div class="col-lg-offset-3 col-lg-6">
                <p class="nf-r2">
                    We are a leading research institute with many publications in many journals. We encourage faculty and students to actively take part in research. 
                </p>
                <p class="nf-r2"style="margin-top:25px">
                    Below are all the research publications - on going and published.
                </p>
            </div>
            <div class="row" >
                <div class="col-lg-6 col-lg-offset-3" style="margin-top:50px">
                    <asp:SqlDataSource ID="research" runat="server" ConnectionString="<%$ ConnectionStrings:UDIS %>" SelectCommand="SELECT [Department], [Faculty_name], [Status], [Details] FROM [Research] ORDER BY [Department], [Faculty_name], [Status]" ProviderName="System.Data.SqlClient" />
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="research" Width="100%" AutoGenerateColumns="False"  AllowPaging="True"  AllowSorting="True" PageSize="2" CellPadding="-1">
                        <Columns>
                            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                            <asp:BoundField DataField="Faculty_name" HeaderText="Name of Faculty" SortExpression="Faculty_name"/>
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status"/>
                            <asp:BoundField DataField="Details" HeaderText="Extra details" SortExpression="Details"/>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

