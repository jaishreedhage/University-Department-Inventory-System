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
                    <asp:SqlDataSource ID="research" runat="server" ConnectionString="<%$ ConnectionStrings:UDIS %>" SelectCommand="SELECT * FROM Research ORDER BY Department, Faculty_name, Status" ProviderName="System.Data.SqlClient" />
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="research" AutoGenerateColumns="False" width="60%" AllowPaging="True"  AllowSorting="True" PageSize="2">
                        <Columns>
                            <asp:TemplateField HeaderText="Department" SortExpression="Department">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Department") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="200px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name of Faculty" SortExpression="Faculty_name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Faculty_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Faculty_name") %>'></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="200px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="200px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Extra details" SortExpression="Details">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Details") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Details") %>'></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="200px" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

