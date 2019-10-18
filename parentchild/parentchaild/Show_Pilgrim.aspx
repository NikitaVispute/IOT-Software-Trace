<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Show_Pilgrim.aspx.cs" Inherits="Show_Pilgrim" %>

<%@ Register TagName="header" TagPrefix="uc1" Src="~/includes/Header2.ascx" %>
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
            <div id="content">
                <!-- insert the page content here -->
                <h1>
                     &nbsp&nbsp<asp:GridView 
                         ID="GridView1" runat="server" 
                         AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                         onrowcommand="GridView1_RowCommand">
                         <Columns>
                             <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                 ReadOnly="True" SortExpression="id" />
                             <asp:BoundField DataField="RFID" HeaderText="RFID" SortExpression="RFID" />
                             <asp:BoundField DataField="date1" HeaderText="Entry Time" 
                                 SortExpression="date1" />
                             <asp:BoundField DataField="date2" HeaderText="Exit Time" 
                                 SortExpression="date2" />
                             <asp:ButtonField CommandName="delete" HeaderText="Delete" Text="delete" />
                         </Columns>
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:parentchildConnectionString %>" 
                         SelectCommand="SELECT * FROM [data1] WHERE ([RFID] = @RFID)">
                         <SelectParameters>
                             <asp:SessionParameter Name="RFID" SessionField="id" Type="String" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                </h1>
            </div>
        </div>
        <div id="content_footer">
        </div>
        <div id="footer">
           <%-- <p>
                <a href="#">Home</a> | <a href="#">Examples</a> | <a href="#">
                    A Page</a> | <a href="#">Another Page</a> | <a href="#">Contact
                        Us</a></p>--%>
          <%--  <p>
                Copyright &copy; simplestyle_horizon | <a href="http://validator.w3.org/check?uri=referer">
                    HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>
                | <a href="http://www.html5webtemplates.co.uk">Simple web templates by HTML5</a></p>--%>
        </div>
    </div>
    </form>
</body>
</html>
