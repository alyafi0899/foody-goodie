import 'package:flutter/material.dart';
import 'package:pesan_makan/food_card.dart';
import 'package:pesan_makan/food_order_card.dart';
import 'package:pesan_makan/lever_category_card.dart';
import 'package:pesan_makan/main_menu_card.dart';
import 'package:pesan_makan/theme.dart';
import 'package:pesan_makan/widget/total_harga.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreOrder extends StatefulWidget {
  PreOrder({Key? key}) : super(key: key);

  @override
  State<PreOrder> createState() => _PreOrderState();
}

class _PreOrderState extends State<PreOrder> {
  SharedPreferences? preferences;
  TextEditingController? _cari;

  @override
  void initState() {
    _cari = TextEditingController();
    super.initState();
    init();
  }

  Future init() async {
    preferences = await SharedPreferences?.getInstance();
    setState(() {});
  }

  @override
  void dispose() {
    _cari?.dispose();
    super.dispose();
  }

  int distance = 5;
  bool warna = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 200, 98),
        elevation: 0.0,
        title: Text('List order'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OrderFoodCards(
              food_dir: 'assets/food2.png',
              title: "Gado-gado",
              location: "haji soleh ",
              rating: "4.5",
              prices: 10000,
              navigate: 'preorder',
            ),
          ],
        ),
      ),
      bottomNavigationBar: TotalHarga(total: total),
    );
  }
}
