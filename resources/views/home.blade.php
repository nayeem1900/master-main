<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE 3 | Dashboard 3</title>
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('backend/assets') }}/css/google_fonts.css">

    <link rel="stylesheet" href="{{ asset('backend/assets') }}/css/fontawesome-free/css/all.min.css">

    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

    <link rel="stylesheet" href="{{ asset('backend/assets') }}/css/adminlte.min.css">

</head>

<body class="sidebar-mini layout-navbar-fixed layout-fixed">
    <div class="wrapper">

        <div id="root"></div>

        <footer class="main-footer">
            <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
            All rights reserved.
            <div class="float-right d-none d-sm-inline-block">
                <b>Version</b> 3.2.0
            </div>
        </footer>
    </div>


    <script src="{{ asset('backend/assets') }}/js/jquery.min.js"></script>
    <script src="{{ asset('js/app.js') }}" defer></script>

    <script src="{{ asset('backend/assets') }}/js//bootstrap.bundle.min.js"></script>

    <script src="{{ asset('backend/assets') }}/js//adminlte.js?v=3.2.0"></script>

    <script src="{{ asset('backend/assets') }}/js/Chart.min.js"></script>

    <script src="{{ asset('backend/assets') }}/js/dashboard3.js"></script>

    <script>
        $(document).on('click', '.parent_nav_link', function(){
            alert('hello');
        })
    </script>
</body>

</html>
