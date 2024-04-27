


document.getElementById("signup-form").addEventListener("submit", function(event){
  event.preventDefault(); // Prevent the form from submitting

  // Fetch the form data
  const formData = new FormData(event.target);
  const username = formData.get("username");
  const email = formData.get("email");
  const password = formData.get("password");

  // You can do further processing here, like sending the data to a server or displaying it
  console.log("Username:", username);
  console.log("Email:", email);
  console.log("Password:", password);

  // For demonstration purposes, let's just show an alert
  alert("Sign up successful!");
});
