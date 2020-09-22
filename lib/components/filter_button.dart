import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  FilterButton(
      {@required this.color, @required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 120,
        padding: EdgeInsets.only(top: 6, right: 20, left: 20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'BalooTammudu2',
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
