<?php
include('../middleware/adminMiddleware.php');
include('includes/header.php');
?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header bg-primary">
                   <h4 class="text-white">Order History
                       <a href="orders.php" class="btn btn-warning float-end">Back</a>
                   </h4> 
                </div>
                <div class="card-body">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <td class="fw-bold text-center fs-6">ID</td>
                                <td class="fw-bold text-center fs-6">User</td>
                                <td class="fw-bold text-center fs-6">Tracking No</td>
                                <td class="fw-bold text-center fs-6">Price</td>
                                <td class="fw-bold text-center fs-6">Date</td>
                                <td class="fw-bold text-center fs-6">View</td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                        $orders = getOrderHistory();
                        if(mysqli_num_rows($orders) > 0){

                            foreach ($orders as $items) {
                            ?>
                            <tr>
                                <td><?= $items['id']; ?></td>
                                <td><?= $items['name']; ?></td>
                                <td><?= $items['tracking_no']; ?></td>
                                <td><?= $items['total_price']; ?></td>
                                <td><?= $items['created_at']; ?></td>
                                <td>
                                    <a href="view-order.php?t=<?= $items['tracking_no']; ?>" class="btn btn-primary">View Details</a>
                                </td>
                            </tr>
                            <?php
                            }
                        }
                        else{
                           ?>
                            <tr>
                                <td colspan="5">No Orders Yet</td>
                            </tr>
                            <?php
                        }
                    ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>



<?php
include('includes/footer.php');
?>