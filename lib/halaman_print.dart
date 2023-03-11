import 'package:flutter/material.dart';
import 'package:foodorder/halaman_pembayaran.dart';

class HalamanPrint extends StatelessWidget {
  final String namaBarang;
  final int hargaBarang;
  final int jumlahProduk;
  final int nomorMeja;

  const HalamanPrint(
      {super.key,
      required this.namaBarang,
      required this.hargaBarang,
      required this.jumlahProduk,
      required this.nomorMeja});

  // HalamanPrint({required this.namabarang});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Pembayaran'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Terimakasih Sudah Berbelanja',
                style: TextStyle(fontSize: 20.0)),
            SizedBox(height: 20.0),
            Text('Nama Barang : ${namaBarang}\n'
                'Total Harga : ${hargaBarang}\n'
                'Jumlah Pesanan : ${jumlahProduk}\n'), // menambahkan variabel namabarang ke widget Text()
          ],
        ),
      ),
    );
  } // menambahkan parameter namabarang ke constructor HalamanPembayaran() dan mengubah tipe data dari widget HalamanPrint() menjadi StatelessWidget agar dapat mengakses variabel namabarang
}
