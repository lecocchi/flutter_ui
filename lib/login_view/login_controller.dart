class LoginController {
  void validateUserAndPassword(String user, String password) {
    if (user == 'Leandro' && password == '123') {
      print('Ingreso valido');
    } else {
      print('Ingreso no valido');
    }
  }
}
