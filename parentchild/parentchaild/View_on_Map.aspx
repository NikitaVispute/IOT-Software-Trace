<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_on_Map.aspx.cs" Inherits="View_on_Map" %>

<%@ Register TagName="header" TagPrefix="uc1" Src="~/includes/Header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>  </title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    <style>
        #map_canvas
        {
            height: 100%;
        }
    </style>
    <%-- <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6v5-2uaq_wusHDktM9ILcqIrlPtnZgEk&sensor=false">
    </script>
    <script type="text/javascript">
        function initialize() {
            var lat = document.getElementById('txtlon').value;
            var lon = document.getElementById('txtlat').value;
            var myLatlng = new google.maps.LatLng(lat, lon) // This is used to center the map to show our markers
            var mapOptions = {
                center: myLatlng,
                zoom: 20,
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                marker: true
            };
            var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
            var marker = new google.maps.Marker({
                position: myLatlng
            });
            marker.setMap(map);
        }
    </script>--%>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6v5-2uaq_wusHDktM9ILcqIrlPtnZgEk&sensor=false">
    </script>
    <script type="text/javascript">
        function initialize() {
            var lat = document.getElementById('txtlat').value;
            var lon = document.getElementById('txtlon').value;
            var myLatlng = new google.maps.LatLng(lat, lon) // This is used to center the map to show our markers
            var mapOptions = {
                center: myLatlng,
                zoom: 6,
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                marker: true
            };
            var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
            var marker = new google.maps.Marker({
                position: myLatlng
            });
            marker.setMap(map);
        }
    </script>
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
                    Bus Current Location &nbsp&nbsp<asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                </h1>
                <table>
                    <tr>
                        <td>
                            Enter Latitude:
                        </td>
                        <td>
                            <asp:TextBox ID="txtlat" runat="server"></asp:TextBox>
                            <%--<input type="text" id="txtlat" value="13.053147716796578" />--%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Enter Longitude:
                        </td>
                        <td>
                            <asp:TextBox ID="txtlon" runat="server"></asp:TextBox>
                            <%--<input type="text" id="txtlon" value="80.2501953125" />--%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <input type="button" value="Submit" onclick="javascript:initialize()" />
                        </td>
                    </tr>
                </table>
                <div id="map_canvas" style="width: 600px; height: 400px">
                </div>
                <div id="content_footer">
                </div>
                <div id="footer">
                    <%--<p>
                        <a href="#">Home</a> | <a href="#">Examples</a> | <a href="#">A Page</a> | <a href="#">
                            Another Page</a> | <a href="#">Contact Us</a></p>--%>
                    <%--<p>
                    Copyright &copy; simplestyle_horizon | <a href="http://validator.w3.org/check?uri=referer">
                        HTML5</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>
                    | <a href="http://www.html5webtemplates.co.uk">Simple web templates by HTML5</a></p>--%>
                </div>
            </div>
    </form>
  <%--  @if(IsPost) { @Maps.GetBingHtml(key: "your-key-here", latitude: '<%# Eval("Latitude") %>',
    longitude: '<%# Eval("Longitude") %>', width: "600", height: "600" ) }--%>
</body>
</html>
