<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRMS._Default" %>

<asp:Content runat="server" ID="HeaderContent" ContentPlaceHolderID="HeadContent">

    <%-- Offline Bootstrap --%>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>

</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="jumbotron text-center">
        <h2>Computer Result Management System</h2>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <div class="panel panel-primary" runat="server" id="loginpanel">
                    <div class="panel-heading text-center">Login Panel</div>
                    <div class="panel-body text-center">
                        <asp:Button ID="adminbtn" CssClass="btn btn-primary" runat="server" Text="Admin Login" OnClick="adminbtn_Click" />
                        <asp:Button ID="studentbtn" CssClass="btn btn-primary" runat="server" Text="Student Login" OnClick="studentbtn_Click" />
                    </div>
                </div>

                <div class="panel panel-success" runat="server" id="adminpanel" visible="false">
                    <div class="panel-heading text-center">Admin Panel</div>
                    <div class="panel-body">
                        <asp:Label ID="username" Text="Username*" runat="server"></asp:Label>
                        <asp:TextBox ID="txtusername" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Label ID="password" Text="Password*" runat="server"></asp:Label>
                        <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <hr />
                        <asp:Button ID="btnlogin" CssClass="btn btn-success" runat="server" Text="Login" OnClick="btnlogin_Click" />
                        <asp:Button ID="backbtn" CssClass="btn btn-danger" runat="server" Text="Back" OnClick="backbtn_Click" />
                    </div>
                </div>

                <div class="panel panel-success" runat="server" id="studentpanel" visible="false">
                    <div class="panel-heading text-center">Student Panel</div>
                    <div class="panel-body">
                        <asp:Label ID="rollno" Text="Roll Number*" runat="server"></asp:Label>
                        <asp:TextBox ID="txtrollnumber" runat="server" CssClass="form-control"></asp:TextBox>
                        <hr />
                        <asp:Button ID="btnstdlogin" CssClass="btn btn-success" runat="server" Text="Login" OnClick="btnstdlogin_Click" />
                        <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Back" OnClick="backbtn_Click" />
                    </div>
                </div>
            </div>
            <div class="col-sm-4"></div>
        </div>
    </div>
</asp:Content>
