<?php require_once 'header.php'?>

 <!-- Cart view section -->
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
              <div class="col-md-6">
                <div class="aa-myaccount-login">
                <h4>Kayıt Ol</h4>

                    <?php

                    if ($_GET['durum']=="farklisifre") {?>

                        <div class="alert alert-danger">
                            <strong>Hata!</strong> Girdiğiniz şifreler eşleşmiyor.
                        </div>

                    <?php } elseif ($_GET['durum']=="eksiksifre") {?>

                        <div class="alert alert-danger">
                            <strong>Hata!</strong> Şifreniz minimum 6 karakter uzunluğunda olmalıdır.
                        </div>

                    <?php } elseif ($_GET['durum']=="mukerrerkayit") {?>

                        <div class="alert alert-danger">
                            <strong>Hata!</strong> Bu kullanıcı daha önce kayıt edilmiş.
                        </div>

                    <?php } elseif ($_GET['durum']=="basarisiz") {?>

                        <div class="alert alert-danger">
                            <strong>Hata!</strong> Kayıt Yapılamadı Sistem Yöneticisine Danışınız.
                        </div>

                    <?php }
                    ?>



                 <form action="nedmin/netting/islem.php" method="POST" class="aa-login-form">

                  <label for="">Ad Soyad<span>*</span></label>
                   <input type="text" name="kullanici_adsoyad" placeholder="Adınızı ve Soyadını Giriniz">


                     <label for="">E-mail Adresinizi Giriniz<span>*</span></label>
                     <input type="text" name="kullanici_mail" placeholder="E-mail Adresinizi Giriniz">


                   <label for="">Şifreniz<span>*</span></label>
                    <input type="password" name="kullanici_passwordone" placeholder="Şifrenizi Giriniz">


                     <label for="">Şifreniz Tekrak<span>*</span></label>
                     <input type="password" name="kullanici_passwordtwo" placeholder="Şifrenizi Tekrar Giriniz">

                    <button type="submit" name="kullanicikaydet" class="aa-browse-btn">Kayıt Ol</button>




                   </form>




                </div>
              </div>
            </div>          
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->

 <?php require_once 'footer.php'?>