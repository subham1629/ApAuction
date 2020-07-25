<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Bid Submitted</title>
  </head>
  <style>
    table,
    th,
    td {
      border: 1px solid black;
    }
  </style>
  <body align="center" style="background-color: yellow;">
    <% session=request.getSession(); %>
    <h1>Bid Submitted</h1>
    <p>
      Your bid is now active.If your bid is successful,you will be notified
      within 24 hours of close of bidding.
    </p>
    <table align="center">
      <tr>
        <th style="background-color: black; color: white;">
          <%out.println(session.getAttribute("itemname")); %>
        </th>
      </tr>
      <tr>
        <th>
          <%out.println("Item ID: "+session.getAttribute("itemid")); %>
        </th>
      </tr>
      <tr>
        <th>
          <%out.println("Name: "+session.getAttribute("yourname")); %>
        </th>
      </tr>
      <tr>
        <th>
          <%out.println("Email address: "+session.getAttribute("email")); %>
        </th>
      </tr>
      <tr>
        <th>
          <%out.println("Bid price: "+session.getAttribute("bidamount")); %>
        </th>
      </tr>
      <tr>
        <th>
          <%out.println("Auto increment price: "+session.getAttribute("autoinc")); %>
        </th>
      </tr>
    </table>
  </body>
</html>
