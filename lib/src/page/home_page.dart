import 'package:componentes/src/provaiders/menu_provaider.dart';
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

    return FutureBuilder(
      future: menuProvaider.cargarData(),
      //initialData: Text('Loading...'),//informacion por defecto mientras no se resuelva el future
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        
        print('builder');
        print(snapshot.data);

        return ListView(
          children: _listItems( snapshot.data ),
        );

      },
    );

    
  }


  List<Widget>  _listItems( List<dynamic> data ) {

    final List<Widget> opciones = [];

    data.forEach( (opt){

      final widgetTemporal = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.account_circle, color: Colors.blue),
        trailing: Icon(Icons.keyboard_arrow_right, color:Colors.blue),
        onTap: (){}, 
      );
      opciones..add(widgetTemporal)
              ..add( Divider() );
    });

    return opciones;

  }

}