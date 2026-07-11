<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello Servlet + JSP</title>
    <style>
        body { font-family: sans-serif; margin: 4rem; color: #222; }
        .card { max-width: 480px; padding: 2rem; border: 1px solid #ddd; border-radius: 8px; }
        h1 { color: #2b5797; }
        code { background: #f4f4f4; padding: 2px 6px; border-radius: 4px; }
    </style>
</head>
<body>
    <div class="card">
        <h1>Hello, ${name}!</h1>
        <p>This page was rendered by a JSP, forwarded to from a Servlet.</p>
        <p>Server time: <code>${serverTime}</code></p>
        <p>Java version: <code>${javaVersion}</code></p>
        <p><a href="${pageContext.request.contextPath}/">&larr; Back to index</a></p>
    </div>
</body>
</html>
