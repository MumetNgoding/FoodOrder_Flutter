import 'dart:developer';
import 'package:foodorder/halaman_pembayaran.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class HalamanPesanan extends StatelessWidget {
  final String namaBarang;
  final int hargaBarang;
  final int jumlahProduk;
  final int Nomeja;

  const HalamanPesanan(
      {super.key,
      required this.namaBarang,
      required this.hargaBarang,
      required this.jumlahProduk,
      required this.Nomeja});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Nama Produk: $namaBarang'),
        ],
      ),
    );
  }
}

class OrderPage extends StatefulWidget {
  final String namaBarang;
  final int hargaBarang;
  int jumlahProduk;
  int Nomeja;

  OrderPage(
      {super.key,
      required this.namaBarang,
      required this.hargaBarang,
      required this.jumlahProduk,
      required this.Nomeja});

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  //late int meja;
  late int nomorMeja;
  // late int hargaBarang;
  // late int jumlahProduk;
  // late int totalHarga = hargaBarang * jumlahProduk;

  // void tambahJumlahPesanan() {
  //   setState(() {
  //     widget.jumlahProduk += 1;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.green,
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Detail Pesanan",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                'Nama Produk: ${widget.namaBarang}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                'Harga: ${widget.hargaBarang * widget.jumlahProduk}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                'Jumlah Pesanan:${widget.jumlahProduk}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Text(
                    'Nomor Meja: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      onChanged: ((value) {
                        setState(() {
                          nomorMeja = int.parse(value);
                        });
                      }),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HalamanPembayaran(
                            namaBarang: widget.namaBarang,
                            jumlahProduk: widget.jumlahProduk,
                            hargaBarang: widget.hargaBarang,
                            nomorMeja: nomorMeja,
                          )),
                );
              },
              child: Container(
                height: 80,
                margin: EdgeInsets.only(top: 20),
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Lanjutkan Pembayaran',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
