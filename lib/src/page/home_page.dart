import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Component View List'),
      ) ,
      body: _list(),
    );
  }


  Widget _list(){

    return ListView(
      children: _listItems(),
    );
  }


  List<Widget>  _listItems() {

    return[
      ListTile(title: Text('HOLA') ),
      ListTile(title: Text('HOLA') ),
      ListTile(title: Text('HOLA') ),
    ];

  }

}