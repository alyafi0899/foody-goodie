import 'package:flutter/material.dart';
import 'package:pesan_makan/theme.dart';

class MainMenuCards extends StatelessWidget {
  MainMenuCards({Key? key, this.icon_menu, this.title}) : super(key: key);
  String? icon_menu;
  String? title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(10),
        width: 110,
        margin: EdgeInsets.fromLTRB(2, 5, 2, 20),
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
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('${icon_menu}'), fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Text(
                '${title}',
                style: blackStyle.copyWith(
                    fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
