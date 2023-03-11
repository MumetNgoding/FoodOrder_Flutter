import 'package:flutter/material.dart';
import 'package:foodorder/halaman_pesanan.dart';

class MenuPage extends StatefulWidget {
  final hargaBarang;

  MenuPage({this.hargaBarang});
  @override
  //int Nomeja;
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int jumlahProduk = 0;
  int totalHarga = 0;
  int Nomeja = 0;
  int hargaBarang = 0;

  void tambahJumlahProduk() {
    setState(() {
      jumlahProduk++;
      //_meja++;
    });
  }

  void kurangiProduk() {
    setState(() {
      if (jumlahProduk > 0) {
        jumlahProduk--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Makanan'),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Card(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage('https://picsum.photos/250?image=9'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Food 1',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Rp. 20.000',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderPage(
                                    namaBarang: 'Food 1',
                                    hargaBarang: 20000,
                                    jumlahProduk: jumlahProduk,
                                    Nomeja: Nomeja,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'Pesan Sekarang',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          // IconButton(
                          //   icon: Icon(Icons.add),
                          //   onPressed: tambahJumlahProduk,
                          //   color: Colors.green,
                          // ),
                          // Text("$jumlahProduk"),
                          // IconButton(
                          //   icon: Icon(Icons.remove),
                          //   onPressed: kurangiProduk,
                          //   color: Colors.red,
                          // ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Row(
                              children: [
                                Text(
                                  'Jumlah: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  height: 50,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                    onChanged: ((value) {
                                      setState(() {
                                        jumlahProduk = int.parse(value);
                                      });
                                    }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Card(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://picsum.photos/250?image=10'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Food 2',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Rp. 30.000',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderPage(
                                    namaBarang: 'Food 2',
                                    hargaBarang: 30000,
                                    jumlahProduk: jumlahProduk,
                                    Nomeja: Nomeja,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'Pesan Sekarang',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          // IconButton(
                          //   icon: Icon(Icons.add),
                          //   onPressed: tambahJumlahProduk,
                          //   color: Colors.green,
                          // ),
                          // Text("$jumlahProduk"),
                          // IconButton(
                          //   icon: Icon(Icons.remove),
                          //   onPressed: kurangiProduk,
                          //   color: Colors.red,
                          // ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Row(
                              children: [
                                Text(
                                  'Jumlah: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  height: 50,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                    onChanged: ((value) {
                                      setState(() {
                                        jumlahProduk = int.parse(value);
                                      });
                                    }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderPage(
                      namaBarang: '',
                      hargaBarang: 0,
                      jumlahProduk: jumlahProduk,
                      Nomeja: Nomeja,
                    ),
                  ),
                );
              },
              child: Text(
                'Pesan Sekarang',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            // // tambahkan container barang dummy
            // Container(
            //   margin: EdgeInsets.all(10),
            //   child: Card(
            //     child: Column(
            //       children: [
            //         Container(
            //           height: 200,
            //           width: double.infinity,
            //           decoration: BoxDecoration(
            //             image: DecorationImage(
            //               image: NetworkImage(
            //                   'https://picsum.photos/250?image=10'),
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.all(10),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Text(
            //                 'Food 2',
            //                 style: TextStyle(
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //               Text(
            //                 'Rp. 25.000',
            //                 style: TextStyle(
            //                   fontSize: 20,
            //                   color: Colors.green,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Container(
            //           margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               ElevatedButton(
            //                 onPressed: () {
            //                   Navigator.push(
            //                     context,
            //                     MaterialPageRoute(
            //                       builder: (context) => OrderPage(
            //                         namaBarang: 'Food 2',
            //                         hargaBarang: 25000,
            //                         jumlahProduk: jumlahProduk,
            //                         Nomeja: Nomeja,
            //                       ),
            //                     ),
            //                   );
            //                 },
            //                 child: Text(
            //                   'Pesan Sekarang',
            //                   style: TextStyle(
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ),
            //               IconButton(
            //                 icon: Icon(Icons.add),
            //                 onPressed: () {
            //                   setState(() {
            //                     jumlahProduk++;
            //                   });
            //                 },
            //                 color: Colors.green,
            //               ),
            //               Text("$jumlahProduk"),
            //               IconButton(
            //                 icon: Icon(Icons.remove),
            //                 onPressed: () {
            //                   setState(() {
            //                     if (jumlahProduk > 0) {
            //                       jumlahProduk--;
            //                     }
            //                   });
            //                 },
            //                 color: Colors.red,
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            // // tambahkan container barang dummy
            // Container(
            //   margin: EdgeInsets.all(10),
            //   child: Card(
            //     child: Column(
            //       children: [
            //         Container(
            //           height: 200,
            //           width: double.infinity,
            //           decoration: BoxDecoration(
            //             image: DecorationImage(
            //               image: NetworkImage(
            //                   'https://picsum.photos/250?image=11'),
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.all(10),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Text(
            //                 'Food 3',
            //                 style: TextStyle(
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //               Text(
            //                 'Rp. 30.000',
            //                 style: TextStyle(
            //                   fontSize: 20,
            //                   color: Colors.green,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Container(
            //           margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               ElevatedButton(
            //                 onPressed: () {
            //                   Navigator.push(
            //                     context,
            //                     MaterialPageRoute(
            //                       builder: (context) => OrderPage(
            //                         namaBarang: 'Food 3',
            //                         hargaBarang: 30000,
            //                         jumlahProduk: jumlahProduk,
            //                         Nomeja: Nomeja,
            //                       ),
            //                     ),
            //                   );
            //                 },
            //                 child: Text(
            //                   'Pesan Sekarang',
            //                   style: TextStyle(
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ),
            //               IconButton(
            //                 icon: Icon(Icons.add),
            //                 onPressed: () {
            //                   setState(() {
            //                     jumlahProduk;
            //                     //totalHarga = hargaBarang * jumlahProduk;
            //                   });
            //                 },
            //                 color: Colors.green,
            //               ),
            //               Text("$jumlahProduk"),
            //               IconButton(
            //                 icon: Icon(Icons.remove),
            //                 onPressed: () {
            //                   setState(() {
            //                     if (jumlahProduk > 0) {
            //                       jumlahProduk--;
            //                     }
            //                   });
            //                 },
            //                 color: Colors.red,
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
