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
      body: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Choice',
              style: TextStyle(
                fontFamily: 'BalooTammudu2',
                fontSize: 30,
                fontWeight: FontWeight.w300,
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
              height: 50,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
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
                                    fontFamily: 'BalooTammudu2', fontSize: 30)),
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
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFFFF6E9),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50))),
                        child: Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child: Column(
                            children: [
                              ItemCard(),
                              ItemCard(),
                            ],
                          ),
                        ),
                      ),
                    ],
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

class ContactButton extends StatelessWidget {
  final Color color;
  final IconData icon;

  ContactButton({@required this.icon, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(20))),
      child: IconButton(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFFFDFB0),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        width: 150,
        height: 150,
      ),
    );
  }
}
