import 'package:flutter/material.dart';

import 'components/contact_button.dart';
import 'components/filter_button.dart';
import 'components/item_card.dart';

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
        title: Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            'Our Product',
            style: TextStyle(
                fontFamily: 'BalooTammudu2',
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          )
        ],
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Your Choice',
              style: TextStyle(
                fontFamily: 'BalooTammudu2',
                fontSize: 36,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Icon(Icons.search),
                  ),
                  hintText: 'Search Product',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'BalooTammudu2',
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                fontFamily: 'BalooTammudu2',
                                fontWeight: FontWeight.w700,
                                fontSize: 22)),
                        Text(
                          'Our contact',
                          style: TextStyle(
                            fontFamily: 'BalooTammudu2',
                            fontSize: 18,
                            color: Colors.black45,
                          ),
                        ),
                        Row(
                          children: [
                            ContactButton(
                              color: Colors.teal,
                              icon: Icons.phone,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ContactButton(
                              color: Colors.orange,
                              icon: Icons.location_on,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Filters',
                          style: TextStyle(
                            fontFamily: 'BalooTammudu2',
                            fontSize: 18,
                            color: Colors.black45,
                          ),
                        ),
                        FilterButton(
                            color: Colors.blue,
                            icon: Icons.cloud,
                            text: 'cold'),
                        SizedBox(
                          height: 20,
                        ),
                        FilterButton(
                          color: Colors.orange,
                          icon: Icons.wb_sunny,
                          text: 'warm',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFF6E9),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(30))),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            ItemCard(
                              imagePath: 'images/bulb1.png',
                            ),
                            ItemCard(
                              imagePath: 'images/bulb2.png',
                            ),
                            ItemCard(
                              imagePath: 'images/bulb1.png',
                            ),
                            ItemCard(
                              imagePath: 'images/bulb2.png',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
