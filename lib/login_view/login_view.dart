import 'package:flutter/material.dart';
import 'package:flutter_ui/images_page/images_page.dart';
import 'package:flutter_ui/login_view/widgets/subtitle_widget.dart';
import 'package:flutter_ui/login_view/widgets/title_widget.dart';
import 'package:flutter_ui/widgets/generic_button_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    Key key,
  }) : super(key: key);

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
              TitleWidget(
                titleLabel: 'Bienvenidos',
              ),
              SubtitleWidget(
                label: 'Inicio de sesion',
              ),
              _buildTextField(labelText: 'Usuario'),
              SizedBox(height: 20),
              _buildTextField(
                labelText: 'Contrasena',
                obscureText: true,
              ),
              GenericButtonWidget(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ImagesPage(),
                    )),
                bgColor: Colors.blue,
                label: 'Enviar',
                margin: 20,
                textStyle: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({@required String labelText, bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
    );
  }
}
