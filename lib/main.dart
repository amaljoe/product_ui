import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.light(),
    home: MainScreen(),
  ));
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 20,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Our Product',
          style: TextStyle(
              fontFamily: 'BalooTammudu2',
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Choice',
              style: TextStyle(
                fontFamily: 'Baloo Tammudu 2',
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.search), hintText: 'Search Product'),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Top Light',
                          style: TextStyle(
                              fontFamily: 'BalooTammudu2', fontSize: 30)),
                      Text(
                        'Delivery time',
                        style: TextStyle(
                          fontFamily: 'BalooTammudu2',
                          fontSize: 18,
                          color: Colors.black45,
                        ),
                      ),
                      Text('15: 30',
                          style: TextStyle(
                              fontFamily: 'BalooTammudu2', fontSize: 30)),
                      Text(
                        'Our contact',
                        style: TextStyle(
                          fontFamily: 'BalooTammudu2',
                          fontSize: 18,
                          color: Colors.black45,
                        ),
                      ),
                      Text(
                        'Filters',
                        style: TextStyle(
                          fontFamily: 'BalooTammudu2',
                          fontSize: 18,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [Container()],
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
