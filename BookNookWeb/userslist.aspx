<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userslist.aspx.cs" Inherits="BookNookWeb.userslist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <div class="row">
        <div class="col mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="150px" src="imgs/users.png" />
                                
                            </center>

                        </div>

                    </div>

                    <div class="row">
                        <div class="col">
                            <center>
                                <h3 style= "color: #780fce">Users List</h3>
                            </center>
                        </div>
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

            <br /> <br />
            <a href="Home.aspx"> << Go to home page </a>
            <br /><br />
     </div>

</asp:Content>
