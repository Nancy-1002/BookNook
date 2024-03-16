<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="BookNookWeb.WebForm2" %>
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
                                    <img width="150px" src="imgs/user.png" />
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 style= "color: #c40b75">User Login</h3>
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
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User Id" ></asp:TextBox>
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
                                <div class="form-group">
                                    <center>
                                       <a href="signup.aspx">
                                            <input  class="btn btn-outline-primary btn-lg btn-block" id="Button2"  type="button" value="Sign Up" />
                                       </a>
                                    </center>
                                    
                                </div>
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
