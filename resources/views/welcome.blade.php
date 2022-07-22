<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>API Master | Morium IT</title>

    <link rel="stylesheet" href="{{ asset('public/forntend/assets/css/google_fonts.css') }}">

    <link rel="stylesheet" href="{{ asset('public/forntend') }}/assets/css/fontawesome-free/css/all.min.css">

    <link rel="stylesheet" href="{{ asset('public/forntend') }}/assets/css/ionicons.min.css">

    <link rel="stylesheet" href="{{ asset('public/forntend') }}/assets/css/adminlte.min.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
        <aside class="main-sidebar sidebar-light-primary elevation-1">

            <a href="index3.html" class="brand-link">
                <img src="{{ asset('public/forntend') }}/assets/img/1592631338LOGO.png" class="brand-image" style="opacity: .8">
                <span class="brand-text font-weight-light text-white">.</span>
            </a>


            <div class="sidebar">

                <div class="form-inline  mt-3">
                    <div class="input-group" data-widget="sidebar-search">
                        <input class="form-control form-control-sidebar" type="search" placeholder="Search"
                            aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-sidebar">
                                <i class="fas fa-search fa-fw"></i>
                            </button>
                        </div>
                    </div>
                </div>

                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column nav-flat nav-legacy nav-compact"
                        data-widget="treeview" role="menu" data-accordion="false">

                        <li class="nav-item">
                            <a href="#" class="nav-link active">
                                <i class="nav-icon fas fa-dumpster"></i>
                                <p>
                                    Ecommorce
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>
                                            Forntend
                                            <i class="right fas fa-angle-left"></i>
                                        </p>
                                    </a>
                                    <ul class="nav nav-treeview">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                <i class="far fa-dot-circle nav-icon"></i>
                                                <p>Level 3</p>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                <i class="far fa-dot-circle nav-icon"></i>
                                                <p>Level 3</p>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                <i class="far fa-dot-circle nav-icon"></i>
                                                <p>Level 3</p>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>
                                            Backend
                                            <i class="right fas fa-angle-left"></i>
                                        </p>
                                    </a>
                                    <ul class="nav nav-treeview">
                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                <i class="far fa-dot-circle nav-icon"></i>
                                                <p>Level 3</p>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                <i class="far fa-dot-circle nav-icon"></i>
                                                <p>Level 3</p>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                <i class="far fa-dot-circle nav-icon"></i>
                                                <p>Level 3</p>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item">
                            <a href="#" class="nav-link active">
                                <i class="nav-icon fas fa-cash-register"></i>
                                <p>
                                    Ecommorce
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="./index.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Forntend</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="./index2.html" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Backend</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="pages/widgets.html" class="nav-link">
                                <i class="nav-icon fas fa-th"></i>
                                <p>
                                    Widgets
                                    <span class="right badge badge-danger">New</span>
                                </p>
                            </a>
                        </li>
                    </ul>
                </nav>

            </div>

        </aside>

        <div class="content-wrapper">
            <div class="content">

               <a href="{{route('register')}}" class="btn btn-sm btn-success float-right">register</a>
                <a href="{{ route('login') }}" class="btn btn-sm btn-danger float-right">login</a>
                <a href="{{ route('logout') }}" class="btn btn-sm btn-danger float-right">logout</a>
                <div class="container-fluid pt-3">
                    <div class="row">
                        <div class="col-sm-12 pre_space">
<pre> 
<code class="html">&lt;header&gt;
    &lt;h1&gt;Example HTML&lt;/h1&gt;
&lt;/header&gt;
&lt;main class=&quot;style&quot;&gt;
    &lt;p&gt;Some text&lt;/p&gt;
&lt;/main&gt;
</code>
</pre>
                        </div>

                    </div>

                </div>

            </div>

        </div>



        <footer class="main-footer">
            <strong>Copyright &copy; 2014-2021 <a href="moriumit.com">morium IT</a>.</strong>
            All rights reserved.
            <div class="float-right d-none d-sm-inline-block">
                <b>Version</b> 1.0
            </div>
        </footer>
    </div>



    <script src="{{ asset('public/forntend') }}/assets/js/jquery.min.js"></script>

    <script src="{{ asset('public/forntend') }}/assets/js//bootstrap.bundle.min.js"></script>

    <script src="{{ asset('public/forntend') }}/assets/js//adminlte.js?v=3.2.0"></script>

    <script src="{{ asset('public/forntend') }}/assets/js/Chart.min.js"></script>

    <script src="{{ asset('public/forntend') }}/assets/js/dashboard3.js"></script>

    <link rel="stylesheet" href="{{ asset('public/forntend') }}/highlights/styles/default.min.css">
    <script src="{{ asset('public/forntend') }}/highlights/highlight.min.js"></script>
    <script>hljs.highlightAll();</script>
    <style>
        .html {
            white-space: pre;
        }
    </style>
</body>

</html>