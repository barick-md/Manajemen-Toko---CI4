<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
<?php
if (session()->getFlashData('success')) {
?>
    <div class="alert alert-info alert-dismissible fade show" role="alert">
        <?= session()->getFlashData('success') ?>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
<?php
}
?>
<?php
if (session()->getFlashData('failed')) {
?>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <?= session()->getFlashData('failed') ?>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
<?php
}
?>

<a type="button" class="btn btn-success" href="<?=base_url()?>transaksi/download">
    Download Data
</a>

<table class="table datatable">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Username</th>
            <th scope="col">Total Harga</th>
            <th scope="col">Alamat</th>
            <th scope="col">Ongkir</th>
            <th scope="col">Status</th>
            <th scope="col"></th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($transaction as $index => $transaction) : ?>
        <tr>
            <th scope="row"><?php echo $index + 1 ?></th>
            <td><?php echo $transaction['username'] ?></td>
            <td><?php echo number_to_currency($transaction['total_harga'], 'IDR') ?></td>
            <td><?php echo $transaction['alamat'] ?></td>
            <td><?php echo number_to_currency($transaction['ongkir'],'IDR') ?></td>
            <td><?php echo $transaction['status'] ?></td>
            <td>
                <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#editModal-<?= $transaction['id'] ?>">
                    Ubah Status
                </button>
            </td>
        </tr>
        
        <div class="modal fade" id="editModal-<?= $transaction['id'] ?>" tabindex="-1">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Edit Data</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form action="<?= base_url('transaksi/edit/' . $transaction['id']) ?>" method="post" enctype="multipart/form-data">
                            <?= csrf_field(); ?>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="Status">Status</label>
                                    <input type="number" min=0 max=1 name="status" class="form-control" id="status" value="<?= $transaction['status'] ?>" placeholder="Status" required>
                                </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Simpan</button>
                            </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <?php endforeach ?>
    </tbody>
</table>
<?= $this->endSection() ?>