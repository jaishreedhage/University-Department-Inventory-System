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
                        <asp:Button ID="Button4" runat="server" Text="ADD NEW" class="btn btn-danger" OnClick="Button4_Click" Visible="false"/>
                        <asp:Button ID="Button5" runat="server" Text="SEARCH FOR EXISITING" OnClick="Button5_Click" class="btn btn-danger" style="margin-left:100px" Visible="false"/>
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
                        <asp:Panel runat="server" ID="Panel3" Width="100%" Visible="true">
                            <div class="row">
                                <div class="col-lg-offset-2 col-lg-10 nf-r1">
                                    <div class="row ">
                                        <div class="col-lg-2">
                                            <asp:Label ID="Label13" runat="server" Text="SEARCH STUDENT" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox12" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4 col-lg-1">
                                            <asp:Button ID="Button8" runat="server" Text="SEARCH" class="btn btn-primary"/>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-10 col-lg-offset-1">
                                            <asp:SqlDataSource ID="ds" runat="server" ConnectionString="<%$ConnectionStrings:UDIS %>" SelectCommand="Select * from Student where Reg_no = @reg">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="TextBox12" Name="reg" PropertyName="Text" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:GridView ID="GridView1" runat="server" DataSourceID="ds" AutoGenerateColumns="false">
                                                <Columns>
                                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                                    <asp:BoundField DataField="Address" HeaderText="Address" />
                                                    <asp:BoundField DataField="DOB" HeaderText="Date of Birth" />
                                                    <asp:BoundField DataField="Department" HeaderText="Department" />
                                                    <asp:BoundField DataField="Year_joined" HeaderText="Year joined" />
                                                    <asp:BoundField DataField="Year_to_graduate" HeaderText="Year to graduate" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel runat="server" ID="Panel4" Width="100%" Visible="true">
                            <div class="row">
                                <div class="col-lg-offset-2 col-lg-10 nf-r1">
                                    <div class="row ">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label14" runat="server" Text="SEARCH RESEARCH PAPER" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox13" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4">
                                            <asp:Button ID="Button9" runat="server" Text="SEARCH" class="btn btn-primary"/>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-10 col-lg-offset-1">
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:UDIS %>" SelectCommand="Select * from Research" FilterExpression="(Department like '%{0}%') or (Faculty_name like '%{0}%') or (Details like '%{0}%')">
                                                <FilterParameters>
                                                    <asp:ControlParameter ControlID="TextBox13" Name="Department" Type="String" DefaultValue="rubbish"/>                                             
                                                </FilterParameters>
                                            </asp:SqlDataSource>
                                            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="false">
                                                <Columns>
                                                    <asp:BoundField DataField="Department" HeaderText="Department" />
                                                    <asp:BoundField DataField="Faculty_name" HeaderText="Faculty_name" />
                                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                                    <asp:BoundField DataField="Details" HeaderText="Details" />
                                                </Columns>
                                            </asp:GridView>
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
</asp:Content>

