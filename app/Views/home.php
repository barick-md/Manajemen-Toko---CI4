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
    <!-- Table with stripped rows -->
    <!--
    <table class="table datatable">
        <thead>
            <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Position</th>
            <th scope="col">Age</th>
            <th scope="col">Start Date</th>
            </tr>
        </thead>
        <tbody>
            <tr>
            <th scope="row">1</th>
            <td>Brandon Jacob</td>
            <td>Designer</td>
            <td>28</td>
            <td>2016-05-25</td>
            </tr>
            <tr>
            <th scope="row">2</th>
            <td>Bridie Kessler</td>
            <td>Developer</td>
            <td>35</td>
            <td>2014-12-05</td>
            </tr>
            <tr>
            <th scope="row">3</th>
            <td>Ashleigh Langosh</td>
            <td>Finance</td>
            <td>45</td>
            <td>2011-08-12</td>
            </tr>
            <tr>
            <th scope="row">4</th>
            <td>Angus Grady</td>
            <td>HR</td>
            <td>34</td>
            <td>2012-06-11</td>
            </t
            r>
            <tr>
            <th scope="row">5</th>
            <td>Raheem Lehner</td>
            <td>Dynamic Division Officer</td>
            <td>47</td>
            <td>2011-04-19</td>
            </tr>
        </tbody>
    </table>
    -->
    <!-- End Table with stripped rows -->
</body>

<?= $this->endSection() ?>
</html>