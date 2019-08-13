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
          SizedBox(height: 30.0,),
          _cardTipo2()
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

  Widget  _cardTipo2() {

    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
          
            image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover, //sirve para indicar el espacio que tiene que ocupar la imagen
          ),
         
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('prubea de la imagen  y el texto en una Card'),
          )
        ],
      ),
    );

  }


}