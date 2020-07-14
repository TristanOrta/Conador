import 'package:flutter/material.dart';

class ContadorPages extends StatefulWidget{

@override
  createState() => ContadorPagesState();
  
}

class ContadorPagesState extends State <ContadorPages> {
 

final  estiloTexto = new TextStyle (fontSize: 25);
int conteo = 10;

@override
Widget build(BuildContext context) {

  return Scaffold(

    appBar: AppBar(

      title: Text('Titulo'),
      centerTitle: true,

      

    ),
      body: Center(
      child: Column(  
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text('Numero de Cliclks: ',style: estiloTexto, ),
        Text('$conteo',style:  estiloTexto,),
        
      ],)
            

  ),

    floatingActionButton: _crearBotones(),

     
  );

}

Widget _crearBotones(){
  
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      
      SizedBox(width: 30),
      FloatingActionButton (child: Icon(Icons.add), onPressed: _agregar),
      

      Expanded(child: SizedBox(width: 30.0)),
     FloatingActionButton (child: Icon(Icons.exposure_zero), onPressed: _reset),
      

      SizedBox(width: 5.0),
      Expanded(child: SizedBox(width: 30.0)),
      
      FloatingActionButton (child: Icon(Icons.remove), onPressed: _susraer),

    ],

  );
   
   


}

 void _agregar(){
  
      setState(() => conteo++);

   }

 void _susraer(){
  
      setState(() => conteo--);

   }

 void _reset(){
  
      setState(() => conteo = 0);

   }

}