<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register TagName="header" TagPrefix="uc1" Src="~/includes/Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>  </title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .styleT
        {
            width: 398px;
        }
    </style>
</head>
<body>
    <div id="main">
        <div>
            <uc1:header ID="header" runat="server" />
        </div>
        <div id="content_header">
        </div>
        <div id="site_content">
            <%--  <div id="banner">
            </div>--%>
            <%--<div id="sidebar_container">
                <div class="sidebar">
                    <div class="sidebar_top">
                    </div>
                    <div class="sidebar_item">
                        <!-- insert your sidebar items here -->
                        <h3>
                            Latest News</h3>
                        <h4>
                            New Website Launched</h4>
                        <h5>
                            February 1st, 2014</h5>
                        <p>
                            2014 sees the redesign of our website. Take a look around and let us know what you
                            think.<br />
                            <a href="#">Read more</a></p>
                    </div>
                    <div class="sidebar_base">
                    </div>
                </div>
                <div class="sidebar">
                    <div class="sidebar_top">
                    </div>
                    <div class="sidebar_item">
                        <h3>
                            Useful Links</h3>
                        <ul>
                            <li><a href="#">link 1</a></li>
                            <li><a href="#">link 2</a></li>
                            <li><a href="#">link 3</a></li>
                            <li><a href="#">link 4</a></li>
                        </ul>
                    </div>
                    <div class="sidebar_base">
                    </div>
                </div>
                <div class="sidebar">
                    <div class="sidebar_top">
                    </div>
                    <div class="sidebar_item">
                        <h3>
                            Search</h3>
                        <form method="post" action="#" id="search_form">
                        <p>
                            <input class="search" type="text" name="search_field" value="Enter keywords....." />
                            <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="style/search.png"
                                alt="Search" title="Search" />
                        </p>
                        </form>
                    </div>
                    <div class="sidebar_base">
                    </div>
                </div>
            </div>--%>
            <div id="content">
                <!-- insert the page content here -->
                <h1>
                    Welcome to Admin Panel
                </h1>
                <p>Through this portal, the admin can control student identification information and tracking their location as well.
                   </p>
                <div>
                    <h3>
                       Features</h3>
                    <div style="background-color: wheat; width: 400px; height: 200px; float: left">
                        <p style="font-family: serif; font-size: large">
                           <ol>
<li> Add Child Info</li>
<li>View Bus Location</li>
<li>Student Entry and Exit Time</li>
</ol>
                        </p>
                    </div>
                    <h3 style="margin-left: 450px; margin-top: -45px">
                        Contact
                    </h3>
                    <div style="background-color: wheat; width: 400px; height: 200px; margin-left: 450px;">
                        <table class="styleT">
                            <tr>
                                <td>
                                    <p style="font-family: serif; font-size: large; padding: 0px 0px">
                                      School Address</p>
                                        
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p style="font-family: serif; font-size: large; padding: 0px 0px">
                                        School Email  </p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p style="font-family: serif; font-size: large; padding: 0px 0px">
                                        School Phone </p>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <%-- <h3>
                    WHY CHOOSE US?</h3>
                <p>
                    This template has been tested in the following browsers:</p>
                <ul>
                    <li>Internet Explorer 9</li>
                    <li>FireFox 25</li>
                    <li>Google Chrome 31</li>
                </ul>--%>
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
</body>
</html>
