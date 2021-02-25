import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Image(
                  image: NetworkImage(
                "https://i.pinimg.com/736x/68/57/af/6857af10d5b9933486dc97602878da13.jpg",
              )),
              Column(
                children: [
                  Text("01:52",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  Text("Wednesday, Aug 26",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(
                      Icons.cloud,
                      color: Colors.white,
                    ),
                    Text("26°C",
                        style: TextStyle(fontSize: 18, color: Colors.white))
                  ]),
                  SizedBox(
                    height: 410,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(Icons.camera, color: Color(0xFF04d9ff)),
                    Icon(Icons.terrain_rounded, color: Color(0xFF04d9ff)),
                    Icon(Icons.sentiment_very_dissatisfied_rounded,
                        color: Color(0xFF04d9ff)),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(Icons.square_foot, color: Color(0xFF04d9ff)),
                    Icon(Icons.sentiment_satisfied_alt_rounded,
                        color: Color(0xFF04d9ff)),
                    Icon(Icons.chat, color: Color(0xFF04d9ff)),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(Icons.phone, color: Color(0xFF04d9ff)),
                    Icon(Icons.mail, color: Color(0xFF04d9ff)),
                    Icon(Icons.play_circle_fill, color: Color(0xFF04d9ff)),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(Icons.photo_album, color: Color(0xFF04d9ff)),
                    Icon(Icons.monochrome_photos, color: Color(0xFF04d9ff)),
                    Icon(Icons.settings, color: Color(0xFF04d9ff)),
                  ]),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    width: 250,
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.search, color: Color(0xFF04d9ff))),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        color: Colors.grey.shade900),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
