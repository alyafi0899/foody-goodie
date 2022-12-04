import 'package:flutter/material.dart';
import 'package:pesan_makan/theme.dart';

int total = 0;

class OrderFoodCards extends StatefulWidget {
  OrderFoodCards({
    Key? key,
    this.location,
    this.prices,
    this.rating,
    this.title,
    this.food_dir,
    this.navigate,
  }) : super(key: key);
  String? food_dir;
  String? title;
  String? location;
  int? prices;
  String? rating;
  String? navigate;
  @override
  State<OrderFoodCards> createState() => _OrderFoodCardsState();
}

class _OrderFoodCardsState extends State<OrderFoodCards> {
  int jumlah = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(10),
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
      child: Row(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('${widget.food_dir}'), fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Column(
            children: [
              Container(
                width: 230,
                alignment: Alignment.centerLeft,
                child: Text(
                  "${widget.title}",
                  style: blackStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 230,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.location}",
                      style: blackStyle.copyWith(fontSize: 12),
                    ),
                    Text(
                      "${widget.rating} ⭐",
                      style: blackStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 230,
                child: Text(
                  "Rp. ${widget.prices}",
                  style: blackStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 230,
                child: Row(
                  children: [
                    Text("Jumlah Pesanan : "),
                    InkWell(
                      child: Container(
                        width: 40,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 255, 195, 195),
                              blurStyle: BlurStyle.normal,
                              spreadRadius: 0.0001,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text("-"),
                      ),
                      onTap: () => setState(
                        () {
                          total = widget.prices! * jumlah;
                          jumlah--;
                        },
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text("$jumlah"),
                    ),
                    InkWell(
                      child: Container(
                        width: 40,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 255, 195, 195),
                              blurStyle: BlurStyle.normal,
                              spreadRadius: 0.0001,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text("+"),
                      ),
                      onTap: () => setState(
                        () {
                          total = widget.prices! * jumlah;
                          jumlah++;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 150,
                height: 30,
                alignment: Alignment.centerLeft,
                child: Text("Sub Total : $total"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
