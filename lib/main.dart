import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  void main() => runApp(MainPage());

class MainPage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}
  // This widget is the root of your application.
class _MainpageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    Center(),
    Scaffold(
      body: Column(
          children: <Widget>[
            Image.asset('assets/images/Bank.png',
                fit: BoxFit.contain
            ),
            Text('Bank With It',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                )),
            const SizedBox(height: 14),
            Text(
                ' Access banking features like direct \ndeposit, ATM withdrawals, and more',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,

                )),
            const SizedBox(height: 65,),
           SizedBox(
              width: 350,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),),
            child: Text(
              'Get Free Cash Card',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.0
              )),
            )
            )
          ]
      ),
    ),
  Center(),
  Center(),
  Center(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              title: Text(
                'Cash Card',
                style: TextStyle(
                  color: Colors.black,
                ),),
              actions: [
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black,
                    size: 40,
                  ),),
              ],
            ),
            body: screens[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              elevation: 0.0,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black,
              currentIndex: currentIndex,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (index) => setState(() => currentIndex = index),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.branding_watermark_outlined),
                title: Text('home')),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_atm_outlined),
                    title: Text('atm')),
                BottomNavigationBarItem(
                  icon: Icon(Icons.attach_money),
                    title: Text('money')),
                BottomNavigationBarItem(
                  icon: Icon(Icons.restore_rounded,),
                    title: Text('restore')),
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_time),
                    title: Text('access')),
              ],
            )
        )
    );
  }

}
    // body: Column(

