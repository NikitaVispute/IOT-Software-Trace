﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="includes_Header" %>
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
    <div id="menubar">
        <ul id="menu">
            <%--<%if (user_type_id == 1)  %>
                <%{ %>--%>
            <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
            <li class="selected"><a href="Home.aspx">Home</a></li>
            <li><a href="Manage_Users.aspx">Manage Child</a></li>
            <li><a href="Manage_Pilgrims.aspx">View Bus Location</a></li>
             <li><a href="view.aspx">View entry exit time</a></li>
            <li><a href="Admin_Login.aspx?msg=logout">Logout</a></li>
            <%--<%else %>
                    <%{ %>
                    <li class="selected"><a href="Home.aspx">Home</a></li>
                    <li><a href="Manage_Employees.aspx">Manage Employees</a></li>
                    <li><a href="Manage_Rooms.aspx">Manage Rooms</a></li>
                    <li><a href="View_Locations.aspx">View Locations</a></li>
                    <li><a href="Login.aspx?msg=logout">Logout</a></li>
                    <%} %>--%>
        </ul>
    </div>
</div>
