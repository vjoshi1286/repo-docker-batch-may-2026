<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello Servlet + JSP App</title>
    <style>
        body { font-family: sans-serif; margin: 4rem; color: #222; }
        .card { max-width: 480px; padding: 2rem; border: 1px solid #ddd; border-radius: 8px; }
        h1 { color: #2b5797; }
        input, button { font-size: 1rem; padding: 0.4rem; }
    </style>
</head>
<body>
    <div class="card">
        <h1>Hello Servlet + JSP</h1>
        <p>This is a plain JSP page. Submitting the form below calls the
           <code>HelloServlet</code>, which forwards to another JSP.</p>
        <form action="${pageContext.request.contextPath}/hello" method="get">
            <label for="name">Your name:</label><br>
            <input type="text" id="name" name="name" placeholder="World">
            <button type="submit">Say Hello</button>
        </form>
    </div>
</body>
</html>
