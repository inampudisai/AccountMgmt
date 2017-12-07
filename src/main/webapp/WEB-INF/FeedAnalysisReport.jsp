<%--
  Created by IntelliJ IDEA.
  User: inampuds
  Date: 6/28/2016
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" pageEncoding="UTF-8" session="true"%>
<%@ page import="org.apache.commons.lang3.StringEscapeUtils" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<% request.setAttribute("context", StringEscapeUtils.escapeHtml4(request.getContextPath()));%>
<!DOCTYPE html>
<html>
<head>

    <title>FeedAnalysisReport</title>

    <link href="${context}/js/clsstmt.css" rel="stylesheet" />
    <link href="${context}/js/jquery-ui.min.css" rel="stylesheet" />
   <!--  <script type="text/javascript" src="${context}/js/jquery-ui.min.js"></script>   -->
    <script type="text/javascript" src="${context}/js/external/jquery/jquery.js"></script>
    <meta charset="utf-8">

   <%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> --%>

<%--    <script type="text/javascript">
        $(function () {
            $('#txtCalendarDate1').datepicker({ dateFormat: 'yy-mm-dd' });
        });
    </script>--%>

    <script type="text/javascript" >
        function selectRegion() {

            var jcountry = {RegionName: $("#search").val()};
            var jcountry1 = $("#search").val();
            var List;
        <%--    alert ("Region selected : "+JSON.stringify(jcountry));  --%>
            $.ajax({
                headers : {
                    'Accept' : 'application/json',
                    'Content-Type' : 'application/json'
                },
                url: "/FeedReport/UserService/Countries/"+jcountry1,//servlet URL that gets first option as parameter and returns JSON of to-be-populated options
                type: "GET",//request type, can be GET
                contentType: "application/json; charset=utf-8",
                cache: false,//do not cache returned data
              //  data : jcountry,//data to be sent to the server*/
                dataType: "json"//type of data returned
            }).success(function(data) {
                List = JSON.stringify(data.country);
             <%--   alert("data value : "+List);    --%>
                var second = $("#countryList");
                second.empty();
                second.append('<option value="">All</option>');
                $.each(data.country, function() {
                   // alert("Country : "+List[i].label);
                    second.append(
                            $('<option/>', {
                                value: this,
                                html: this
                            }));
                })
            });
        }

        function selectReseller() {

            var region;
            region = $("#search").val();
            var reseller1 = $("#countryList").val();
            var List1;
        <%--    alert ("Region selected : "+JSON.stringify(reseller1));   --%>
            $.ajax({
                headers : {
                    'Accept' : 'application/json',
                    'Content-Type' : 'application/json'
                },
                url: "/FeedReport/UserService/Reseller/"+reseller1,//servlet URL that gets first option as parameter and returns JSON of to-be-populated options
                type: "GET",//request type, can be GET
                contentType: "application/json; charset=utf-8",
                cache: false,//do not cache returned data
                //  data : jcountry,//data to be sent to the server*/
                dataType: "json"//type of data returned
            }).success(function(seller) {
                List1 = JSON.stringify(seller.reseller);
            <%--    alert("data value : "+List1);      --%>
                var third = $("#resellerList");
                third.empty();
                third.append('<option value="">All</option>');
                $.each(seller.reseller, function() {
                    // alert("Country : "+List[i].label);
                    third.append(
                            $('<option/>', {
                                value: this,
                                html: this
                            }));
                })
            });
        }


        function selectSupplySKU() {


            var supplylist = $("#resellerList").val();
            var List1;
            <%--    alert ("Region selected : "+JSON.stringify(reseller1));   --%>
            $.ajax({
                headers : {
                    'Accept' : 'application/json',
                    'Content-Type' : 'application/json'
                },
                url: "/FeedReport/UserService/Supplies/"+supplylist,//servlet URL that gets first option as parameter and returns JSON of to-be-populated options
                type: "GET",//request type, can be GET
                contentType: "application/json; charset=utf-8",
                cache: false,//do not cache returned data
                //  data : jcountry,//data to be sent to the server*/
                dataType: "json"//type of data returned
            }).success(function(supply) {
                List1 = JSON.stringify(supply.supplySKUs);
                <%--    alert("data value : "+List1);      --%>
                var fourth = $("#SupplyList");
                fourth.empty();
                fourth.append('<option value="">All</option>');
                $.each(supply.supplySKUs, function() {
                    // alert("Country : "+List[i].label);
                    fourth.append(
                            $('<option/>', {
                                value: this,
                                html: this
                            }));
                })
            });
        }

    </script>
</head>
<body>
<h1>Welcome to SureSupply ezBuy Feed Availability online Report</h1>
<br>
<form method="post" action="FeedAnalysisReport.jsp">
    <table>
        <tr>
            <td>Select Month</td>
            <td><input type="text" id="txtCalendarDate1" value="" /></td>
            <td> Select Region : </td>
            <td>
                <select id="search" onchange="selectRegion()">
                    <option value="Select">Select</option>
                    <option value="NA">NA</option>
                    <option value="EMEA">EMEA</option>
                    <option value="APJ">APJ</option>
                    <option value="LAR">LAR</option>
                </select>
                <br>
            </td>
            <td> Select Country : </td>
            <td>
                <select id="countryList" onchange="selectReseller()">
                    <option value="1">Please Wait..</option>

                </select>
                <br>
            </td>
            <td> Select Reseller : </td>
            <td>
                <select id="resellerList" onchange="selectSupplySKU()">
                    <option value="1">Please Wait..</option>

                </select>
                <br>
            </td>
            <td> Select SKU's : </td>
            <td>
                <select id="SupplyList">
                    <option value="1">Please Wait..</option>

                </select>
                <br>
            </td>
        </tr>
        <tr>
            <td>
                <input type="Submit" value="Submit">
            </td>
        </tr>


    </table>

</form>
</body>
</html>
