<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>View Users</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
 <body>
     <header>
         <h2>Pro Learning </h2>
     </header>
     <section>
       <nav>
         <ul>
           <li><a href="#">Home</a></li><br>
           <li><a href="#">Master DevOps</a></li><br>
           <li><a href="#">About Us</a></li>
         </ul>
       </nav>
       <article>
         <h1>Welcome</h1>
         <p>Here Starts your Journey.</p>
         <table class="styled-table" align=center>
             <thead>
                 <tr>
                     <th>Name</th>
                     <th>EMail</th>
                 </tr>
             </thead>
             <tbody>
                 <c:forEach items="${users}" var="user">
                   <tr>
                       <td>${user.name}</td>
                        <td>${user.email}</td>
                    </tr>
                   </c:forEach>
             </tbody>
         </table>
       </article>
     </section>

 </body>
   <style>
     * {
       box-sizing: border-box;
     }
     header {
       background-color: lightblue;
       text-align: center;
       padding: 2px;
       font-size: 25px;
       color: white;
     }
     nav {
       float: left;
       width: 20%;
       height: 100%;
       background: #f1f1f1;
       padding: 20px;
     }
     nav ul {
       list-style-type: none;
       padding: 70px;
     }
     article {
       float: left;
       padding: 20px;
       width: 80%;
       background-color: #fff;
       height: 90%;
     }
    h1 {
      font-size: 2.5em;
    }

    h2 {
      font-size: 1.875em;
    }

    p {
      font-size: 1.5em;
    }
     section::after {
       content: "";
       display: table;
       clear: both;
     }
     .styled-table thead tr {
         background-color: lightblue;
         color: #ffffff;
         text-align: left;
     }
     .styled-table th,
     .styled-table td {
         padding: 12px 15px;
     }
     .styled-table tbody tr {
         border-bottom: 1px solid #dddddd;
     }

     .styled-table tbody tr:nth-of-type(even) {
         background-color: #f3f3f3;
     }

     .styled-table tbody tr:last-of-type {
         border-bottom: 2px solid #009879;
     }
     .styled-table tbody tr.active-row {
         font-weight: bold;
         color: #009879;
     }
   </style>
</html>
