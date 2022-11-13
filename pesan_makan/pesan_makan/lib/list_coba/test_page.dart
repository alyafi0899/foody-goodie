import 'package:flutter/material.dart';
import 'package:pesan_makan/list_coba/Item_list_Widget.dart';
import 'package:pesan_makan/list_coba/list_key.dart';

import 'list_item.dart';

class TestPage extends StatefulWidget {
  TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final List<ListKey> items = List.from(listItems);
  GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Notification"),
        centerTitle: true,
      ),
      body: AnimatedList(
        key: listKey,
        initialItemCount: items.length,
        itemBuilder: (context, index, animation) => ListItemWidget(
          item: items[index],
          animation: animation,
          onClicked: () => removedItem(index),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
          onPressed: () => {Navigator.pushNamed(context, '/main')},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.check,
                size: 40,
              ),
              Text(
                "Changes Saved",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void removedItem(int index) {
    final removedItem = items[index];
    items.removeAt(index);
    listKey.currentState!.removeItem(
      index,
      (context, animation) => ListItemWidget(
        item: removedItem,
        animation: animation,
        onClicked: () {},
      ),
      duration: const Duration(microseconds: 600),
    );
  }
}
