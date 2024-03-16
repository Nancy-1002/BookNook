<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BookNookWeb.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <section>
            <img src="imgs/home.jpg" class="img-fluid"/>
        </section>

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <center>
                            <h2>Our Elements</h2>
                            <p><b>Our three primary attractions</b></p>
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <center>
                            <img src="imgs/bookpick.jpg" />
                            <h3>Find your desired read</h3>               
                        </center>
                    </div>
                    <div class="col-md-4">
                        <center>
                            <img src="imgs/userfriendly.png" width="160px"/>
                            <h3>User friendly</h3>               
                        </center>
                    </div>
                    <div class="col-md-4">
                        <center>
                            <img src="imgs/transaction.jpg" width="160px"/>
                            <h3>Easy Transaction</h3>               
                        </center>
                    </div>
                </div>
            </div>
        </section>
        
        <br />
        <br />
        <br />
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <center>
                            <h2>Process</h2>
                            <p><b>Just three simple steps</b></p>
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <center>
                            <img src="imgs/registration.png" width="150px"/>
                            <h3>Login/Signup</h3>               
                        </center>
                    </div>
                    <div class="col-md-4">
                        <center>
                            <img src="imgs/user-login.jpg" width="200px"/>
                            <h3>Pick your read</h3>               
                        </center>
                    </div>
                    <div class="col-md-4">
                        <center>
                            <img src="imgs/happyreading.jpg" width="160px"/>
                            <h3>Easy billing and<br /> Viola Happy reading!</h3>               
                        </center>
                    </div>
               </div>
    </div>
</section>
        
</asp:Content>
