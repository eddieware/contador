import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

final estiloTexto = new TextStyle(fontSize: 25);


@override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      title: Text('Título'),
      centerTitle: true,
      elevation: 20,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Text('Numero de Clicks!!!! ', style: estiloTexto),
            Text('0',style: estiloTexto)
              ],
            )
      // la mayoria de los Widgets solo pueden tener un child
      ),
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),

        onPressed: () {
          print('Hola Mundo!');
        }, //:null,// hace disable el boton

      ),
  );
}

}