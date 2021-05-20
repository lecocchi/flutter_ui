import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_ui/api/fox_api/fox_api_model.dart';

class FoxApi {
  final _dio = Dio();
  final _url = 'https://randomfox.ca/floof/';

  Future<FoxApiModel> getFoxImage() async {
    ///EL METODO getFoxImage() VA A TENER COMO RESPONSABILIDAD
    ///TRAER IMAGENES DE INTERNET
    ///
    ///¿POR QUE ES UN FUTURE? --> NECESITO QUE SEA UNA FUNCION ASINCRONA,
    ///YA QUE LA INFORMACION SE TRAE DESDE INTERNET Y PUEDE TARDAR

    final response = await _dio.get(_url);

    ///CREAMOS UNA VARIABLE RESPONSE, Y USAMOS LA INSTANCIA DEL
    ///PACKAGE DIO(QUE ES UN PAQUETE QUE SIRVE PARA HACER PETICIONES POR INTERNET,
    ///POR EJEMPLO POST, O GET)

    ///SI LA RESPUESTA A LA URL QUE LE PASAMOS ES CORRECTA, ENTONCES DEVOLVEMOS LA DATA
    ///EL CODIGO 200 ES EXITOSO, AL CONTRARIO DE 404(POR EJEMPLO )
    if (response.statusCode == 200) {
      return FoxApiModel.fromJson(response.data);
    } else {
      return null;
    }
  }
}
