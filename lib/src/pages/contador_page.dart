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
      floatingActionButton: _crearBotones()
  );
}


Widget _crearBotones(){

  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      SizedBox(width: 30),
      FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
      Expanded(child: SizedBox()),
      FloatingActionButton(child: Icon(Icons.remove),onPressed: _sustraer),
      SizedBox(width: 5.0),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar ) // no lleva parenteisis la funcion ya que si no se ejecutaria en el momento en el eque se crea

      ],
  );
}
void _agregar(){
  _conteo++;
  setState(()=> _conteo );
}

void _sustraer(){
_conteo--;
  setState(()=> _conteo );

}

void _reset(){
  _conteo=0;
  setState(()=> _conteo);
}
}