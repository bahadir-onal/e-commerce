<?php
include 'header.php';

if (isset($db)) {
    $urunsor=$db->prepare("SELECT * FROM urun where urun_id=:urun_id");
}
$urunsor->execute(array(
        'urun_id' => $_GET['urun_id']
));

$uruncek=$urunsor->fetch(PDO::FETCH_ASSOC);

$say=$urunsor->rowCount();

if ($say==0) {

    header("Location:index.php?durum=oynasma");
    exit();

}

?>


    <head>
        <!-- fancy Style -->
        <link rel="stylesheet" type="text/css" href="js\product\jquery.fancybox.css?v=2.1.5" media="screen">
    </head>

<?php

if ($_GET['durum']=="ok") { ?>

    <script type="text/javascript">
        alert("Yorum başarıyla eklendi")
    </script>

<?php }

?>
 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="dimg/fashion/Prada-1.png" alt="fashion img">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2><?php echo $uruncek['urun_ad']?></h2>

      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->


    <!-- product category -->
    <section id="aa-product-details">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-product-details-area">
                        <div class="aa-product-details-content">
                            <div class="row">



    <div class="col-md-5 col-sm-5 col-xs-12">
        <div class="aa-product-view-slider">
            <div id="demo-1" class="simpleLens-gallery-container">


                <?php
                $urun_id=$uruncek['urun_id'];
                $urunfotosor=$db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id order by urunfoto_sira ASC limit 1 ");
                $urunfotosor->execute(array(
                    'urun_id' => $urun_id
                ));

                $urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC);

                ?>




                <div class="simpleLens-container">
                    <div class="simpleLens-big-image-container"><a data-lens-image="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" class="simpleLens-lens-image"><img src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" class="simpleLens-big-image"></a></div>
                </div>


                <?php
                $urun_id=$uruncek['urun_id'];
                $urunfotosor=$db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id order by urunfoto_sira ASC limit 0,3 ");
                $urunfotosor->execute(array(
                    'urun_id' => $urun_id
                ));

                while($urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC)) {

                ?>


                <div class="simpleLens-thumbnails-container">
                    <a data-big-image="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" data-lens-image="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" class="simpleLens-thumbnail-wrapper" href="#">
                        <img style="width: 100px; height: 100px;" src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>">
                    </a>
                </div>

                <?php } ?>


            </div>
        </div>
    </div>



                <!-- Modal view content -->
                <div class="col-md-7 col-sm-7 col-xs-12">
                  <div class="aa-product-view-content">
                    <h3><?php echo $uruncek['urun_ad']?></h3>
                    <div class="aa-price-block">
                      <span class="aa-product-view-price"><?php echo $uruncek['urun_fiyat']?> TL</span>

                        <?php

                        if ($uruncek['urun_stok']>=1) { ?>

                            <p class="aa-product-avilability">Stok Durumu: <span>Stokta Var</span></p>

                           <?php } else {?>

                            <p class="aa-product-avilability">Stok Durumu: <span>Stokta Yok</span></p>


                      <?php  } ?>



                    </div>

                          <form action="nedmin/netting/islem.php" method="POST">

                              <div class="form-group">


                                  <input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek['kullanici_id'] ?>">

                                  <input type="hidden" name="urun_id" value="<?php echo $uruncek['urun_id'] ?>">



                              <label for="gty" class="col-sm-2 control-label">Adet</label>
                              <div class="col-sm-4">
                                  <input type="text" class="form-control" value="1" name="urun_adet">
                              </div>


                              <?php if (isset($_SESSION['userkullanici_mail'])) {?>


                              <div class="aa-prod-view-bottom col-sm-9">
                                  <button type="submit" name="sepetekle" class="aa-add-to-cart-btn"><span class="addchart">Sepete Ekle</span></button>
                              </div>


                                  <?php  } else {   ?>

                                  Sepete ekleyebilmek için <a style="color:red" href="register">kayıt</a> olmalı yada üyemizseniz giriş yapmalısınız...



                                  <?php } ?>


                              </div>

                         </form>

                  </div>
                </div>
              </div>
            </div>
            <div class="aa-product-details-bottom">
              <ul class="nav nav-tabs" id="myTab2">
                <li
                    <?php

                    if ($_GET['durum']!="ok") { ?>
                        class="active"
                    <?php } ?>><a href="#description" data-toggle="tab">Açıklama</a></li>



                <li

                     <?php
                        if ($_GET['durum']=="ok") { ?>
                            class="active"
                        <?php } ?>


                    <?php

                    $kullanici_id=$kullanicicek['kullanici_id'];
                    $urun_id=$uruncek['urun_id'];

                    $yorumsor=$db->prepare("SELECT * FROM yorumlar where urun_id=:urun_id and yorum_onay=:yorum_onay");
                    $yorumsor->execute(array(
                        'urun_id' => $urun_id,
                        'yorum_onay' => 1
                    ));

                    ?>

                    ><a href="#review" data-toggle="tab">Yorumlar</a></li>
                    <li><a href="#video" data-toggle="tab">Ürün Video</a></li>

              </ul>

              <!-- Tab panes -->
              <div class="tab-content">
                <div class="tab-pane fade <?php

                if ($_GET['durum']!="ok") { ?>
                       in active
                  <?php } ?>" id="description">
                  <p><?php echo $uruncek ['urun_detay'] ?></p>

                </div>
                <div class="tab-pane fade <?php
                if ($_GET['durum']=="ok") { ?>
                           in active
                  <?php } ?>" id="review">
                 <div class="aa-product-review-area">
                   <h4><?php echo $uruncek ['urun_ad'] ?></h4>


                     <!--Yorumlar buraya gelecek-->

                     <?php

                     while ($yorumcek=$yorumsor->fetch(PDO::FETCH_ASSOC)) {

                         $ykullanici_id=$yorumcek['kullanici_id'];

                         $ykullanicisor=$db->prepare("SELECT * FROM kullanici where kullanici_id=:id");
                         $ykullanicisor->execute(array(
                                 'id' => $ykullanici_id
                         ));

                         $ykullanicicek=$ykullanicisor->fetch(PDO::FETCH_ASSOC);


                         ?>


                         <p class="dash">
                             <span><?php echo $ykullanicicek['kullanici_adsoyad'] ?></span> (<?php echo $yorumcek['yorum_zaman'] ?>)<br><br>
                             <?php echo $yorumcek['yorum_detay'] ?>
                         </p>


                     <?php } ?>


                   <!-- review form -->

                    <?php

                    if (isset($_SESSION['userkullanici_mail'])) { ?>


                        <form action="nedmin/netting/islem.php" method="POST" class="aa-review-form">


                            <div class="form-group">
                                <label for="message">Yorumun:</label>
                                <textarea class="form-control" name="yorum_detay" placeholder="yorumunu buraya yazabilirsin..." id="text"></textarea>
                            </div>

                            <input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek['kullanici_id'] ?>">

                            <input type="hidden" name="gelen_url" value="<?php
                            echo "http://".$_SERVER['HTTP_HOST']."".$_SERVER['REQUEST_URI']."";

                            ?>">

                            <input type="hidden" name="urun_id" value="<?php echo $uruncek['urun_id'] ?>">



                            <button type="submit" name="yorumkaydet" class="btn btn-default aa-review-submit">Yorumu Gönder</button>
                        </form>

                   <?php } else { ?>

                            Yorum yazabilmek için giriş yapmalı veya <a style="color: red" href="register.php">kayıt</a> olmalısınız..

                        <?php } ?>



                 </div>
                </div>
                  <div class="tab-pane fade" id="video">
                      <p>
                          <?php


                          $say=strlen($uruncek['urun_video']);

                          if ($say>0) {?>

                              <iframe width="930" height="500" src="https://www.youtube.com/embed/<?php echo $uruncek['urun_video']?>" frameborder="0" allowfullscreen></iframe>

                            <?php } else

                                echo "Bu ürüne video eklenmemiş";

                                ?>




                      </p>

                  </div>
              </div>



            </div>

            <!-- Related product -->
            <div class="aa-product-related-item">
              <h3>Benzer Ürüner</h3>


              <ul class="aa-product-catg aa-related-item-slider">


                  <?php

                  $kategori_id=$uruncek['kategori_id'];

                  $urunaltsor=$db->prepare("SELECT * FROM urun where kategori_id=:kategori_id order by urun_id DESC");
                  $urunaltsor->execute(array(
                          'kategori_id' => $kategori_id
                  ));

                  while ($urunaltcek=$urunaltsor->fetch(PDO::FETCH_ASSOC)) {

                      $urun_id=$urunaltcek['urun_id'];
                      $urunfotosor=$db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id order by urunfoto_sira ASC limit 1");
                      $urunfotosor->execute(array(
                          'urun_id' => $urun_id
                      ));
                      $urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC);


                      ?>




                <!-- start single product item -->
                <li>
                  <figure>
                    <a class="aa-product-img" href="urun-<?=seo($urunaltcek["urun_ad"]).'-'.$urunaltcek["urun_id"]?>"><img src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" alt="" class="img-responsive"></a>
                     <figcaption>
                      <h4 class="aa-product-title"><a href="urun-<?=seo($urunaltcek["urun_ad"]).'-'.$urunaltcek["urun_id"]?>"><?php echo $urunaltcek['urun_ad'] ?></a></h4>
                      <span class="aa-product-price"><?php echo $urunaltcek['urun_fiyat'] ?> TL</span>
                    </figcaption>
                  </figure>

                  <!-- product badge -->
                </li>
                 <!-- start single product item -->


                <?php } ?>





              </ul>
              <!-- quick view modal -->                  
              <div class="modal fade" id="quick-view-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">                      
                    <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      <div class="row">
                        <!-- Modal view slider -->
                        <div class="col-md-6 col-sm-6 col-xs-12">                              
                          <div class="aa-product-view-slider">                                
                            <div class="simpleLens-gallery-container" id="demo-1">
                              <div class="simpleLens-container">
                                  <div class="simpleLens-big-image-container">
                                      <a class="simpleLens-lens-image" data-lens-image="img/view-slider/large/polo-shirt-1.png">
                                          <img src="img/view-slider/medium/polo-shirt-1.png" class="simpleLens-big-image">
                                      </a>
                                  </div>
                              </div>
                              <div class="simpleLens-thumbnails-container">
                                  <a href="#" class="simpleLens-thumbnail-wrapper"
                                     data-lens-image="img/view-slider/large/polo-shirt-1.png"
                                     data-big-image="img/view-slider/medium/polo-shirt-1.png">
                                      <img src="img/view-slider/thumbnail/polo-shirt-1.png">
                                  </a>                                    
                                  <a href="#" class="simpleLens-thumbnail-wrapper"
                                     data-lens-image="img/view-slider/large/polo-shirt-3.png"
                                     data-big-image="img/view-slider/medium/polo-shirt-3.png">
                                      <img src="img/view-slider/thumbnail/polo-shirt-3.png">
                                  </a>

                                  <a href="#" class="simpleLens-thumbnail-wrapper"
                                     data-lens-image="img/view-slider/large/polo-shirt-4.png"
                                     data-big-image="img/view-slider/medium/polo-shirt-4.png">
                                      <img src="img/view-slider/thumbnail/polo-shirt-4.png">
                                  </a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- Modal view content -->
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="aa-product-view-content">
                            <h3>T-Shirt</h3>
                            <div class="aa-price-block">
                              <span class="aa-product-view-price">$34.99</span>
                              <p class="aa-product-avilability">Avilability: <span>In stock</span></p>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis animi, veritatis quae repudiandae quod nulla porro quidem, itaque quis quaerat!</p>
                            <h4>Size</h4>
                            <div class="aa-prod-view-size">
                              <a href="#">S</a>
                              <a href="#">M</a>
                              <a href="#">L</a>
                              <a href="#">XL</a>
                            </div>
                            <div class="aa-prod-quantity">
                              <form action="">
                                <select name="" id="">
                                  <option value="0" selected="1">1</option>
                                  <option value="1">2</option>
                                  <option value="2">3</option>
                                  <option value="3">4</option>
                                  <option value="4">5</option>
                                  <option value="5">6</option>
                                </select>
                              </form>
                              <p class="aa-prod-category">
                                Category: <a href="#">Polo T-Shirt</a>
                              </p>
                            </div>
                            <div class="aa-prod-view-bottom">
                              <a href="#" class="aa-add-to-cart-btn"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                              <a href="#" class="aa-add-to-cart-btn">View Details</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>                        
                  </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
              </div>
              <!-- / quick view modal -->   
            </div>  
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / product category -->


  <!-- Subscribe section -->
  <section id="aa-subscribe">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-subscribe-area">
            <h3>Subscribe our newsletter </h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex, velit!</p>
            <form action="" class="aa-subscribe-form">
              <input type="email" name="" id="" placeholder="Enter your Email">
              <input type="submit" value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Subscribe section -->

 <?php require_once 'footer.php'?>