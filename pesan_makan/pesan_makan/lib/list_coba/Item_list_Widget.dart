import 'package:flutter/material.dart';
import 'package:pesan_makan/list_coba/list_key.dart';

class ListItemWidget extends StatelessWidget {
  final ListKey item;
  final Animation<double> animation;
  final VoidCallback? onClicked;

  const ListItemWidget({
    required this.item,
    required this.animation,
    this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizeTransition(
        sizeFactor: animation,
        child: buildItem(),
      );

  Widget buildItem() => Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Container(
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            // boxShadow: [
            //   BoxShadow(
            //     color: Color(0xFFBDBDBD),
            //     spreadRadius: 0.0001,
            //     blurRadius: 10,
            //     offset: Offset(5, 5), // changes position of shadow
            //   ),
            // ],
          ),
          child: Container(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.date_range_rounded,
                            size: 40,
                            color: Colors.purple,
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Text(
                            "At",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            item.kuantitas + "         ",
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            item.makanan,
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // 1
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
              // 2
              constraints: const BoxConstraints.expand(
                width: 350,
                height: 165,
              ),
              // 3
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFBDBDBD),
                    spreadRadius: 0.0001,
                    blurRadius: 10,
                    offset: Offset(5, 5), // changes position of shadow
                  ),
                ],
                // gradient: LinearGradient(
                //   colors: [const Color(0xFFBBDEFB), Colors.white],
                //   begin: FractionalOffset.bottomLeft,
                //   end: FractionalOffset.topRight,
                //   stops: [0.0, 1.0],
                //   tileMode: TileMode.clamp,
                //),
              ),
            ),
          ),
        ),
      );
}
