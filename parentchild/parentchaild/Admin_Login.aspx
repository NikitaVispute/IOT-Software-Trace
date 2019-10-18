<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>  </title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link rel="stylesheet" type="text/css" href="style/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
        <div id="header">
            <div id="logo">
                <div id="logo_text">
                    <!-- class="logo_colour", allows you to change the colour of the text -->
                    <h1>
                        <a href="#">Child Tracking System<span class="logo_colour"></span></a></h1>
                    <h2>
                    </h2>
                </div>
            </div>
        </div>
        <div id="content_header">
        </div>
        <div id="site_content">
            <%--  <div id="banner">
            </div>--%>
            <div id="content">
                <!-- insert the page content here -->
                <h1>
                    Welcome to the Admin Panel
                </h1>
                <table>
                    <tr>
                        <td>
                            User Name:-
                        </td>
                        <td>
                            <asp:TextBox ID="txtusername" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername"
                                ErrorMessage="Username Is Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password:-
                        </td>
                        <td>
                            <asp:TextBox ID="txtpassword" runat="server" Height="25px" Width="200px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtusername"
                                ErrorMessage="Password Id Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Larger" Height="35px" Text="Login" Width="100px" OnClick="btnLogin_Click" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
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
            <%-- <p>
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
