import 'package:flutter/material.dart';
import 'package:pesan_makan/theme.dart';

class LevelCategory extends StatefulWidget {
  LevelCategory({Key? key, this.title, this.warna}) : super(key: key);
  String? title;
  bool? warna;
  @override
  State<LevelCategory> createState() => _LevelCategoryState();
}

class _LevelCategoryState extends State<LevelCategory> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 30,
        width: 100,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: widget.warna == true ? Colors.amber[400] : Colors.black38,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            '${widget.title}',
            style: widget.warna == true ? whiteStyle : blackStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
