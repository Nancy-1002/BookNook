<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="BookNookWeb.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="150px" src="imgs/adminlogin.jpg" />
                            </center>

                        </div>

                    </div>

                    <div class="row">
                        <div class="col">
                            <center>
                                <h3 style= "color: #780fce">Admin Login</h3>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin Id" ></asp:TextBox>
                            </div>

                            <hr />
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Open Sesame" TextMode="Password"></asp:TextBox>
                            </div>
                            <hr />
                            <div class="form-group">
                                <center>
                                    <asp:Button class="btn btn-outline-success btn-lg btn-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </center>
                               
                            </div>
                            <hr />
                            
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            
                        </div>
                    </div>

                </div>
            </div>

            <br /> <br />
            <a href="Home.aspx"> << Go to home page </a>
            <br /><br />
        </div>
    </div>
</div>

</asp:Content>
