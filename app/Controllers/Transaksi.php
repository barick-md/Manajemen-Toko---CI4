<?php

namespace App\Controllers;

use App\Models\ProductModel;
use App\Models\TransactionModel;
use App\Models\TransactionDetailModel;
use Dompdf\Dompdf;

class Transaksi extends BaseController
{
    protected $product;
    protected $transaction;
    protected $transaction_detail;

    function __construct()
    {
        helper('form');
        helper('number');
        $this->product=new ProductModel();
        $this->transaction = new TransactionModel();
        $this->transaction_detail = new TransactionDetailModel();
    }
    
    public function index(): string
    {
        $transaction = $this->transaction->findAll();
        $data['transaction'] = $transaction;

        return view('transaksi', $data);
    }

    public function edit($id)
    {
        $dataTransaksi = $this->transaction->find($id);

        $dataForm = [
            'status' => $this->request->getPost('status'),
        ];

        $this->transaction->update($id, $dataForm);

        return redirect('transaksi')->with('success', 'Data Berhasil Diubah');
    }

    public function download()
    {
        $transaction = $this->transaction->findAll();

        $html = view('transaksiPDF', ['transaction' => $transaction]);

        $filename = date('y-m-d-H-i-s') . '-transaksi';

        // instantiate and use the dompdf class
        $dompdf = new Dompdf();

        // load HTML content
        $dompdf->loadHtml($html);

        // (optional) setup the paper size and orientation
        $dompdf->setPaper('A4', 'potrait');

        // render html as PDF
        $dompdf->render();

        // output the generated pdf
        $dompdf->stream($filename);
    }
}
