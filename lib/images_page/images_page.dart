import 'package:flutter/material.dart';
import 'package:flutter_ui/api/fox_api/fox_api.dart';
import 'package:flutter_ui/api/fox_api/fox_api_model.dart';

class ImagesPage extends StatefulWidget {
  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    final foxApi = FoxApi(); //Creo una nueva instancia de la clase (entrar a la clase)

    return Scaffold(
      appBar: AppBar(
        title: Text('Images page'),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          setState(() {
            foxApi.getFoxImage();
            //LO QUE HACEMOS ACA ES LLAMAR A LA FUNCION QUE TRAE IMAGENES
            //AL PRESIONAR EL BOTON
          });
        },
        child: Text('Recargar'),
      ),
      body: FutureBuilder(
        ///INVESTIGAR QUE HACE UN FUTUREBUILDER :D
        future: foxApi.getFoxImage(),
        builder: (_, AsyncSnapshot<FoxApiModel> snapshot) => Center(
          ///ACA EL BUILDER, TIENE 2 PARAMETROS, BUILDCONTEXT, Y ASYNCSNAPSHOT, AL CUAL
          ///LE ESPECIFICAMOS EL TIPO ---> FOXAPIMODEL
          ///EL SNAPSHOT VA A TENER LA INFORMACION QUE DEVUELVA LA FUNCION
          child: Column(
            children: [
              if (snapshot.data.image != null)
                //SI LA DATA NO ES NULA MOSTRAMOS
                //EL CONTAINER CON LA IMAGEN DENTRO
                Container(
                  child: Image.network(snapshot?.data?.image),
                  width: 500,
                  height: 300,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
