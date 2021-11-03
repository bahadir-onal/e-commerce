<?php

require_once 'header.php';

if (isset($_POST['arama'])){


    $aranan=$_POST['aranan'];
    $urunsor=$db->prepare("SELECT * FROM urun where urun_ad LIKE ?");
    $urunsor->execute(array("%$aranan%"));

    $say=$urunsor->rowCount();

} else {

    header("Location:index.php?durum=bos");

}


?>

  <!-- product category -->
  <section id="aa-product-category">
    <div class="container">
      <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
          <div class="aa-product-catg-content">
            <div class="aa-product-catg-head">
              <div class="aa-product-catg-head-left">

              </div>
              <div class="aa-product-catg-head-right">
                <a id="grid-catg" href="#"><span class="fa fa-th"></span></a>
                <a id="list-catg" href="#"><span class="fa fa-list"></span></a>
              </div>
            </div>
            <div class="aa-product-catg-body">
              <ul class="aa-product-catg">


                <?php


                while ($uruncek=$urunsor->fetch(PDO::FETCH_ASSOC)) {

                    $urun_id=$uruncek['urun_id'];

                    $urunfotosor=$db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id order by urunfoto_sira ASC limit 1");
                    $urunfotosor->execute(array(
                            'urun_id' => $urun_id
                    ));

                    $urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC);



                    ?>



                <!-- start single product item -->
                <li>
                  <figure>
                    <a class="aa-product-img" href="urun-<?=seo($uruncek["urun_ad"]).'-'.$uruncek["urun_id"]?>"><img src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" alt="" class="img-responsive"></a>
                    <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Sepete Ekle</a>
                    <figcaption>
                      <h4 class="aa-product-title"><a href="urun-<?=seo($uruncek["urun_ad"]).'-'.$uruncek["urun_id"]?>"><?php echo $uruncek['urun_ad']?></a></h4>
                      <span class="aa-product-price"><?php echo $uruncek['urun_fiyat']?> TL</span>
                    </figcaption>
                  </figure>                         
                  <div class="aa-product-hvr-content">
                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                    <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>                            
                  </div>
                  <!-- product badge -->
                </li>


                <?php } ?>




              </ul>

              <!-- / quick view modal -->   
            </div>

          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
          <aside class="aa-sidebar">
            <!-- single sidebar -->
            <div class="aa-sidebar-widget">
              <h3>Kategoriler</h3>
              <ul class="aa-catg-nav">

                  <?php
                  $kategorisor=$db->prepare("SELECT * FROM kategori order by kategori_sira ASC");
                  $kategorisor->execute();

                  while ($kategoricek=$kategorisor->fetch(PDO::FETCH_ASSOC)) { ?>



                <li><a href="kategori-<?=seo($kategoricek['kategori_ad']) ?>"><?php echo $kategoricek['kategori_ad'] ?></a></li>


                      <?php } ?>


              </ul>
            </div>
            <!-- single sidebar -->
          </aside>
        </div>
      </div>
    </div>
  </section>
  <!-- / product category -->



  <?php require_once 'footer.php'?>