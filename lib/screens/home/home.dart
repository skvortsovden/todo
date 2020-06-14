import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/components/item.dart';
import 'package:todo/components/item_background.dart';
import 'package:todo/models/item_model.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {

  List <ItemModel> itemsTodo = [];
  
  addItem(ItemModel item){
    itemsTodo.add(item);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      
      appBar: AppBar(
        centerTitle: true,
        title: Text('ToDo'),
        backgroundColor: Colors.teal,
      ),

      body: ListView.builder(
        itemCount: itemsTodo.length,
        itemBuilder: (context, index){

          return Dismissible(
            key: UniqueKey(), 
            child: Item(),
            background: ItemBackground(
              Colors.green, 
              Icon(Icons.done), 
              Alignment.centerLeft),

            secondaryBackground: ItemBackground(
              Colors.red, 
              Icon(Icons.delete), 
              Alignment.centerRight
            ),

            onDismissed: (direction){
              if(direction == DismissDirection.endToStart){
                print("remove");
                setState(() {
                  itemsTodo.removeAt(index);
                });
              } else
              if (direction == DismissDirection.startToEnd){
                print("done");
                setState(() {
                  itemsTodo.add(itemsTodo[index]);
                  itemsTodo.removeAt(index);
                });
              }
            },
            );
      }),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 36.0,
        ),
        onPressed: null,
      ),
      
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 50.0,
        ),
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    
    );
  }
}
