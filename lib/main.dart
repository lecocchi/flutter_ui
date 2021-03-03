import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blueAccent,
            ),
            Column(
              children: [
                Weather(),
                Spacer(),
                Buttons(),
                Search(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style = TextStyle(color: Colors.white, fontSize: 25);

    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Column(
        children: <Widget>[
          Text(
            '01:52',
            style: style,
          ),
          Text(
            'Wednesday, Aug 26',
            style: style,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.cloud,
                size: 30,
                color: Colors.white,
              ),
              Text(
                '26 C',
                style: style,
              )
            ],
          )
        ],
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.account_balance_rounded),
                  Icon(Icons.account_balance_rounded),
                  Icon(Icons.account_balance_rounded),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.account_balance_rounded),
                  Icon(Icons.account_balance_rounded),
                  Icon(Icons.account_balance_rounded),
                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.account_balance_rounded),
                  Icon(Icons.account_balance_rounded),
                  Icon(Icons.account_balance_rounded),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.account_balance_rounded),
                  Icon(Icons.account_balance_rounded),
                  Icon(Icons.account_balance_rounded),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.search,
          )),
    );
  }
}
