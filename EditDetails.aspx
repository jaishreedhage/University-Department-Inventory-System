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
                    <asp:Button ID="Button14" runat="server" Text="GRANT" class="btn btn-block btn-success" OnClick="Button14_Click" style="margin-top:20px" />
                </div>
                <div class="col-lg-10 col-lg-offset-1">
                    <div class="row">
                        <asp:Button ID="Button4" runat="server" Text="ADD NEW STUDENT" class="btn btn-danger" OnClick="Button4_Click" Visible="false"/>
                        <asp:Button ID="Button5" runat="server" Text="SEARCH FOR EXISITING STUDENT" OnClick="Button5_Click" class="btn btn-danger" style="margin-left:100px" Visible="false"/>
                        <asp:Button ID="Button10" runat="server" Text="ADD NEW RESEARCH PAPER" class="btn btn-danger" OnClick="Button10_Click" Visible="false"/>
                        <asp:Button ID="Button11" runat="server" Text="SEARCH FOR EXISITING RESEARCH PAPER" OnClick="Button11_Click" class="btn btn-danger" style="margin-left:100px" Visible="false"/>
                        <asp:Button ID="Button12" runat="server" Text="ADD NEW EQUPMENT" class="btn btn-danger" OnClick="Button12_Click" Visible="false"/>
                        <asp:Button ID="Button13" runat="server" Text="SEARCH FOR EXISITING EQUIPMENT" OnClick="Button13_Click" class="btn btn-danger" style="margin-left:100px" Visible="false"/>
                        <asp:Button ID="Button15" runat="server" Text="ADD NEW GRANT" class="btn btn-danger" OnClick="Button15_Click" Visible="false"/>
                        <asp:Button ID="Button16" runat="server" Text="SEARCH FOR EXISITING GRANT" OnClick="Button16_Click" class="btn btn-danger" style="margin-left:100px" Visible="false"/>
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
                        <asp:Panel runat="server" ID="Panel5" Width="100%" Visible="false">
                            <div class="row">
                                <div class="col-lg-offset-2 col-lg-10 nf-r1">
                                    <div class="row ">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label15" runat="server" Text="DEPARTMENT" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox14" runat="server" BorderStyle="NotSet" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row" >
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label17" runat="server" Text="YEAR" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox15" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row" >
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label18" runat="server" Text="UNIVERSITY FUNDS" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox16" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row" >
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label19" runat="server" Text="MISCELLANEOUS FUNDS" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox17" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>                                    
                                    <div class="row" style="margin-top:30px">
                                        <div class="col-lg-6 col-lg-offset-3">
                                            <asp:Button ID="Button17" runat="server" Text="ADD GRANT" class="btn btn-primary" OnClick="Button17_Click"/>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top:5px">
                                        <div class="col-lg-8 col-lg-offset-2">
                                            <asp:Label ID="Label20" runat="server" Text="" class="nf-r1" ForeColor="Red"  style="margin-left:45px"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel runat="server" ID="Panel6" Width="100%" Visible="false">
                            <div class="row">
                                <div class="col-lg-offset-2 col-lg-10 nf-r1">
                                    <div class="row ">
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label21" runat="server" Text="EQUIPMENT" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox18" runat="server" BorderStyle="NotSet" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row" >
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label22" runat="server" Text="LOCATION" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox19" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row" >
                                        <div class="col-lg-3">
                                            <asp:Label ID="Label23" runat="server" Text="QUANTITY" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-4 col-lg-offset-1 form-group">
                                            <asp:TextBox ID="TextBox20" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4"></div>
                                    </div>
                                    <div class="row" style="margin-top:30px">
                                        <div class="col-lg-6 col-lg-offset-3">
                                            <asp:Button ID="Button18" runat="server" Text="ADD EQUIPMENT" class="btn btn-primary" OnClick="Button18_Click"/>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top:5px">
                                        <div class="col-lg-8 col-lg-offset-2">
                                            <asp:Label ID="Label25" runat="server" Text="" class="nf-r1" ForeColor="Red"  style="margin-left:45px"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel runat="server" ID="Panel3" Width="100%" Visible="false">
                            <div class="row">
                                <div class="nf-r1">
                                    <div class="row" style="margin-top:20px">
                                        <div class="col-lg-2 col-lg-offset-2">
                                            <asp:Label ID="Label13" runat="server" Text="SEARCH STUDENT" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-3 form-group">
                                            <asp:TextBox ID="TextBox12" runat="server" class="form-control" placeholder="Registration number"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-5 ">
                                            <asp:Button ID="Button8" runat="server" Text="SEARCH" class="btn btn-primary" OnClick="Button8_Click"/>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4 col-lg-offset-4">
                                            <asp:Label ID="Label29" runat="server" Text="" class="nf-r1" ForeColor="red"/>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top:40px">
                                        <div class="col-lg-8 col-lg-offset-1">
                                            <asp:SqlDataSource ID="ds" runat="server" ConnectionString="<%$ ConnectionStrings:UDIS %>" SelectCommand="Select * from Student where Reg_no = @reg" ProviderName="System.Data.SqlClient" UpdateCommand="Update Student set Name=@Name,Address=@Address,Year_to_graduate=@Year_to_graduate,Department=@Department where Reg_no = @reg">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="TextBox12" Name="reg" PropertyName="Text" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:ControlParameter ControlID="TextBox12" Name="reg" PropertyName="Text" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <asp:GridView ID="GridView1" runat="server" DataSourceID="ds" CellSpacing="20" AutoGenerateColumns="False" GridLines="None">
                                                <HeaderStyle Font-Bold="True" />
                                                <PagerStyle  HorizontalAlign="Center" />
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
                                                    <asp:CommandField ShowEditButton="True" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                        <div class="col-lg-3"></div>
                                    </div>
                                    <div class="row" style="margin-top:40px">
                                        <div class="col-lg-3 col-lg-offset-2">
                                            <asp:Label ID="Label27" runat="server" Text="Semester grade sheet :" class="nf-r1" Visible="false" />
                                        </div>
                                        <div class="col-lg-2 form-group">
                                            <asp:DropDownList ID="DropDownList1" runat="server" Width="100%" Height="30px" Visible="false" Font-Size="16px">                                               
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-lg-5 ">
                                            <asp:Button ID="Button21" runat="server" Text="SEARCH" class="btn btn-primary" Visible="false"/>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top:40px">
                                        <div class="col-lg-10 col-lg-offset-1">
                                            <div class="row text-center nf-r1">
                                                <asp:Label ID="Label28" runat="server" Text="" Visible="true"></asp:Label>
                                            </div>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:UDIS %>" SelectCommand="Select Registered_courses.CourseID, Course.CourseName, Registered_courses.Status, Registered_courses.Marks, Registered_courses.Grade from Registered_courses inner join Course on Registered_courses.CourseID = Course.CourseID where Reg_no = @reg and Semester = @sem" ProviderName="System.Data.SqlClient" UpdateCommand="Update Registered_courses set Marks=@Marks, Grade=@Grade, Status=@Status where Reg_no = @reg and CourseID = @CourseID">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="TextBox12" Name="reg" PropertyName="Text" />
                                                    <asp:ControlParameter ControlID="DropDownList1" Name="sem" PropertyName="SelectedValue" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:ControlParameter ControlID="TextBox12" Name="reg" PropertyName="Text" />
                                                    
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <asp:GridView ID="GridView5" runat="server" DataSourceID="SqlDataSource4" AutoGenerateColumns="False" DataKeyNames="CourseID" AllowPaging="True" AllowSorting="True" GridLines="None" PageSize="2">
                                                <HeaderStyle Font-Bold="True" />
                                                <PagerStyle  HorizontalAlign="Center" />
                                                <SortedAscendingCellStyle />
                                                <SortedAscendingHeaderStyle />
                                                <SortedDescendingCellStyle />
                                                <SortedDescendingHeaderStyle  />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="CourseID">
                                                        <EditItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CourseID") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CourseID") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="120px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="CourseName">
                                                        <EditItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("CourseName") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CourseName") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="150px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Status">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Status") %>' CssClass="form-control"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="170px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Marks">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Marks") %>' CssClass="form-control"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Marks") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="150px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Grade">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Grade") %>' CssClass="form-control"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Grade") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="150px" />
                                                    </asp:TemplateField>
                                                    <asp:CommandField ShowEditButton="True" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>          
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
                                                <HeaderStyle Font-Bold="True" />
                                                <PagerStyle  HorizontalAlign="Center" />
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
                        <asp:Panel runat="server" ID="Panel7" Width="100%" Visible="false">
                            <div class="row">
                                <div class="nf-r1">
                                    <div class="row ">
                                        <div class="col-lg-2 col-lg-offset-1">
                                            <asp:Label ID="Label24" runat="server" Text="SEARCH GRANTS" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-3 form-group">
                                            <asp:TextBox ID="TextBox21" runat="server" class="form-control" placeholder="Department"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-2 form-group">
                                            <asp:TextBox ID="TextBox22" runat="server" class="form-control" placeholder="Year"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4 ">
                                            <asp:Button ID="Button19" runat="server" Text="SEARCH" class="btn btn-primary"/>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-8 col-lg-offset-1">
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UDIS %>" SelectCommand="SELECT * FROM [Grants] ORDER BY [Department], [Year] DESC" ProviderName="System.Data.SqlClient" UpdateCommand="Update Grants set University_funds=@University_funds, Miscellaneous_funds=@Miscellaneous_funds where Department=@Dept">
                                                <UpdateParameters>
                                                    <asp:ControlParameter ControlID="TextBox21" Name="Dept" PropertyName="Text" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <asp:GridView ID="GridView3" DataSourceID="SqlDataSource2" runat="server" AutoGenerateColumns="False" GridLines="None">
                                                <HeaderStyle Font-Bold="True" />
                                                <PagerStyle  HorizontalAlign="Center" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Department">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Department") %>' CssClass="form-control"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="200px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Year">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Year") %>' CssClass="form-control"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Year") %>' ></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="200px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="University funds">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("University_funds") %>' CssClass="form-control"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("University_funds") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="200px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Miscellaneous funds">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Miscellaneous_funds") %>' CssClass="form-control"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Miscellaneous_funds") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="200px" />
                                                    </asp:TemplateField>
                                                    <asp:CommandField ShowEditButton="True" />
                                                </Columns>

                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel runat="server" ID="Panel8" Width="100%" Visible="false">
                            <div class="row">
                                <div class="nf-r1">
                                    <div class="row ">
                                        <div class="col-lg-2 col-lg-offset-1">
                                            <asp:Label ID="Label26" runat="server" Text="SEARCH EQUIPMENT" class="nf-r1" />
                                        </div>
                                        <div class="col-lg-3 form-group">
                                            <asp:TextBox ID="TextBox23" runat="server" class="form-control" placeholder="EQUIPMENT"></asp:TextBox>
                                        </div>
                                        <div class="col-lg-4 ">
                                            <asp:Button ID="Button20" runat="server" Text="SEARCH" class="btn btn-primary"/>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-8 col-lg-offset-1">
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:UDIS %>" SelectCommand="SELECT * FROM [Inventory] WHERE ([Equipment] = @Equipment) ORDER BY [Datetime_updated] DESC" ProviderName="System.Data.SqlClient" UpdateCommand="Update Inventory set Location=@Location,Quantity=@Quantity,Datetime_Updated=default where Equipment=@Equipment">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="TextBox23" Name="Equipment" PropertyName="Text" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:ControlParameter ControlID="TextBox23" Name="Equipment" PropertyName="Text" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <asp:GridView ID="GridView4" DataSourceID="SqlDataSource3" runat="server" AutoGenerateColumns="False" GridLines="None">
                                                <HeaderStyle Font-Bold="True" />
                                                <PagerStyle  HorizontalAlign="Center" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Equipment">
                                                        <EditItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Equipment") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Equipment") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="200px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Location">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Location") %>' CssClass="form-control"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="200px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Quantity">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Quantity") %>' CssClass="form-control"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="200px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="DateTime Updated">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Datetime_updated") %>' CssClass="form-control"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Datetime_updated") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="200px" />
                                                    </asp:TemplateField>
                                                    <asp:CommandField ShowEditButton="True" />
                                                </Columns>
                                                
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                    <div class="row" style="margin-top:30px">

                    </div>
                </div>                
            </div>
        </div>
    </div>
</asp:Content>

