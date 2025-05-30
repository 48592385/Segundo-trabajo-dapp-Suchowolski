import 'package:flutter/material.dart';
import 'package:login/core/Class.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';

  final Usuario usuario;

   const HomeScreen({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tus datos')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Bienvenido/a ${usuario.name}',style: TextStyle(fontSize: 30)),
          SizedBox(height: 40,),
          Text('Dirección: ${usuario.direccion}',style: TextStyle(fontSize: 30),),
           SizedBox(height: 20,),
          Text('Edad: ${usuario.edad}',style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}