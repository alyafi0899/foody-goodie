import 'package:flutter/material.dart';
import 'package:pesan_makan/theme.dart';

class FoodCards extends StatefulWidget {
  FoodCards(
      {Key? key,
      this.location,
      this.prices,
      this.rating,
      this.title,
      this.food_dir})
      : super(key: key);
  String? food_dir;
  String? title;
  String? location;
  String? prices;
  String? rating;
  @override
  State<FoodCards> createState() => _FoodCardsState();
}

class _FoodCardsState extends State<FoodCards> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 5, 0, 20),
        width: 180,
        margin: EdgeInsets.fromLTRB(5, 20, 20, 20),
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
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: 20,
                  color: Colors.black26,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('${widget.food_dir}'),
                    fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "${widget.title}",
                style: blackStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Rp. ${widget.prices}",
                style: blackStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
