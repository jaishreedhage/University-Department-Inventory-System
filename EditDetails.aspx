<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditDetails.aspx.cs" Inherits="EditDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
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
            <div class="row" style="margin-top:80px">
                <div class="col-lg-1 btn-group-vertical" style="margin-top:50px">
                    <asp:Button ID="Button1" runat="server" Text="STUDENTS" class="btn btn-block btn-success" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="RESEARCH" class="btn btn-block btn-success" OnClick="Button2_Click" style="margin-top:20px" />
                    <asp:Button ID="Button3" runat="server" Text="INVENTORY" class="btn btn-block btn-success" OnClick="Button3_Click" style="margin-top:20px" />
                </div>
                <div class="col-lg-10 col-lg-offset-1">
                    <div class="row">
                        <asp:Button ID="Button4" runat="server" Text="ADD NEW STUDENT" class="btn btn-danger" OnClick="Button4_Click" Visible="false"/>
                        <asp:Button ID="Button5" runat="server" Text="SEARCH FOR EXISITING STUDENT" OnClick="Button5_Click" class="btn btn-danger" style="margin-left:100px" Visible="false"/>
                        <asp:Button ID="Button10" runat="server" Text="ADD NEW RESEARCH PAPER" class="btn btn-danger" OnClick="Button10_Click" Visible="false"/>
                        <asp:Button ID="Button11" runat="server" Text="SEARCH FOR EXISITING RESEARCH PAPER" OnClick="Button11_Click" class="btn btn-danger" style="margin-left:100px" Visible="false"/>
                        <asp:Button ID="Button12" runat="server" Text="ADD NEW" class="btn btn-danger" OnClick="Button12_Click" Visible="false"/>
                        <asp:Button ID="Button13" runat="server" Text="SEARCH FOR EXISITING" OnClick="Button13_Click" class="btn btn-danger" style="margin-left:100px" Visible="false"/>
                    </div>
                    <div class="row" style="margin-top:30px">
                        <asp:Panel runat="server" ID="Panel1" Width="100%" Visible="false">
                            <div class="row">
                                <div class="col-lg-offset-2 col-lg-10 nf-r1">
                                    <div class="row ">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label1" runat="server" Text="REGISTRATION NUMBER" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="NotSet" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row" >
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label2" runat="server" Text="NAME" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row" >
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label7" runat="server" Text="DEPARTMENT" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row" >
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label3" runat="server" Text="ADDRESS" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label4" runat="server" Text="DOB" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label5" runat="server" Text="YEAR JOINING" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label6" runat="server" Text="YEAR OF GRADUATION" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row" style="margin-top:30px">
                                        <div class="col-lg-6 col-lg-offset-3">
                                            <asp:Button ID="Button6" runat="server" Text="ADD STUDENT" class="btn btn-primary" OnClick="Button6_Click"/>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top:5px">
                                        <div class="col-lg-8 col-lg-offset-2">
                                            <asp:Label ID="Label8" runat="server" Text="" class="nf-r1" ForeColor="Red"  style="margin-left:45px"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel runat="server" ID="Panel2" Width="100%" Visible="false">
                            <div class="row">
                                <div class="col-lg-offset-2 col-lg-10 nf-r1">
                                    <div class="row ">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label9" runat="server" Text="DEPARTMENT" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox8" runat="server" BorderStyle="NotSet" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row" >
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label10" runat="server" Text=" FACULTY NAME" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row" >
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label11" runat="server" Text="STATUS" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox10" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row" >
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label12" runat="server" Text="DETAILS" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox11" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>                                    
                                    <div class="row" style="margin-top:30px">
                                        <div class="col-lg-6 col-lg-offset-3">
                                            <asp:Button ID="Button7" runat="server" Text="ADD RESEARCH" class="btn btn-primary" OnClick="Button7_Click"/>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top:5px">
                                        <div class="col-lg-8 col-lg-offset-2">
                                            <asp:Label ID="Label16" runat="server" Text="" class="nf-r1" ForeColor="Red"  style="margin-left:45px"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel runat="server" ID="Panel3" Width="100%" Visible="false">
                            <div class="row">
                                <div class="nf-r1">
                                    <div class="row ">
                                        <div class="col-lg-2 col-lg-offset-2">
                                            <asp:Label ID="Label13" runat="server" Text="SEARCH STUDENT" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-3 form-group">
                                            <asp:TextBox ID="TextBox12" runat="server" class="form-control" placeholder="Registration number"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-5 ">
                                            <asp:Button ID="Button8" runat="server" Text="SEARCH" class="btn btn-primary"/>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-8 col-lg-offset-1">
                                            <asp:SqlDataSource ID="ds" runat="server" ConnectionString="<%$ ConnectionStrings:UDIS %>" SelectCommand="Select * from Student where Reg_no = @reg" ProviderName="System.Data.SqlClient" UpdateCommand="Update Student set Name=@Name where Reg_no = @reg">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="TextBox12" Name="reg" PropertyName="Text" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:ControlParameter ControlID="TextBox12" Name="reg" PropertyName="Text" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <asp:GridView ID="GridView1" runat="server" DataSourceID="ds" Font-Size="Smaller" CellSpacing="20" AutoGenerateColumns="False" GridLines="None"  AutoGenerateEditButton="True">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Name">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text='<%# Bind("Name") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="150px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Address">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text='<%# Bind("Address") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="150px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="DOB">
                                                        <EditItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("DOB") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("DOB") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="150px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Department">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("Department") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="170px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Year_joined">
                                                        <EditItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Year_joined") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Year_joined") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="170px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Year_to_graduate">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Text='<%# Bind("Year_to_graduate") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Year_to_graduate") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="170px" />
                                                    </asp:TemplateField>
                                                    
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                        <div class="col-lg-3"></div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel runat="server" ID="Panel4" Width="100%" Visible="false">
                            <div class="row">
                                <div class="nf-r1">
                                    <div class="row">
                                        <div class="col-lg-3 col-lg-offset-2">
                                            <asp:Label ID="Label14" runat="server" Text="SEARCH RESEARCH PAPER"/>
                                        </div>
                                        <div class="col-lg-3  form-group">
                                            <asp:TextBox ID="TextBox13" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Button ID="Button9" runat="server" Text="SEARCH" class="btn btn-primary"/>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-8 col-lg-offset-1">
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:UDIS %>" SelectCommand="Select * from Research" FilterExpression="(Department like '%{0}%') or (Faculty_name like '%{0}%') or (Details like '%{0}%')">
                                                <FilterParameters>
                                                    <asp:ControlParameter ControlID="TextBox13" Name="Department" Type="String" DefaultValue="rubbish"/>                                             
                                                </FilterParameters>
                                            </asp:SqlDataSource>
                                            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" GridLines="None" AutoGenerateEditButton="True">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Department">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text='<%# Bind("Department") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="200px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Faculty_name">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text='<%# Bind("Faculty_name") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Faculty_name") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="200px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Status">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("Status") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server"  Text='<%# Bind("Status") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="200px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Details">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Text='<%# Bind("Details") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Details") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="200px" />
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                        <div class="col-lg-3"></div>
                                    </div>                                 
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </div>                
            </div>
        </div>
    </div>
</asp:Content>

