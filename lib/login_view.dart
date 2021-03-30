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
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildWellcome(),
              _buildSession(),
              _buildTextField(labelText: 'Usuario'),
              SizedBox(height: 20),
              _buildTextField(
                labelText: 'Contrasena',
                obscureText: true,
              ),
              _buildButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWellcome() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Text('¡Bienvenido!',
          style: TextStyle(color: Color(0xFF00B4DF), fontSize: 50)),
    );
  }

  Widget _buildSession() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Text(
        'Inicio de sesión',
        style: TextStyle(
          fontSize: 15,
          color: Color(0xFF979797),
        ),
      ),
    );
  }

  Widget _buildTextField(
      {@required String labelText, bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
    );
  }

  Widget _buildButton() {
    return Container(
      margin: EdgeInsets.only(top: 20),
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
    );
  }
}
