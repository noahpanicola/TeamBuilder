<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sign In</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="Stylesheets/Site.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="Scripts/APS.UI.AppScript.js"></script>

    <script>

      $(document).ready(function(){
        $(".form-signin").submit(function (event){
          $.ajax({
              url: "API/Verify.php",
              type: "post",
              data: {
                email: $("#inputEmail").val(),
                password: $("#inputPassword").val()
              } ,
              success: function (response) {
                // you will get response from your php page (what you echo or print)                 
                console.log(response);
                window.location.href = response;
              },
              error: function(jqXHR, textStatus, errorThrown) {
                console.log(textStatus, errorThrown);
              }
          });

        });
      });

    </script>

  </head>

  <body>

    <div class="container" style="width: 40%; padding-top: 50px;">

      <form class="form-signin">
        <h2 class="form-signin-heading">Login</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button id="login-btn" class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>