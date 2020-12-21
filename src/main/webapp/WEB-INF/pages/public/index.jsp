<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link rel="icon" href="admin3/dist/img/MoE_Logo.png" type="image/x-icon" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">
        <link rel="stylesheet" href="{{ url('css/app.css') }}">
        <link rel="stylesheet" href="admin3/plugins/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="admin3/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
        <link rel="stylesheet" href="admin3/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
        <link rel="stylesheet" href="admin3/plugins/jqvmap/jqvmap.min.css">
        <link rel="stylesheet" href="admin3/dist/css/adminlte.min.css">
        <link rel="stylesheet" href="admin3/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
        <link rel="stylesheet" href="admin3/plugins/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" href="admin3/plugins/summernote/summernote-bs4.css">
        <link rel="stylesheet" href="admin3/plugins/select2/css/select2.min.css">
        <link rel="stylesheet" href="admin3/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
        <link rel="stylesheet" href="admin3/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
        <script src="admin3/plugins/jquery/jquery.min.js"></script>
    </head>
    <body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <a href="#"><b>MOE</b> NFE-MIS</a>
        </div>
        <div class="card">
            <div class="card-body login-card-body">
                <div id="loginsection">
                    <p class="login-box-msg">Sign in to start your session</p>
                    <form action="/dashboard" method="get">
                        <div class="input-group mb-3">
                            <input type="email" id="emails" placeholder="User name /Email" class="form-control">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>  
                        <div class="input-group mb-3">
                            <input type="password" class="form-control" placeholder="Password">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8">
                                <div class="icheck-primary">
                                <input type="checkbox" id="remember">
                                <label for="remember">
                                    Remember Me
                                </label>
                                </div>
                            </div>
                            <div class="col-4">
                                <button type="submit" class="btn btn-primary btn-block">Sign In</button>
                            </div>
                        </div>
                    </form>
                    <p class="mb-1">
                        <a href="#" onclick="showgorget()">I forgot my password</a>
                    </p>
                </div>
                <div id="forgotpassword" style="display:none">
                <p class="login-box-msg">Forget Password</p>
                    <form action="userlogin">
                        <div class="input-group mb-3">
                            <input type="text" id="emailforget" class="form-control" placeholder="Provide your email or user name to send reset link">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>                            
                        </div>
                        <span id="emailerr" class="text-danger"></span>
                        <div class="row">
                            <div class="col-12">
                                <button type="button" onclick="passwordsend()" class="btn btn-primary btn-block">Get password </button>
                            </div>
                        </div>
                    </form>
                </div>                
            </div>
        </div>
        </div>
        <script src="admin3/plugins/jquery-ui/jquery-ui.min.js"></script>
        <script src="admin3/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="admin3/plugins/select2/js/select2.full.min.js"></script>
        <script src="admin3/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
        <script src="admin3/plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
        <!-- ChartJS -->
        <script src="admin3/plugins/chart.js/Chart.min.js"></script>
        <!-- Sparkline -->
        <script src="admin3/plugins/sparklines/sparkline.js"></script>
        <!-- JQVMap -->
        <script src="admin3/plugins/jqvmap/jquery.vmap.min.js"></script>
        <script src="admin3/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
        <!-- jQuery Knob Chart -->
        <script src="admin3/plugins/jquery-knob/jquery.knob.min.js"></script>
        <!-- daterangepicker -->
        <script src="admin3/plugins/moment/moment.min.js"></script>
        <script src="admin3/plugins/daterangepicker/daterangepicker.js"></script>
        <!-- Tempusdominus Bootstrap 4 -->
        <script src="admin3/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
        <!-- Summernote -->
        <script src="admin3/plugins/summernote/summernote-bs4.min.js"></script>
        <script src="admin3/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="admin3/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
        <script src="admin3/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
        <script src="admin3/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
        <!-- overlayScrollbars -->
        <script src="admin3/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
        <!-- AdminLTE App -->
        <script src="admin3/dist/js/adminlte.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="admin3/dist/js/pages/dashboard.js"></script>
        <script src="admin3/plugins/chart.js/Chart.min.js"></script>
        <script src="admin3/dist/js/demo.js"></script>
        <script src="admin3/plugins/jquery-validation/jquery.validate.min.js"></script>
        <script src="admin3/plugins/jquery-validation/additional-methods.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
        <script>
            function showgorget(){
                $('#forgotpassword').show();
                $('#loginsection').hide();
            }
            function passwordsend(){
                if($('#emailforget').val()==""){
                    $('#emailerr').html('Please provide email');
                }
                else{
                    Swal.fire({
                        title: 'Password Reset link has been send to your email. Please visit your email',
                        icon: 'warning',
                        confirmButtonColor: '#3085d6',
                        confirmButtonText: 'OK',
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $('#forgotpassword').hide();
                            $('#loginsection').show();
                        }
                    })
                }
            }
        </script>
    </body>
</html>
