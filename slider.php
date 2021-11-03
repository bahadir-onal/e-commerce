<!-- Start slider -->
<section id="aa-slider">
    <div class="aa-slider-area">
        <div id="sequence" class="seq">
            <div class="seq-screen">
                <ul class="seq-canvas">


                    <?php

                    $slidersor=$db->prepare("SELECT * FROM slider");
                    $slidersor->execute();


                    while ($slidercek=$slidersor->fetch(PDO::FETCH_ASSOC)) { ?>


                    <!-- single slide item -->
                    <li>
                        <div class="seq-model">
                            <img style="height: 100%; width: 100%;" data-seq src="<?php echo $slidercek['slider_resimyol']?>" alt="" class="img-responsive" />
                        </div>
                        <div class="seq-title">
                            <span data-seq>75%'e varan indirimler </span>
                            <h2 data-seq><?php echo $slidercek['slider_ad']  ?></h2>
                            <a data-seq href="kategoriler.php" class="aa-shop-now-btn aa-secondary-btn">Şimdi Al</a>
                        </div>
                    </li>
                    <!-- single slide item -->

                <?php } ?>




                </ul>
            </div>
            <!-- slider navigation btn -->
            <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
                <a type="button" class="seq-prev" aria-label="Previous"><span class="fa fa-angle-left"></span></a>
                <a type="button" class="seq-next" aria-label="Next"><span class="fa fa-angle-right"></span></a>
            </fieldset>
        </div>
    </div>
</section>
<!-- / slider -->