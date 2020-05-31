<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Condiments</title>
</head>
<body>
<div>
    <div>
        <form action="/condiment" method="post">
            <label>Lettuce <input type="checkbox" name="condiment" value="lettuce"></label>
            <label>Tomato <input type="checkbox" name="condiment" value="tomato"></label>
            <label>Mustard <input type="checkbox" name="condiment" value="mustard"></label>
            <label>Sprouts <input type="checkbox" name="condiment" value="sprouts"></label><br>
            <button type="submit">Save</button>
        </form>
    </div>
    <div>
        <c:forEach items="${condiment}" var="condiment">
            <p>${condiment}</p>
        </c:forEach>
    </div>
</div>
</body>
</html>