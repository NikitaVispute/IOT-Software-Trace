<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view.aspx.cs"
    Inherits="Manage_Pilgrims" MaintainScrollPositionOnPostback="true" %>

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
                    &nbsp;</h1>
                <h3>
                    <%--<a href="Add_New_Pilgrim.aspx">Add New Pilgrim</a>--%>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </h3>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Width="100%" DataSourceID="SqlDataSource1">
                    <Columns>
                        <%--  <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True"
                            SortExpression="id" />--%>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False"
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="RFID" HeaderText="RFID" SortExpression="RFID" />
                        <asp:BoundField DataField="date1" HeaderText="Entry Time" 
                            SortExpression="date1" />                       
                      
                         <asp:BoundField DataField="date2" HeaderText="Exit Time" 
                            SortExpression="date2" />
                        <%--<asp:HyperLinkField DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="Add_New_Pilgrim.aspx?action=edit&amp;user_id={0}"
                            HeaderText="Action" Text="Edit" />--%>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:parentchildConnectionString %>" 
                    SelectCommand="SELECT * FROM [data1]"></asp:SqlDataSource>
                <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connection_string %>"
                    SelectCommand="SELECT id, bpm, temp, hum, lat, long, DateAdded, sw, user_id from data order by id desc">
                </asp:SqlDataSource>--%>
            </div>
        </div>
        <div id="content_footer">
        </div>
        <div id="footer">
            <%--<p>
                <a href="#">Home</a> | <a href="#">Examples</a> | <a href="#">A Page</a> | <a href="#">
                    Another Page</a> | <a href="#">Contact Us</a></p>--%>
            <%--  <p>
                Copyright &copy; simplestyle_horizon | <a href="http://validator.w3.org/check?uri=referer">
                    HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>
                | <a href="http://www.html5webtemplates.co.uk">Simple web templates by HTML5</a></p>--%>
        </div>
    </div>
    </form>
</body>
</html>
