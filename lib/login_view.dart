import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF009ABE),
      body: Center(
        child: Container(
          width: 340,
          height: 483,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text('¡Bienvenido!',
                    style: TextStyle(color: Color(0xFF00B4DF), fontSize: 50)),
              ),
              SizedBox(height: 20),
              Text('Inicio de sesión',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF979797),
                  )),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: FlatButton(
                  //cuando es presionado, llama a un metodo
                  onPressed: () {},
                  child: Text(
                    'Ingresar',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color(0xFF00B4DF),
                  highlightColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
