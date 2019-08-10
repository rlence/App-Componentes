import 'package:flutter/material.dart';

import 'package:componentes/src/provaiders/menu_provaider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';


import 'package:componentes/src/page/alert_page.dart';


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

  //este en el constructor del future de esta manera recojemos los datos
  Widget _list(){

    return FutureBuilder(
      future: menuProvaider.cargarData(),//indicamos de donde viene el future
      //initialData: Text('Loading...'),//informacion por defecto mientras no se resuelva el future
      //con el builder pasamos el context y el asyncSnapshot de lista dinamica ya que es un array
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        
        print('builder');
        print(snapshot.data);

        return ListView(
          //retornamos al clase listView como hijo nuestro componenet a renderizar
          children: _listItems( snapshot.data, context ),
        );

      },
    );

    
  }

  //este es el componente que utilizamos para renderizar todas las propiedades del json
  List<Widget>  _listItems( List<dynamic> data, BuildContext context ) {

    //creamos una varianles que sera un list Widget que sea lo que retornemos
    final List<Widget> opciones = [];

    //hacemos un forEach o .map para recorrer el arreglo o List
    data.forEach( (opt){

      final widgetTemporal = ListTile( //creamos una variable temporal que es igual a una list
        title: Text(opt['texto']),//pasamos la variable que los recorre y indicamos el elemento que se va a imprimir
        leading: getIcon( opt['icon'] ),
        trailing: Icon(Icons.keyboard_arrow_right, color:Colors.blue),
        onTap: (){
          final route = MaterialPageRoute(
            builder: ( context ){

              return AlertPage();

            }
          );
          Navigator.push(context, route);

        }, 
      );
      opciones..add(widgetTemporal) //pasa,ps a las opciones el widget que creamos
              ..add( Divider() ); //pasamos el divaider
    });

    return opciones;

  }

}