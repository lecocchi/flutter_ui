import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00B4DF),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          width: 340,
          height: 483,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFFF8F8F8),
          ),
          child: Column(
            children: [
              Container(
                width: 115,
                height: 113.7,
                color: Colors.grey,
              ),
              SizedBox(height:23.3),
              Text(
                "¡Bienvenido!",
                style: TextStyle(
                  color: Color(0xFF00B4DF),
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Inicio de sesión",
                style: TextStyle(
                  color: Color(0xFF979797),
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                    hintText: "Usuario",
                    hintStyle:
                        TextStyle(color: Color(0xFF979797), fontSize: 10),
                    border: OutlineInputBorder()),
                //keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  hintText: "Contraseña",
                  hintStyle: TextStyle(color: Color(0xFF979797), fontSize: 10),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 25),
              Container(
                width: 306,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFF00B4DF),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ingresar",
                      style: TextStyle(color: Colors.white,
                      fontSize: 16),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.white,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
