import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  void main() => runApp(MyApp());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
              children: <Widget>[
            const SizedBox(height: 10,),
            Image.asset('assets/images/Bank.png',
                fit: BoxFit.contain
            ),
            Text('Bank With It',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                )),
            const SizedBox(height: 15),
            Text(
                ' Access banking features like direct \ndeposit, ATM withdrawals, and more',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  letterSpacing: 0.5,
                )),
            Icon(Icons.settings);
            ]
        )
    )
    );
  }
}