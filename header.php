<?php
require_once 'nedmin/netting/baglan.php';
require_once 'nedmin/production/fonksiyon.php';
ob_start();
session_start();

if (isset($db)) {
    $ayarsor=$db->prepare("SELECT * FROM ayar where ayar_id=:id");
}
$ayarsor->execute(array(
        'id' => 0
));

$ayarcek=$ayarsor->fetch(PDO::FETCH_ASSOC);

$kullanicisor=$db->prepare("SELECT * FROM kullanici where kullanici_mail=:mail");
$kullanicisor->execute(array(
        'mail' => $_SESSION['userkullanici_mail']
));

$say=$kullanicisor->rowCount();
$kullanicicek=$kullanicisor->fetch(PDO::FETCH_ASSOC);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $ayarcek['ayar_title'] ?></title>
    <meta name="description" content="<?php echo $ayarcek['ayar_description']?>">
    <meta name="keywords" content="<?php echo $ayarcek['ayar_keywords']?>">
    <meta name="author" content="<?php echo $ayarcek['ayar_author']?>">


    <!-- Animate CSS -->
    <link rel="stylesheet" type="text/css" href="css/animate.css">


    <!-- Font awesome -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="css/style.css" rel="stylesheet">

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>
<!-- wpf loader Two -->
<div id="wpf-loader-two">
    <div class="wpf-loader-two-inner">
        <span>Yükleniyor</span>
    </div>
</div>
<!-- / wpf loader Two -->
<!-- SCROLL TOP BUTTON -->
<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
<!-- END SCROLL TOP BUTTON -->


<!-- Start header section -->
<header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-header-top-area">
                        <!-- start header top left -->

                        <!-- / header top left -->
                        <div class="aa-header-top-right">

                            <?php
                            if (!isset($_SESSION['userkullanici_mail'])) { ?>

                                <ul class="aa-head-top-nav-right">
                                    <li><a href="" data-toggle="modal" data-target="#login-modal">Giriş Yap</a></li>
                                </ul>

                           <?php } ?>


                            <?php
                            if (isset($_SESSION['userkullanici_mail'])) {?>

                            <ul class="aa-head-top-nav-right">
                                <li><a href="logout.php"><i class="fa fa-sign-out"></i> Güvenli Çıkış</a></li>
                            </ul>


                            <?php } ?>



                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / header top  -->










    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4>Giriş Yap</h4>
                    <form class="aa-login-form" action="nedmin/netting/islem.php" method="POST">
                        <label for="">E-mail Adresiniz<span>*</span></label>
                        <input type="text" name="kullanici_mail" placeholder="e-mail adresinizi giriniz">
                        <label for="">Şifreniz<span>*</span></label>
                        <input type="password" name="kullanici_password" placeholder="Şifrenizi Giriniz">
                        <button class="aa-browse-btn" name="kullanicigiris" type="submit">Giriş</button>
                        <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
                        <p class="aa-lost-password"><a href="#">Şifreni mi unuttun?</a></p>
                        <div class="aa-register-now">
                            Bir hesabın yok mu?<a href="register.php">Kayıt Ol</a>
                        </div>
                    </form>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>

    <!-- start header bottom  -->
    <div class="aa-header-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-header-bottom-area">
                        <!-- logo  -->
                        <div class="aa-logo animated swing">
                            <!--
                            Text based logo
                            <a href="index.php">
                                <span class="fa fa-shopping-cart"></span>
                                <p>daily<strong>Shop</strong> <span>Your Shopping Partner</span></p>
                            </a>
                             -->


                            <!-- img based logo -->
                            <a href="index.php"><img src="<?php echo $ayarcek['ayar_logo'] ?>" alt="Site Logosu"></a>
                        </div>



                        <!-- / logo  -->
                        <!-- cart box -->
                        <div class="aa-cartbox">
                            <a class="aa-cart-link" href="#">
                                <span class="fa fa-shopping-basket"></span>
                                <span class="aa-cart-title">Sepetim</span>
                            </a>
                            <div class="aa-cartbox-summary">
                                <ul>


                                    <?php

                                    $kullanici_id=$kullanicicek['kullanici_id'];

                                    $sepetsor=$db->prepare("SELECT * FROM sepet where kullanici_id=:id");
                                    $sepetsor->execute(array(
                                            'id' => $kullanici_id
                                    ));

                                    while ($sepetcek=$sepetsor->fetch(PDO::FETCH_ASSOC)) {

                                        $urun_id=$sepetcek['urun_id'];

                                        $urunsor=$db->prepare("SELECT * FROM urun where urun_id=:urun_id");
                                        $urunsor->execute(array(
                                                'urun_id' => $urun_id
                                        ));

                                        $uruncek=$urunsor->fetch(PDO::FETCH_ASSOC);
                                        $toplam_fiyat+=$uruncek['urun_fiyat']*$sepetcek['urun_adet'];

                                        $urun_id=$uruncek['urun_id'];

                                        $urunfotosor=$db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id order by urunfoto_sira ASC limit 1");
                                        $urunfotosor->execute(array(
                                            'urun_id' => $urun_id
                                        ));

                                        $urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC);


                                        ?>

                                    <li>
                                        <a class="aa-cartbox-img" href="urun-<?=seo($uruncek["urun_ad"]).'-'.$uruncek["urun_id"]?>"><img src="<?php echo $urunfotocek ['urunfoto_resimyol'] ?>" alt="img"></a>
                                        <div class="aa-cartbox-info">
                                            <h4><a href="urun-<?=seo($uruncek["urun_ad"]).'-'.$uruncek["urun_id"]?>"><?php echo $uruncek['urun_ad'] ?></a></h4>
                                            <p><?php echo number_format($uruncek['urun_fiyat']) ?> TL</p>
                                        </div>
                                        <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                                    </li>


                                   <?php } ?>

                                    <li>
                                          <span class="aa-cartbox-total-title">
                                            Toplam
                                          </span>
                                          <span class="aa-cartbox-total-price">
                                            <?php echo number_format($toplam_fiyat)  ?> TL
                                          </span>
                                    </li>
                                </ul>
                                <a class="aa-cartbox-checkout aa-primary-btn" href="sepet.php">Ayrıntılı Sepet</a>
                            </div>
                        </div>
                        <!-- / cart box -->
                        <!-- search box -->
                        <div class="aa-search-box">
                            <form action="arama" method="POST">
                                <input type="text" name="aranan" placeholder="aradığınız ürünü giriniz..">
                                <button name="arama" type="submit"><span class="fa fa-search"></span></button>
                            </form>
                        </div>
                        <!-- / search box -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / header bottom  -->
</header>
<!-- / header section -->
<!-- menu -->
<section id="menu">
    <div class="container">
        <div class="menu-area">
            <!-- Navbar -->
            <div class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="navbar-collapse collapse">
                    <!-- Left nav -->
                    <ul class="nav navbar-nav">
                        <li><a href="index.php">Anasayfa</a></li>

                        <?php

                        $menusor=$db->prepare("SELECT * FROM menu where menu_durum=:durum order by menu_sira ASC limit 9");
                        $menusor->execute(array(
                                'durum' => 1
                        ));

                        while ($menucek=$menusor->fetch(PDO::FETCH_ASSOC)) { ?>

                        <li><a href="

                        <?php

                            if (!empty($menucek['menu_url'])) {

                                echo $menucek['menu_url'];
                            } else {

                                echo "sayfa-".seo($menucek['menu_ad']);
                            }

                            ?>

                            "><?php echo $menucek ['menu_ad'] ?></a></li>


                        <?php } ?>

                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>
</section>
<!-- / menu -->