<?php

require_once 'header.php';

if (isset($_GET['sef'])) {

    $kategorisor=$db->prepare("SELECT * FROM kategori where kategori_seourl=:seourl");
    $kategorisor->execute(array(
            'seourl' => $_GET['sef']
    ));

    $kategoricek=$kategorisor->fetch(PDO::FETCH_ASSOC);

    $kategori_id=$kategoricek['kategori_id'];

    $urunsor=$db->prepare("SELECT * FROM urun where kategori_id=:kategori_id order by urun_id DESC");
    $urunsor->execute(array(
            'kategori_id' => $kategori_id
    ));

} else {

    $urunsor=$db->prepare("SELECT * FROM urun order by urun_id DESC");
    $urunsor->execute();

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
                <form action="" class="aa-sort-form">
                  <label for="">Sort by</label>
                  <select name="">
                    <option value="1" selected="Default">Default</option>
                    <option value="2">Name</option>
                    <option value="3">Price</option>
                    <option value="4">Date</option>
                  </select>
                </form>
                <form action="" class="aa-show-form">
                  <label for="">Show</label>
                  <select name="">
                    <option value="1" selected="12">12</option>
                    <option value="2">24</option>
                    <option value="3">36</option>
                  </select>
                </form>
              </div>
              <div class="aa-product-catg-head-right">
                <a id="grid-catg" href="#"><span class="fa fa-th"></span></a>
                <a id="list-catg" href="#"><span class="fa fa-list"></span></a>
              </div>
            </div>
            <div class="aa-product-catg-body animated jackInTheBox">
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


                    <figcaption>
                      <h4 class="aa-product-title"><a href="urun-<?=seo($uruncek["urun_ad"]).'-'.$uruncek["urun_id"]?>"><?php echo $uruncek['urun_ad']?></a></h4>
                      <span class="aa-product-price"><?php echo $uruncek['urun_fiyat']?> TL</span>
                    </figcaption>
                  </figure>                         

                  <!-- product badge -->
                </li>


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
            <div class="aa-product-catg-pagination">
              <nav>
                <ul class="pagination">
                  <li>
                    <a href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li>
                    <a href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
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




            <!-- single sidebar -->
            <div class="aa-sidebar-widget">
              <h3>Öne Çıkanlar</h3>
              <div class="aa-recently-views animated rollIn">
                <ul>

                    <?php

                    $urunsor=$db->prepare("SELECT * FROM urun where urun_durum=:urun_durum and urun_onecikar=:urun_onecikar order by urun_id ASC limit 3");
                    $urunsor->execute(array(
                            'urun_durum' => 1,
                            'urun_onecikar' => 1
                    ));

                    while ($uruncek=$urunsor->fetch(PDO::FETCH_ASSOC)) {

                        $urun_id=$uruncek['urun_id'];

                        $urunfotosor=$db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id order by urunfoto_sira ASC limit 1");
                        $urunfotosor->execute(array(
                                'urun_id' => $urun_id
                        ));

                        $urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC);

                    ?>


                  <li>
                    <a href="urun-<?=seo($uruncek["urun_ad"]).'-'.$uruncek["urun_id"]?>" class="aa-cartbox-img"><img alt="" src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>"></a>
                    <div class="aa-cartbox-info">
                      <h4><a href="urun-<?=seo($uruncek["urun_ad"]).'-'.$uruncek["urun_id"]?>"><?php echo $uruncek['urun_ad'] ?></a></h4>
                      <p><?php echo $uruncek['urun_fiyat'] ?> TL</p>
                    </div>                    
                  </li>

                    <?php } ?>



                </ul>
              </div>                            
            </div>
            <!-- single sidebar -->





            <div class="aa-sidebar-widget">
              <h3>Top Rated Products</h3>
              <div class="aa-recently-views">
                <ul>
                  <li>
                    <a href="#" class="aa-cartbox-img"><img alt="img" src="img/woman-small-2.jpg"></a>
                    <div class="aa-cartbox-info">
                      <h4><a href="#">Product Name</a></h4>
                      <p>1 x $250</p>
                    </div>                    
                  </li>
                  <li>
                    <a href="#" class="aa-cartbox-img"><img alt="img" src="img/woman-small-1.jpg"></a>
                    <div class="aa-cartbox-info">
                      <h4><a href="#">Product Name</a></h4>
                      <p>1 x $250</p>
                    </div>                    
                  </li>
                   <li>
                    <a href="#" class="aa-cartbox-img"><img alt="img" src="img/woman-small-2.jpg"></a>
                    <div class="aa-cartbox-info">
                      <h4><a href="#">Product Name</a></h4>
                      <p>1 x $250</p>
                    </div>                    
                  </li>                                      
                </ul>
              </div>                            
            </div>
          </aside>
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