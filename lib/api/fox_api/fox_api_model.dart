import 'package:flutter/foundation.dart';

///ESTA CLASE VA A TENER COMO OBJETIVO REPLICAR LOS DATOS DEL JSON
///QUE BUSCAMOS DE INTERNET, ENTONCES TIENE QUE TENER LOS MISMOS CAMPOS

class FoxApiModel {
  FoxApiModel({
    @required this.image,
  });

  final String image;

  ///ESTE METODO LO CREAMOS, PARA CUANDO LLEGUE EL JSON, ESA INFORMACION
  ///QUE LLEGA EN FORMA DE JSON, LO TRANSFORMEMOS A UNA CLASE, QUE PUEDA
  ///LEER FLUTTER
  static FoxApiModel fromJson(Map<String, dynamic> json) {
    return FoxApiModel(
      image: json['image'],
    );
  }
}
