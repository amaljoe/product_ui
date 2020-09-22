import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String imagePath;
  ItemCard({@required this.imagePath});
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
        child: Image.asset(imagePath),
      ),
    );
  }
}
