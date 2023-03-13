import 'package:dam_u2_practica1/practica1.dart';
import 'package:flutter/material.dart';

class Practica1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Practica1();
  }
}
class _Practica1 extends State<Practica1>{
  final nombre = TextEditingController();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplicacion 5"),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Por favor, registrate")));
          }, icon: Icon(Icons.account_circle_sharp))
        ],
      ),
      body: Column(
        children: [
          Image.asset('LogoTec.png', width: 300, height: 300,),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(decoration: InputDecoration(labelText: "Nombre(s)")),
          ),Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(decoration: InputDecoration(labelText: "Apellidos"),),
          ), Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(decoration: InputDecoration(labelText: "Número de control"),
              keyboardType: TextInputType.number,)
          ),Container(
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              width: MediaQuery.of(context).size.width - 100,
              child: ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registrado con exito")));
              }, style: TextButton.styleFrom(backgroundColor: Colors.orange), child: Text("Enviar"),)
          )

        ]
      ),
    );
  }
}