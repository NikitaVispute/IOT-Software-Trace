<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manage_Users.aspx.cs" Inherits="Manage_Users" %>

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
            <%-- <div id="banner">
            </div>--%>
            <div id="content">
                <!-- insert the page content here -->
                <h1>
                    Manage Child &nbsp&nbsp<asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                </h1>
                <h3>
                    <a href="Add_New_User.aspx">Add New Child</a></h3>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                    Width="100%">
                    <Columns>
                        <asp:BoundField DataField="user_id" HeaderText="Sr.No." InsertVisible="False" ReadOnly="True"
                            SortExpression="user_id" />
                        <asp:BoundField DataField="full_name" HeaderText="Full Name of student" SortExpression="full_name" />
                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                        <asp:BoundField DataField="contact_no" HeaderText="Contact No of parent" SortExpression="contact_no" />
                        <asp:BoundField DataField="sid" HeaderText="Student ID" />
                        <asp:BoundField DataField="RFID" HeaderText="RFID" SortExpression="RFID" />
                        <asp:HyperLinkField DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="Add_New_User.aspx?action=edit&amp;user_id={0}"
                            HeaderText="Action" Text="Edit" />
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" OnCommand="DeleteButton_OnCommand"
                                    CommandArgument='<%#Eval("user_id") %>' Text="Delete" OnClientClick="return confirm('Are you certain you want to delete this?');"></asp:LinkButton></ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connection_string %>"
                    SelectCommand="SELECT [user_id], [full_name], [address], [contact_no], [RFID],[sid] FROM [User_Master]">
                </asp:SqlDataSource>
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
