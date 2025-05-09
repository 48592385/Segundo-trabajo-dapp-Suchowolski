import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController controladorUsuario = TextEditingController();
  TextEditingController controladorContrasena = TextEditingController();
  String usuarioCorrecto = 'Pancho';
  String contrasenaCorrecta = 'Papas23';
  String mensaje = '';
  Color colorMensaje = Colors.black;
 


  void login (){
   String usuario =  controladorUsuario.text;
   String contrasena =  controladorContrasena.text;
      
 setState(() {
   
 
if(usuario == usuarioCorrecto && contrasena == contrasenaCorrecta){
 mensaje = 'Ya has iniciado sesion';
  colorMensaje = Colors.green;
  
}
else{
mensaje ='Tu usuario o contraseña esta mal';
colorMensaje = Colors.red;
  }
if (usuario.isEmpty|| contrasena.isEmpty){
 mensaje ='te falta completar alguna casilla';
 colorMensaje = Colors.red;
  }
  });
  }


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Bienvenido usuario',style: TextStyle(fontSize:40)),
          SizedBox(height: 60,),
        TextField(controller: controladorUsuario,
              decoration: InputDecoration(
                labelText: 'Usuario',)
        ),
        SizedBox(height: 40,),
        TextField(controller: controladorContrasena,
              decoration: InputDecoration(
                labelText: 'Contraseña',)
        ),
        ElevatedButton
        (onPressed: login, 
        child: Text('inicia sesion')),
      
      SizedBox(height: 20),
                Text(
                  mensaje,
                  style: TextStyle(color: colorMensaje , fontSize: 16),
                )
      ],
        ),
        ),
      ),
    );
  }
}
