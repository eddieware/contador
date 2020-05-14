import 'package:flutter/material.dart';
//EJEMPLO DE STATUEFUL WIDGET


class ContadorPage extends StatefulWidget{

 
//EL OVERRIDE es porque el statueful 
//widget tiene un aimplementacion interna 
//del createstate por ende se sobreescribe
@override 
createState()=> _ContadorPageState();
  //necesita retornar una nueva instancia _ContadorPageState();
  

}

class _ContadorPageState extends State<ContadorPage>{ 
  // para hacer privado y utilizar solo en este archivo
final _estiloTexto = new TextStyle(fontSize: 25);

int _conteo =0;

@override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      title: Text('Stateful'),
      centerTitle: true,
      elevation: 20,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Text('Numero de Taps!!!! ', style: _estiloTexto),
            Text('$_conteo',style: _estiloTexto) //$ interpolacion string
              ],
            )
      // la mayoria de los Widgets solo pueden tener un child
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),

        onPressed: () {
          //print('Hola Mundo!!!!!');
          

          //codigo para la renderizacion de la pantalla
          setState(()//parentesis para recibir funcion 
          {
            _conteo++;
          }//cuerpo de la funcion anonima
          );


        }, //:null,// hace disable el boton

      ),
  );
}


}