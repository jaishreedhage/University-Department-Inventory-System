<%@ Page Title="Student Information" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="margin-top:50px">
        <div class="row text-center">
            <div class="col-lg-6 col-lg-offset-3">
                <p class="nf-r2">
                    Registration for fall semester is now open. Students are requested to register for no more than 22 credits and no less than 18 credits.
                </p>
            </div>
        </div>
        <div class="row" style="margin-top:80px">
            <div class="col-lg-10 col-lg-offset-1">
                <div class="row">
                    <div class="col-sm-5">
                        <div class="row text-center nf-r1">
                            <b>COURSES AVAILABLE ARE</b>
                        </div>
                        <div class="row" style="margin-top:50px">
                            <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" GridLines="None" DataKeyNames="CourseID" DataSourceID="SqlDataSource1" PageSize="2" CellPadding="200" CellSpacing="100">
                                <HeaderStyle Font-Bold="True" />
                                <PagerStyle  HorizontalAlign="Center" />
                                
                                <Columns>
                                    <asp:TemplateField HeaderText="CourseID" SortExpression="CourseID">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CourseID") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CourseID") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="CourseName" SortExpression="CourseName" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CourseName") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CourseName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Department" SortExpression="Department">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Department") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Credits" SortExpression="Credits">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Credits") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Credits") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Choose">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLlocalDB;Initial Catalog=DepartmentDB;Integrated Security=True" SelectCommand="Select * from Course" />
                        </div>
                        <div class="row" style="margin-top:20px">
                            <div class="col-lg-4 col-lg-offset-4">
                                <asp:Button ID="add_courses" runat="server" Text="REGISTER SELECTED COURSES" OnClick="add_courses_Click" class="btn btn-success" />
                            </div>
                        </div>
                
                    </div>
                    <div class="col-sm-7">
                        <p class="text-center nf-r1">
                            <b><%# Student_details %></b>
                        </p> 
                        <div class="row">
                            <div class="col-lg-6 col-lg-offset-3">
                                <asp:Table ID="Table1" runat="server" Width="270px" Visible="false" style="margin-top:20px; margin-left:35px">
                                    <asp:TableRow ID="tr1" runat="server">
                                        <asp:TableHeaderCell ID="rg_n">REGISTRATION NUMBER : </asp:TableHeaderCell>
                                        <asp:TableCell ID="rgn"><%# reg_no %></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="TableRow1" runat="server">
                                        <asp:TableHeaderCell ID="na_m">NAME : </asp:TableHeaderCell>
                                        <asp:TableCell ID="nam"><%# name %></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="TableRow6" runat="server">
                                        <asp:TableHeaderCell ID="dept_n">DEPARTMENT : </asp:TableHeaderCell>
                                        <asp:TableCell ID="dept"><%# Dept %></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="TableRow2" runat="server">
                                        <asp:TableHeaderCell ID="add_n">ADDRESS : </asp:TableHeaderCell>
                                        <asp:TableCell ID="add"><%# address %></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="TableRow3" runat="server">
                                        <asp:TableHeaderCell ID="dob_n">DATE OF BIRTH : </asp:TableHeaderCell>
                                        <asp:TableCell ID="dob"><%# Dob %></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="TableRow4" runat="server">
                                        <asp:TableHeaderCell ID="year_joined_n">YEAR JOINED : </asp:TableHeaderCell>
                                        <asp:TableCell ID="year_joined"><%# Year_join %></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="TableRow5" runat="server">
                                        <asp:TableHeaderCell ID="year_grad_n">YEAR OF GRADUATION : </asp:TableHeaderCell>
                                        <asp:TableCell ID="year_grad"><%# Year_of_graduation %></asp:TableCell>
                                    </asp:TableRow>                          
                                </asp:Table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-10 col-lg-offset-1">
                                <div class="row text-center" style=" margin-top: 30px">
                                    <div class="col-lg-4 nf-r1">
                                        <b><asp:Label ID="Label5" runat="server" Text="Semester grade sheet : " Visible="false" /></b>
                                    </div>
                                    <div class="col-lg-4 nf-r1">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="100%" Height="30px" Visible="false" Font-Size="16px">
                                            <asp:ListItem>Choose semester</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:Button ID="Button1" runat="server" Text="SHOW" class="btn btn-primary btn-block" Visible="false" OnClick="Button1_Click"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top:40px">
                            <div class="col-lg-10 col-lg-offset-1">
                                <div class="row text-center nf-r1">
                                    <asp:Label ID="Label6" runat="server" Text="" Visible="false"></asp:Label>
                                </div>
                                <asp:GridView ID="GridView2" runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" GridLines="None" PageSize="2" Visible="true">
                                    <HeaderStyle Font-Bold="True" />
                                    <PagerStyle  HorizontalAlign="Center" />
                                    <SortedAscendingCellStyle />
                                    <SortedAscendingHeaderStyle />
                                    <SortedDescendingCellStyle />
                                    <SortedDescendingHeaderStyle  />
                                    <Columns>
                                        <asp:BoundField DataField="CourseID" HeaderText="CourseID" />
                                        <asp:BoundField DataField="CourseName" HeaderText="CourseName" />
                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                        <asp:BoundField DataField="Marks" HeaderText="Marks" />
                                        <asp:BoundField DataField="Grade" HeaderText="Grade" />
                                    </Columns>
                                </asp:GridView>
                            </div>          
                        </div>
                        <asp:GridView ID="GridView3" runat="server" Height="50px" Width="100%" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>

                    </div>
                </div> 
            </div>
            
        </div>
    </div>
</asp:Content>
