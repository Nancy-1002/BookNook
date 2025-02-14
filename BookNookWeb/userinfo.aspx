﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userinfo.aspx.cs" Inherits="BookNookWeb.userinfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/user.png" />
                                    
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 style= "color: #916407">Your Information</h3>
                                    <span>Account Status : </span>
                                    <asp:Label class="badge badge-success" ID="Label1" runat="server" Text="Your status"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="By The Name Of" ></asp:TextBox>
                                </div>
                               
                            </div>
                            <div class="col-md-6">
                                <label>Date Of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="DD/MM/YYYY" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                    </div>
        
                            </div>
                            <div class="col-md-6">
                                <label>Email Id</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                         <div class="row">
                            <div class="col-md-4">
                                <label>Select State</label>
                                    <div class="form-group">
                                        <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" placeholder="Gujarat">
                                             <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                                <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                                <asp:ListItem Text="Assam" Value="Assam" />
                                                <asp:ListItem Text="Bihar" Value="Bihar" />
                                                <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                                <asp:ListItem Text="Goa" Value="Goa" />
                                                <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                                <asp:ListItem Text="Haryana" Value="Haryana" />
                                                <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                                <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                                <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                                <asp:ListItem Text="Kerala" Value="Kerala" />
                                                <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                                <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                                <asp:ListItem Text="Manipur" Value="Manipur" />
                                                <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                                <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                                <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                                <asp:ListItem Text="Odisha" Value="Odisha" />
                                                <asp:ListItem Text="Punjab" Value="Punjab" />
                                                <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                                <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                                <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                                <asp:ListItem Text="Telangana" Value="Telangana" />
                                                <asp:ListItem Text="Tripura" Value="Tripura" />
                                                <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                                <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                                <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                        </asp:DropDownList>
                                    </div>
        
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Vadodara" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="xxxxxx" TextMode="Number"></asp:TextBox>
                                </div>
                             </div>
                        </div>

                          <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Your Full Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
        
                            </div>
                          </div>
                        <br /> 
                        <center>
                            <span class="badge badge-info">Your Login Credentials</span>
                        </center>
                        
                        <br />
                         

                         <div class="row">
                            <div class="col-md-4">
                                <label>User Id</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="User Id" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Old Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <label>New Password</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                    </div>
                             </div>
                          </div>
                                
                                <div class="form-group">
                                    <center>
                                        <asp:Button class="btn btn-outline-success btn-lg btn-block" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                                    </center>
                               
                                </div>
                                
                            
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                            
                            </div>
                        </div>

                    </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="200px" src="imgs/book.jpg" />
                                    
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 style= "color: #05b052">Your Purchased Books</h3>
                                    <span class="badge badge-warning">Yours Books Info</span>
                                </center>
                            </div>
                        </div>
                        

                        <div class="row">
                            <div class="col">
                                <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:BookNookWebConnectionString %>" SelectCommand="SELECT * FROM [Books]" ID="ctl00"></asp:SqlDataSource>
                                <hr>
                            </div>
                            <div class="col">&nbsp;</div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>

                  
                            </div>
                        </div>

            </div>
        </div>

             
    </div>

</asp:Content>
