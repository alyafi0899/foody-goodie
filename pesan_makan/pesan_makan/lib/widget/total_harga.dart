import 'package:flutter/material.dart';
import 'package:pesan_makan/theme.dart';

class TotalHarga extends StatefulWidget {
  TotalHarga({Key? key, this.total}) : super(key: key);
  int? total;
  @override
  State<TotalHarga> createState() => _TotalHargaState();
}

class _TotalHargaState extends State<TotalHarga> {
  int jumlah = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 255, 195, 195),
            blurStyle: BlurStyle.normal,
            spreadRadius: 0.0001,
            blurRadius: 5,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                child: Text(
                  "Total Harga : ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 100,
                child: Text(
                  "Rp. ${widget.total}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            width: 300,
            child: ElevatedButton(
              child: Text("Selesaikan Pemesanan"),
              onPressed: () {
                Navigator.pushNamed(context, '/testing');
              },
            ),
          ),
        ],
      ),
    );
  }
}
