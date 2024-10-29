<?php
include('functions/userfunction.php');
include('includes/header.php');
include('authenticate.php');
?>

<div class="py-3 bg-primary">
    <div class="container">
        <h6 class="text-white">
            <a href="index.php" class="text-white">
                Home /
            </a>
            <a href="checkout.php" class="text-white">
                Checkout
            </a>
        </h6>
    </div>
</div>

<div class="py-5">
    <div class="container">
        <div class="card">
            <div class="card-body shadow">
                <form action="functions/placeorder.php" method="POST">
                    <div class="row">
                        <div class="col-md-7">
                            <h5>Basic Details</h5>
                            <hr>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="fw-bold">Name</label>
                                    <input type="text" name="name"  placeholder="Enter your full name"
                                        class="form-control">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="fw-bold">Email</label>
                                    <input type="email" name="email"  placeholder="Enter your email"
                                        class="form-control">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="fw-bold">Phone</label>
                                    <input type="text" name="phone"  placeholder="Enter your phone number"
                                        class="form-control">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="fw-bold">Pin code</label>
                                    <input type="text" name="pincode" required placeholder="Enter your pin code"
                                        class="form-control">
                                </div>
                                <div class="col-md-12 mb-3">
                                    <label class="fw-bold">Address</label>
                                    <textarea type="text" name="address" required class="form-control"
                                        rows="5"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <h5>Order Details</h5>
                            <hr>
                            <?php $items = getCartItems();
                        $totalPrice = 0;
                        foreach ($items as $citems) {
                        ?>
                            <div class="mb-1 border">
                                <div class="row align-items-center">
                                    <div class="col-md-2">
                                        <img src="uploads/<?= $citems['image']; ?>" alt="Image" width="80px">
                                    </div>
                                    <div class="col-md-5">
                                        <label class="px-4"><?= $citems['name']; ?></label>
                                    </div>
                                    <div class="col-md-3">
                                        <label><?= $citems['selling_price']; ?></label>
                                    </div>
                                    <div class="col-md-2">
                                        <label>x <?= $citems['prod_qty']; ?></label>
                                    </div>
                                </div>
                            </div>
                            <?php
                        $totalPrice += $citems['selling_price'] * $citems['prod_qty'];
                            }
                      ?>
                            <hr>
                            <input type="hidden" name="payment_mode" value="COD">
                            <h5>Total Price: <span class="float-end fw-bold"><?= $totalPrice ; ?></span></h5>
                            <div class="">
                                <button type="submit" name="placeOrderBtn" class="btn btn-primary w-100">Confirm and place order |
                                    COD</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



<?php
include('includes/footer.php');
?>