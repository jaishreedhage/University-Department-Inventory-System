<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Inventory.aspx.cs" Inherits="Inventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="margin-top:50px">
        <div class="row text-center">
            <div class="col-lg-6 col-lg-offset-3">
                <p class="nf-r2">
                    Here is the inventory and grant details of the different departments.
                </p>
            </div>
        </div>
        <div class="row" style="margin-top:80px">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="row text-center nf-r1">
                            <b>UNIVERSITY INVENTORY</b>
                        </div>
                        <div class="row" style="margin-top:50px">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="row text-center nf-r1">
                            <b>DEPARTMENT GRANTS</b>
                        </div>
                        <div class="row" style="margin-top:50px">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLlocalDB;Initial Catalog=DepartmentDB;Integrated Security=True" SelectCommand="SELECT * FROM [Grant] ORDER BY [Department], [Year] DESC, [University_funds]" ProviderName="System.Data.SqlClient" />                        
                            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" AllowSorting="True" DataKeyNames="Department">
                                <Columns>
                                    <asp:BoundField DataField="Department" HeaderText="Department" ReadOnly="True" SortExpression="Department" />
                                    <asp:BoundField DataField="University_funds" HeaderText="University funds" SortExpression="University_funds" />
                                    <asp:BoundField DataField="Miscellaneous_funds" HeaderText="Miscellaneous funds" SortExpression="Miscellaneous_funds" />
                                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

