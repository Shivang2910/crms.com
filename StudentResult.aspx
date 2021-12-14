<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentResult.aspx.cs" Inherits="CRMS.StudentResult" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" language="javascript">
        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
    </script>

    <link rel="stylesheet" href="css/custom.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
    <div class="container">
        <div class="text-center">
            <h2 class="main_hdng">Student Result</h2>
            <img src="images/title_line.png" class="img-fluid" />
        </div>
        <div class="container-fluid">
            <asp:UpdatePanel runat="server" ID="UpdatePanel10">
                <ContentTemplate>
                    <div class="container" style="margin-top: 20px;">
                        <div class="row">
                            <div class="col-md-4">
                                Name : 
                                    <asp:Label ID="name" runat="server" Font-Bold="true"></asp:Label>
                            </div>
                            <div class="col-md-4">
                                Mobile: 
                                    <asp:Label ID="mobile" runat="server" Font-Bold="true"></asp:Label>
                            </div>
                            <div class="col-md-4">
                                Year: 
                                    <asp:Label ID="year" runat="server" Font-Bold="true"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                Roll Number : 
                                    <asp:Label ID="rollno" runat="server" Font-Bold="true"></asp:Label>
                            </div>
                            <div class="col-md-6">
                                Branch: 
                                    <asp:Label ID="branch" runat="server" Font-Bold="true"></asp:Label>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-4">
                                Maths : 
                                    <asp:Label ID="maths" runat="server" Font-Bold="true"></asp:Label>
                            </div>
                            <div class="col-md-4">
                                Physics: 
                                     <asp:Label ID="physics" runat="server" Font-Bold="true"></asp:Label>
                            </div>
                            <div class="col-md-4">
                                Chemistry: 
                                     <asp:Label ID="chemistry" runat="server" Font-Bold="true"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                Computer : 
                                    <asp:Label ID="computer" runat="server" Font-Bold="true"></asp:Label>
                            </div>
                            <div class="col-md-4">
                                English: 
                                     <asp:Label ID="english" runat="server" Font-Bold="true"></asp:Label>
                            </div>
                            <div class="col-md-4">
                                Activity: 
                                     <asp:Label ID="activity" runat="server" Font-Bold="true"></asp:Label>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-4" style="margin-top: 25px;">
                                Grades : 
                                    <asp:Label ID="grade" runat="server" Font-Bold="true"></asp:Label>
                            </div>
                            <div class="col-md-4" style="margin-top: 25px;">
                                Total: 
                                     <asp:Label ID="total" runat="server" Font-Bold="true"></asp:Label>
                            </div>
                            <div class="col-md-4" style="margin-top: 25px;">
                                Percentage: 
                                     <asp:Label ID="percent" runat="server" Font-Bold="true"></asp:Label>
                                %
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4" style="margin-top: 25px;">
                                <asp:Button ID="btnback" runat="server" CssClass="btn btn-danger" OnClick="btnback_Click" Text="Back" />
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
