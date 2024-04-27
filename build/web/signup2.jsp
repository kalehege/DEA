<!DOCTYPE html>
<html lang="en">
<head>
    
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up</title>
  <%@include file="allcss.jsp" %>
</head>
<body>
   <%@include file="header2.jsp" %>
  <div class="container">
    <h1>Sign Up</h1>
    <form id="signup-form">
      <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
      </div>
      <div class="form-group">
        <button type="submit">Sign Up</button>
      </div>
    </form>
  </div>
  <%@include file="footer.jsp" %>
  <%@include file="js.jsp" %>
</body>

</html>
