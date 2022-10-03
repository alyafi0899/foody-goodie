import 'package:flutter/material.dart';
import 'package:pesan_makan/food_card.dart';
import 'package:pesan_makan/lever_category_card.dart';
import 'package:pesan_makan/main_menu_card.dart';
import 'package:pesan_makan/theme.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController? _cari;
  @override
  void initState() {
    _cari = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _cari?.dispose();
    super.dispose();
  }

  int distance = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 75,
          backgroundColor: Color.fromARGB(255, 255, 200, 98),
          elevation: 0.0,
          actions: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/food1.png'),
                radius: 25,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 230,
                        child: Text(
                          'Welcome back',
                          style: whiteStyle.copyWith(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          width: 230,
                          child: Text(
                            'Al Yafi',
                            style: whiteStyle.copyWith(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.notifications_outlined,
                        color: Color.fromARGB(255, 153, 48, 0),
                        size: 28,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            )
          ]),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          color: Color.fromARGB(255, 247, 247, 247),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Find good\nFood around you",
                  style: blackStyle.copyWith(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  controller: _cari,
                  keyboardType: TextInputType.text,
                  cursorColor: Color.fromARGB(255, 78, 78, 78),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 77, 77, 77)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: '🔎 Cari',
                    labelStyle: whiteStyle.copyWith(
                        color: Color.fromARGB(255, 65, 65, 65)),
                  ),
                  onSubmitted: (String umur) {},
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Text(
                      "Find the nearest place ",
                      style: blackStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      child: Text(
                        "${distance}Km",
                        style: yellowStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  LevelCategory(
                    title: "favorite",
                    warna: true,
                  ),
                  LevelCategory(
                    title: "favorite",
                    warna: false,
                  ),
                  LevelCategory(
                    title: "favorite",
                    warna: false,
                  ),
                ],
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FoodCards(
                        food_dir: 'assets/food1.png',
                        title: "Telur ceplok",
                        location: "Banda Aceh",
                        rating: "4.5",
                        prices: "4.500",
                      ),
                      FoodCards(
                        food_dir: 'assets/food2.png',
                        title: "Gado-gado",
                        location: "Banda Aceh",
                        rating: "4.5",
                        prices: "10.00",
                      ),
                      FoodCards(
                        food_dir: 'assets/food1.png',
                        title: "Telur ceplok",
                        location: "Banda Aceh",
                        rating: "4.5",
                        prices: "4.500",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Main menu",
                  style: blackStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainMenuCards(
                      title: "Delivery", icon_menu: 'assets/delivery.png'),
                  MainMenuCards(
                      title: "Take Away", icon_menu: 'assets/take_away.png'),
                  MainMenuCards(
                      title: "Booking", icon_menu: 'assets/booking.png'),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 65,
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Text(
                    "Home",
                    style: whiteStyle.copyWith(fontSize: 10),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.list_alt,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Text(
                    "Order",
                    style: whiteStyle.copyWith(fontSize: 10),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_balance_wallet,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Text(
                    "Transaksi",
                    style: whiteStyle.copyWith(fontSize: 10),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
