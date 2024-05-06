<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
    /* Styles specific to top.jsp */
    .th {
        margin: 10px;
        padding-left: 20px;
        display: flex; 
        align-items: center; 
    }
    .th p {
        font-size: 30px; 
        margin: 0; 
        padding: 0; 
    }
    .tm {
        background-color: #444;
        color: #fff;
        padding: 10px;
        margin-left: auto; 
        margin-right: 20px;
    }
    .tm a {
        color: #fff;
        text-decoration: none;
        margin: 0 10px;
    }
    .tm a:hover {
        text-decoration: underline;
    }
    .ma, .mb{
        list-style-type: none; 
        padding: 0; 
        margin: 0; 
        margin-top: 10px; 
        display: flex; 
        flex-wrap: wrap; 
        margin-left: 20px;
    }
    .ma li, .mb li {
        margin-left: 10px; 
        white-space: nowrap; 
    }
    .ma li a, .mb li a {
        font-size: 20px; 
        color: black; 
    }
    .ma li a {
        font-size: 30px;
        text-decoration: none;
    }
    .ma li a h3 {
        margin-right: 10px;
    }
    .mb li a {
        text-decoration: none;
    }
    .mb li a:hover {
        text-decoration: underline;
    }
    .ma li a:hover {
        text-decoration: underline;
    }
</style>
<header class="th">
    <p>29CM</p>
    <nav class="tm">
        <a href="#">검색</a>
        <a href="#">MY PAGE</a>
        <a href="#">MY LIKE</a>
        <a href="#">SHOPPING BAG</a>
        <a href="#">LOGOUT</a>
    </nav>
</header>

<ul class="ma">
    <li><a href="#"><h3>Special-Order</h3></a></li>
    <li><a href="#"><h3>Showcase</h3></a></li>
    <li><a href="#"><h3>PT</h3></a></li>
    <li><a href="#"><h3>Welove</h3></a></li>
</ul>

<ul class="mb">
    <li><a href="#">BEST</a></li>
    <li><a href="#">WOMEN</a></li>
    <li><a href="#">MEN</a></li>
    <li><a href="#">INTERIOR</a></li>
    <li><a href="#">KITCHEN</a></li>
    <li><a href="#">ELECTRONICS</a></li>
    <li><a href="#">DIGITAL</a></li>
    <li><a href="#">BEAUTY</a></li>
    <li><a href="#">FOOD</a></li>
    <li><a href="#">LEISURE</a></li>
    <li><a href="#">KIDS</a></li>
    <li><a href="#">CULTURE</a></li>
    <li><a href="#">Event</a></li>
    <li><a href="#">Lookbook</a></li>
</ul>
