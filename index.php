<?php
include('functions/userfunction.php');
include('includes/header.php');
include('includes/slider.php');
?>

<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4 class="fw-bold fs-4">Trending Products</h4>
                <hr>
                <div class="owl-carousel shadow">
                    <?php
                $trendingProducts = getAllTrending();
                if(mysqli_num_rows($trendingProducts) > 0 ){

                    foreach ($trendingProducts as $items) {
                        ?>
                    <div class="item">
                        <a href="product-view.php?product=<?= $items['slug']; ?>">
                            <div class="card shadow" style="height: 350px;">
                                <div class="card-body">
                                    <img style="height: 300px;  object-fit: cover;" src="uploads/<?= $items['image']; ?>" alt="Product Image" class="w-100">
                                    <h6 class="text-center fs-5"><?= $items['name']; ?></h6>
                                </div>
                            </div>
                        </a>
                    </div>
                    <?php
                    }
                }
              ?>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="py-5 bg-f2f2">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4 class="fw-bold fs-2">About Us</h4>
                <hr>
                <p>
                    Welcome to our website! We are committed to delivering top-quality solutions tailored to the needs
                    of
                    our clients. With a focus on reliability, innovation, and excellence, our goal is to provide
                    services that make a difference in your business.
                </p>
                <p>
                    Our team consists of experienced professionals who bring a wealth of knowledge and skills to every
                    project. We strive to create long-term relationships with our customers based on trust and
                    transparency, ensuring that your experience with us is both smooth and effective.
                    <br>
                    Whether you're looking for web development, digital marketing, or UI/UX design services, we are here
                    to support your success. Let us be a part of your journey towards achieving your business goals!
                </p>
            </div>
        </div>
    </div>
</div>


<div class="py-5 bg-dark">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h4 class="text-white">E-shop :</h4>
                <div class="underline mb-3"></div>
                <a href="index.php" class="text-white mb-4"><i class="fa fa-angle-right"></i> Home</a> <br>
                <a href="#" class="text-white mb-10"><i class="fa fa-angle-right"></i> About Us</a> <br>
                <a href="cart.php" class="text-white mb-4"><i class="fa fa-angle-right"></i> Cart</a> <br>
                <a href="categories.php" class="text-white mb-4"><i class="fa fa-angle-right"></i> Our Collections</a>
            </div>
            <div class="col-md-3">
                <h4 class="text-white">Address :</h4>
                <div class="underline2 mb-3"></div>
                <p class="text-white">
                    #24, Second Floor,
                    2nd street, xyz layout,
                    Karachi, Pakistan.
                </p>
                <a href="tel:+9211111222" class="text-white"><i class="fa fa-phone"
                        style="margin-right:10px"></i>+9211111222</a> <br>
                <a href="mailto: mominali5696@gmail.com" class="text-white"><i class="fa fa-envelope"
                        style="margin-right:10px"></i>mominali5696@gmail.com</a>
            </div>
            <div class="col-md-6">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4929.370668464492!2d67.04092855865075!3d24.899775282037115!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3eb33faa59ef454f%3A0xc6a1f609acb4db00!2sNirala%20Sweets%2C%20Bakers%20and%20Nimco!5e0!3m2!1sen!2s!4v1729771720199!5m2!1sen!2s"
                    class="w-100" height="200" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="py-2" style="background:#493628">
    <div class="text-center">
        <p class="mb-0 text-white">All rights reserved. Copyright at @ <a href="https://github.com/Momin-Ali-56"
                target="_blank" class="text-white"> MA Coder </a> - <?= date('Y');?> </p>
    </div>
</div>



<?php
include('includes/footer.php');
?>

<script>
$(document).ready(function() {
    $('.owl-carousel').owlCarousel({
        loop: true,
        margin: 10,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 3
            },
            1000: {
                items: 4
            }
        }
    })
});
</script>