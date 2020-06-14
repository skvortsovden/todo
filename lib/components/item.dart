import 'package:flutter/material.dart';
import 'package:todo/services/item_service.dart';

class Item extends StatefulWidget {
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {

  final itemController = TextEditingController();
  final itemService = ItemService();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'enter item name'
        ),
      ),
      
    );
  }
}