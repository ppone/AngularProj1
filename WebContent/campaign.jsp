<!DOCTYPE html>
<html>
<head>

    <!-- CSS (load bootstrap) -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <style>
        .navbar { border-radius:0; }
    </style>

    <!-- JS (load angular, ui-router, and our custom js file) -->
    <script src="http://code.angularjs.org/1.2.13/angular.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.2.8/angular-ui-router.min.js"></script>
    <script src="js/sumiapp.js"></script>
</head>

<!-- apply our angular app to our site -->
<body ng-app="routerApp" >

<!-- NAVIGATION -->
<nav class="navbar navbar-inverse" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" ui-sref="#">AngularUI Router</a>
    </div>
    <ul class="nav navbar-nav">
    
     <li><a ui-sref="whentopublish">whentopublish</a></li>
      <li><a ui-sref="whotonotify">whotonotify</a></li>
        <li><a ui-sref="home">Home</a></li>
       
        
    </ul>
</nav>

<!-- MAIN CONTENT -->
<!-- THIS IS WHERE WE WILL INJECT OUR CONTENT ============================== -->
<div class="container">
    <div ui-view></div>
</div>

<div class="text-center">
    <p>A tutorial by <a href="http://scotch.io" target="_blank">scotch.io</a></p>
    <p>View the tutorial: <a href="http://scotch.io/tutorials/javascript/angular-routing-using-ui-router" target="_blank">AngularJS Routing using UI-Router</a></p>
</div>

</body>
</html>
