import 'package:flutter/material.dart';
import 'package:foodorder/halaman_print.dart';

class HalamanPembayaran extends StatefulWidget {
  final String namaBarang;
  final int jumlahProduk;
  final int hargaBarang;
  final int nomorMeja;
  //final int totalHarga;
  //final int meja;
  //final int totalHarga;

  const HalamanPembayaran({
    super.key,
    required this.namaBarang,
    required this.hargaBarang,
    required this.jumlahProduk,
    required this.nomorMeja,
    //required this.totalHarga
    //required this.totalHarga
    //required this.meja
  });

  @override
  _HalamanPembayaranState createState() => _HalamanPembayaranState();
}

class _HalamanPembayaranState extends State<HalamanPembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Pembayaran'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // image: DecorationImage(
                //   image: NetworkImage(
                //       'https://images.unsplash.com/photo-1592734816382-b2cbe1c6d15f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Barang yang dibeli',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Nama Barang : ${widget.namaBarang}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Jumlah Barang: ${widget.jumlahProduk}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Total Harga: Rp.  ${widget.hargaBarang}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Nomor Meja: ${widget.nomorMeja}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HalamanPrint(
                              namaBarang: widget.namaBarang,
                              hargaBarang: widget.hargaBarang,
                              jumlahProduk: widget.jumlahProduk,
                              nomorMeja: widget.nomorMeja,
                            )));
              },
              child: Container(
                height: 80,
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    'Print Pembayaran',
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
