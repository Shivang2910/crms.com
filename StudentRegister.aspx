<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="CRMS.StudentRegister" %>

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

    <style>
        .tabstyle {
            position: relative;
            float: left;
            border: 1px solid white;
            color: white;
        }

        .selectedtab {
            background-color: orange;
            background-repeat: repeat-x;
            color: red;
        }

        .tab_new {
            border: 1px solid black;
            color: white;
            padding: 2px 10px;
        }

        .selectedtab_new {
            background-color: orange;
            background-repeat: repeat-x;
            color: red;
        }

        div.ex3 {
            width: auto;
            height: 300px;
            overflow: auto;
        }

        /* MultiView Ends Here..*/
        hr.new4 {
            border: 1px solid blue;
        }

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
    <div class="container">
        <div class="text-center">
            <h2 class="main_hdng">Administration Panel</h2>
            <img src="images/title_line.png" class="img-fluid" />
            <asp:Button ID="btnlogout" runat="server" CssClass="btn btn-primary" OnClick="btnlogout_Click" Text="Logout"/>
        </div>
        <div class="container-fluid">
            <asp:Menu ID="Menu1" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tabstyle"
                StaticSelectedStyle-CssClass="selectedtab" CssClass="panel-heading" runat="server"
                OnMenuItemClick="Menu1_MenuItemClick">
                <Items>
                    <asp:MenuItem Text="Student Register" Value="0" Selected="true"></asp:MenuItem>
                    <asp:MenuItem Text="Result" Value="1"></asp:MenuItem>
                </Items>
            </asp:Menu>
            <asp:UpdatePanel ID="up1" runat="server">
                <ContentTemplate>
                    <div class="panel with-nav-tabs nav-tabs-brdr">
                        <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
                            <asp:View ID="View1" runat="server">
                                <br />
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <asp:Label ID="studentname" Text="First Name*" runat="server"></asp:Label>
                                            <asp:TextBox ID="txtfirstname" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfirstname"
                                                Display="Dynamic" ErrorMessage="First Name is required !" ValidationGroup="register" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Label ID="Label1" Text="Last Name*" runat="server"></asp:Label>
                                            <asp:TextBox ID="txtlastname" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtlastname"
                                                Display="Dynamic" ErrorMessage="Last Name is required !" ValidationGroup="register" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Label ID="Label2" Text="Mobile*" runat="server"></asp:Label>
                                            <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <asp:Label ID="Label3" Text="Roll Number*" runat="server"></asp:Label>
                                            <asp:TextBox ID="txtrollnumber" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Label ID="Label4" Text="Branch*" runat="server"></asp:Label>
                                            <asp:DropDownList ID="ddlbranch" runat="server" CssClass="form-control">
                                                <asp:ListItem Text="Select" Enabled="true" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="CSE" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="ECE" Value="2"></asp:ListItem>
                                                <asp:ListItem Text="EEE" Value="3"></asp:ListItem>
                                                <asp:ListItem Text="ME" Value="4"></asp:ListItem>
                                                <asp:ListItem Text="CE" Value="4"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Label ID="Label5" Text="Year*" runat="server"></asp:Label>
                                            <asp:DropDownList ID="ddlyear" runat="server" CssClass="form-control">
                                                <asp:ListItem Text="Select" Enabled="true" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="First" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="Second" Value="2"></asp:ListItem>
                                                <asp:ListItem Text="Third" Value="3"></asp:ListItem>
                                                <asp:ListItem Text="Fourth" Value="4"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row">
                                        <asp:Button ID="btnsubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btnsubmit_Click" ValidationGroup="register" />
                                    </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <div class="container">
                                    <div class="text-center">
                                        <h3>Search</h3>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <asp:Label ID="Label6" Text="Roll Number" runat="server"></asp:Label>
                                            <asp:TextBox ID="txtsearchroll" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Label ID="Label7" Text="First Name" runat="server"></asp:Label>
                                            <asp:TextBox ID="txtsearchfirstname" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4" style="margin-top: 20px;">
                                            <asp:Button ID="searchstudent" runat="server" CssClass="btn btn-success" OnClick="searchstudent_Click" Text="Search" />
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="ex3">
                                                <div style="text-align: center">
                                                    <asp:Label ID="showblank" Visible="false" runat="server" Text="No Data Found" ForeColor="OrangeRed" Font-Size="Medium"></asp:Label>
                                                </div>
                                                <div class="table-responsive crop_list_tbl tbl_fnt_sz tm_src_tbl_scroll">
                                                    <asp:GridView runat="server" ID="gridfeedback" CssClass="table" AutoGenerateColumns="false" OnRowCommand="gridfeedback_RowCommand" DataKeyNames="sid" GridLines="None">
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="S.No." HeaderStyle-CssClass="fixed_hdr">
                                                                <ItemTemplate>
                                                                    <%# Container.DataItemIndex+1 %>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="firstname" HeaderText="Firstname" HeaderStyle-CssClass="fixed_hdr" />
                                                            <asp:BoundField DataField="lastname" HeaderText="Lastname" HeaderStyle-CssClass="fixed_hdr" />
                                                            <asp:BoundField DataField="mobile" HeaderText="Mobile" HeaderStyle-CssClass="fixed_hdr" />
                                                            <asp:BoundField DataField="rollnumber" HeaderText="Roll No." HeaderStyle-CssClass="fixed_hdr" />
                                                            <asp:BoundField DataField="branch" HeaderText="Branch" HeaderStyle-CssClass="fixed_hdr" />
                                                            <asp:BoundField DataField="year" HeaderText="Year" HeaderStyle-CssClass="fixed_hdr" />
                                                            <asp:TemplateField HeaderText="Response" HeaderStyle-CssClass="fixed_hdr">
                                                                <ItemTemplate>
                                                                    <asp:Button ID="btnview" runat="server" Text="View" CssClass="btn reg_btn" CommandName="viewcomment" CommandArgument='<%#Eval("sid") %>' />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                    </asp:GridView>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:View>
                        </asp:MultiView>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

    <!-- Modalpopup -->
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="HiddenField1"
        CancelControlID="close" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panl1" runat="server" align="center" Style="display: none">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="exampleModalLabel">Result</h4>
                </div>
                <div class="modal-body">
                    <asp:UpdatePanel runat="server" ID="UpdatePanel10">
                        <ContentTemplate>
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
                                    <asp:TextBox ID="maths" runat="server" CssClass="form-control" OnTextChanged="TotalResult_TextChanged" AutoPostBack="true"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    Physics: 
                                     <asp:TextBox ID="physics" runat="server" CssClass="form-control" OnTextChanged="TotalResult_TextChanged" AutoPostBack="true"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    Chemistry: 
                                     <asp:TextBox ID="chemistry" runat="server" CssClass="form-control" OnTextChanged="TotalResult_TextChanged" AutoPostBack="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    Computer : 
                                    <asp:TextBox ID="computer" runat="server" CssClass="form-control" OnTextChanged="TotalResult_TextChanged" AutoPostBack="true"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    English: 
                                     <asp:TextBox ID="english" runat="server" CssClass="form-control" OnTextChanged="TotalResult_TextChanged" AutoPostBack="true"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    Activity: 
                                     <asp:TextBox ID="activity" runat="server" CssClass="form-control" OnTextChanged="TotalResult_TextChanged" AutoPostBack="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    Grades : 
                                    <asp:TextBox ID="grade" runat="server" CssClass="form-control"></asp:TextBox>
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
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="UpdateResult" runat="server" Text="Update" OnClick="UpdateResult_Click" CssClass="btn btn-primary" />
                    <asp:Button ID="close" runat="server" Text="Close" CssClass="btn btn-danger" />
                </div>
            </div>
        </div>
    </asp:Panel>
    <!-- Modal PopUp -->

</asp:Content>
