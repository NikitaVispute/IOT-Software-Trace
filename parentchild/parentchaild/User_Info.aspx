<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Info.aspx.cs" Inherits="User_Info" %>

<%@ Register src="includes/Header2.ascx" tagname="Header2" tagprefix="uc1" %>

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
            <uc1:Header2 ID="Header21" runat="server" />
        </div>
        <div id="content_header">
        </div>
        <div id="site_content">
            <div id="content">
                <!-- insert the page content here -->
                <h1>
                    &nbsp;Your&nbsp;Child&#39;s Information&nbsp; below:</h1>
                <table align="center" style="margin: 0px auto; height: 300px" width="100%">
                    <%--<tr>
                <td></td>
                <td></td>
                <td></td>
                </tr>--%>
                    <tr>
                        <td>
                            Full Name of student:- 
                        </td>
                        <td>
                            <asp:TextBox ID="txtfull_name0" runat="server" Height="25px" Width="200px" 
                                Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            student Id:-
                        </td>
                        <td>
                            <asp:TextBox ID="txtSid" runat="server" Height="25px" Width="200px" 
                                Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Address:-
                        </td>
                        <td>
                            <asp:TextBox ID="txtaddress" runat="server" Height="62px" TextMode="MultiLine" 
                                Width="204px" Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Contact No of parent:-
                        </td>
                        <td>
                            <asp:TextBox ID="txtcontact_no" runat="server" Height="25px" Width="200px" 
                                Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            RFID-
                        </td>
                        <td>
                            <asp:TextBox ID="txtemail_id" runat="server" Height="25px" Width="200px" 
                                Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Password:-</td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" Height="25px" Width="200px" 
                                Enabled="False"></asp:TextBox></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:Button ID="btnCancel" runat="server" Text="Back" Height="30px" Width="80px"
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
            <%-- <p>
                <a href="#">Home</a> | <a href="#">Examples</a> | <a href="#">
                    A Page</a> | <a href="#">Another Page</a> | <a href="#">Contact
                        Us</a></p>--%>           <%-- <p>
                Copyright &copy; simplestyle_horizon | <a href="http://validator.w3.org/check?uri=referer">
                    HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>
                | <a href="http://www.html5webtemplates.co.uk">Simple web templates by HTML5</a></p>--%>
        </div>
    </div>
    </form>
</body>
</html>
