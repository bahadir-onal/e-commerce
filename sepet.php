<?php
require_once 'header.php'
?>

    <!-- catg header banner section -->
    <section id="aa-catg-head-banner">
        <img src="dimg/fashion/8945038426142.jpg" alt="fashion img">
        <div class="aa-catg-head-banner-area">
            <div class="container">
                <div class="aa-catg-head-banner-content">
                    <h2>Alışveriş Sepetim</h2>
                </div>
            </div>
        </div>
    </section>
    <!-- / catg header banner section -->

    <!-- Cart view section -->
    <section id="cart-view">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="cart-view-area">
                        <div class="cart-view-table">
                            <form action="nedmin/netting/islem.php" method="POST" role="form">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th></th>
                                            <th></th>
                                            <th>Ürün</th>
                                            <th>Adet</th>
                                            <th>Toplam</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                        <?php

                                        $kullanici_id = $kullanicicek['kullanici_id'];

                                        $sepetsor = $db->prepare("SELECT * FROM sepet where kullanici_id=:id");
                                        $sepetsor->execute(array(
                                            'id' => $kullanici_id
                                        ));

                                        $toplam_fiyat = 0;
                                        while ($sepetcek = $sepetsor->fetch(PDO::FETCH_ASSOC)) {

                                            $urun_id = $sepetcek['urun_id'];

                                            $urunsor = $db->prepare("SELECT * FROM urun where urun_id=:urun_id");
                                            $urunsor->execute(array(
                                                'urun_id' => $urun_id
                                            ));

                                            $uruncek = $urunsor->fetch(PDO::FETCH_ASSOC);
                                            $temp = $uruncek['urun_fiyat'] * $sepetcek['urun_adet'];
                                            $toplam_fiyat += $temp;

                                            $urun_id = $uruncek['urun_id'];

                                            $urunfotosor = $db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id order by urunfoto_sira ASC limit 1");
                                            $urunfotosor->execute(array(
                                                'urun_id' => $urun_id
                                            ));

                                            $urunfotocek = $urunfotosor->fetch(PDO::FETCH_ASSOC);


                                            ?>


                                            <tr>
                                                <td>
                                                    <input type="hidden" name="kullanici_id" value="<?php echo $kullanici_id ?>">
                                                    <button type="submit" name="sepetsil" value="<?php echo $urun_id ?>"
                                                            class="btn btn-danger btn-red btn-sm">Sil
                                                    </button>

                                                </td>
                                                <td>
                                                    <a href="urun-<?= seo($uruncek["urun_ad"]) . '-' . $uruncek["urun_id"] ?>"><img
                                                                src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>"
                                                                alt="img"></a></td>
                                                <td><a class="aa-cart-title"
                                                       href="urun-<?= seo($uruncek["urun_ad"]) . '-' . $uruncek["urun_id"] ?>"><?php echo $uruncek['urun_ad'] ?></a>
                                                </td>
                                                <td><input class="aa-cart-quantity" disabled="" type="number"
                                                           value="<?php echo $sepetcek['urun_adet'] ?>"></td>
                                                <td><?php echo number_format($uruncek['urun_fiyat']) ?> TL</td>
                                            </tr>

                                        <?php } ?>

                                        </tbody>
                                    </table>
                                </div>
                            </form>
                            <!-- Cart Total view -->
                            <div class="cart-view-total">
                                <table class="aa-totals-table">
                                    <tbody>

                                    <tr>
                                        <th>Toplam Fiyat</th>
                                        <td>
                                        <td><?php echo number_format($toplam_fiyat) ?> TL</td>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <a href="odeme.php" class="aa-cart-view-btn">Ödeme Sayfası</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- / Cart view section -->


<?php require_once 'footer.php' ?>