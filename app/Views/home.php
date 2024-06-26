<!DOCTYPE html>
<html lang="en">
<?= $this->extend('layout') ?>
<?= $this->section('content') ?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="row">
        <?php foreach ($product as $key => $item) : ?>
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <img src="<?php echo base_url() . "img/" . $item['foto'] ?>" alt="..." width="300px">
                        <h5 class="card-title"><?php echo $item['nama'] ?><br><?php echo $item['harga'] ?></h5>
                    </div>
                </div>
            </div>
        <?php endforeach ?>
    </div>
   
</body>

<?= $this->endSection() ?>
</html>