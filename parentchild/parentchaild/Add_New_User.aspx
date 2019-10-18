<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_New_User.aspx.cs" Inherits="Add_New_User" %>

<%@ Register TagName="header" TagPrefix="uc1" Src="~/includes/Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>  </title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
        <div>
            <uc1:header ID="header" runat="server" />
        </div>
        <div id="content_header">
        </div>
        <div id="site_content">
            <%--<div id="banner">
            </div>--%>
            <div id="content">
                <!-- insert the page content here -->
                <h1>
                    Add New 
                    Child &nbsp&nbsp<asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                </h1>
                <table align="center" style="margin: 0px auto; height: 300px" width="100%">
                    <%--<tr>
                <td></td>
                <td></td>
                <td></td>
                </tr>--%>
                    <tr>
                        <td>
                            Full Name 
                            of child:-
                        </td>
                        <td>
                            <asp:TextBox ID="txtfull_name" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfull_name"
                                ErrorMessage="User Name Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Student ID :- 
                        </td>
                        <td>
                            <asp:TextBox ID="txtId" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtId"
                                ErrorMessage="Id Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address:-
                        </td>
                        <td>
                            <asp:TextBox ID="txtaddress" runat="server" Height="62px" TextMode="MultiLine" Width="204px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress"
                                ErrorMessage="Address Is Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           Contact No 
                            of parent:-
                        </td>
                        <td>
                            <asp:TextBox ID="txtcontact_no" runat="server" Height="25px" Width="200px" MaxLength="10"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcontact_no"
                                ErrorMessage="Contact No is Required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcontact_no"
                                ErrorMessage="Invalid Contact No" ValidationExpression="^[0-9]{10,10}$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            RFID:-
                         </td>
                        <td>
                            <asp:TextBox ID="txtemail_id" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Password:-
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" Height="25px" Width="200px" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword"
                                ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="30px" Width="80px"
                                OnClick="btnSubmit_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="30px" Width="80px"
                                OnClick="btnCancel_Click" />
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div id="content_footer">
        </div>
        <div id="footer">
            <%--<p>
                <a href="#">Home</a> | <a href="#">Examples</a> | <a href="#">
                    A Page</a> | <a href="#">Another Page</a> | <a href="#">Contact
                        Us</a></p>--%>
            <%-- <p>
                Copyright &copy; simplestyle_horizon | <a href="http://validator.w3.org/check?uri=referer">
                    HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>
                | <a href="http://www.html5webtemplates.co.uk">Simple web templates by HTML5</a></p>--%>
        </div>
    </div>
    </form>
</body>
</html>
