<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="books.aspx.cs" Inherits="BookNookWeb.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/bookpick.jpg" />
                                    
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 style= "color: #780fce">Book Selection</h3>
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
                                <label>Book Id</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="E.g. : 101" TextMode="Number"></asp:TextBox>
                                </div>
                               
                            </div>
                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="By the Name Of" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-4">
                                <label>Woman/Man of letter</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="J K Rowling" TextMode="SingleLine"></asp:TextBox>
                                    </div>
        
                            </div>
                            <div class="col-md-4">
                                <label>Amount</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Quantity" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <label>Price</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Value" TextMode="Number"></asp:TextBox>
                                </div>
                             </div>
                        </div>


                         
                          
                        <br /> 
                        
                         

                         
                                
                                <div class="form-group">
                                    <center>
                                        <asp:Button class="btn btn-outline-success btn-lg btn-block" ID="Button1" runat="server" Text="Add Book" OnClick="Button1_Click" />
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

</asp:Content>
