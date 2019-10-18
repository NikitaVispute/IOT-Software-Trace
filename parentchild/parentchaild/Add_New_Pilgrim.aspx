<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_New_Pilgrim.aspx.cs"
    Inherits="Add_New_Pilgrim" %>

<%@ Register TagName="header" TagPrefix="uc1" Src="~/includes/Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
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
            <div id="banner">
            </div>
            <div id="content">
                <!-- insert the page content here -->
                <h1>
                    Add New Soldier &nbsp&nbsp</h1>
                <table align="center" style="margin: 0px auto; height: 300px" width="100%">
                    <%--<tr>
                <td></td>
                <td></td>
                <td></td>
                </tr>--%>
                    <tr>
                        <td>
                            &nbsp;Heart Rate:-
                        </td>
                        <td>
                            <asp:TextBox ID="txtheart_rate" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtheart_rate"
                                ErrorMessage="Heart Rate Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Temperature:-
                        </td>
                        <td>
                            <asp:TextBox ID="txttemperature" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txttemperature"
                                ErrorMessage="Temperature is Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Latitude:-
                        </td>
                        <td>
                            <asp:TextBox ID="txtlatitude" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtlatitude"
                                ErrorMessage="Latitude is Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Logitude:-
                        </td>
                        <td>
                            <asp:TextBox ID="txtlongitude" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtlongitude"
                                ErrorMessage="Longitude is Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            User Name:-
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlusername" runat="server" DataSourceID="SqlDataSource1"
                                DataTextField="full_name" AppendDataBoundItems="true" DataValueField="user_id"
                                Height="28px" Width="200px">
                                <asp:ListItem Value="0" Text="Select user"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connection_string %>"
                                SelectCommand="SELECT [user_id], [full_name] FROM [User_Master]"></asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
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
