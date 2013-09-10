<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="web based media center">
    <meta name="author" content="pydeo">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Pydeo</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
<!--     <link href="css/bootstrap-theme.min.css" rel="stylesheet"> -->
    <link href="css/style.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="navbar-fixed-top.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <!-- Wrap all page content here -->
    <div id="wrap">

        <!-- Fixed navbar -->
        <div class="navbar navbar-default navbar-fixed-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="/">Pydeo</a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href="/music">Music</a></li>
                <li><a href="/movies">Movies</a></li>
                <li><a href="/series">Series</a></li>
    <!-- TODO: uncomment once plugins are supported
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle"
    data-toggle="dropdown">Dropdown <b class="caret"></b></a>

                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
    -->
              </ul>
            </div><!--/.nav-collapse -->
          </div>
        </div>

        <div class="container">
            <!-- content goes here, inside this container -->
            ${self.body()}
        </div> <!-- /container -->
    </div> <!-- wrap -->
    <div id="footer">
      <div class="container">
	<a href="http://projects.gw-computing.net/pydeo/">Pydeo project</a>
      </div>
    </div>

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
  </body>
</html>
