import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
        ],
      ),
    );

  }

  Widget _cardTipo1() {

    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.turned_in, color: Colors.blue,),
              title: Text('titull de targeta'),
              subtitle: Text('aqui practicando flutter con el curso, aprendiendo de los componentes o clases'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton( 
                child: Text('Ok'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );

  }


}