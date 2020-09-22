import 'package:flutter/material.dart';

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