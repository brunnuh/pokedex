import 'package:flutter/material.dart';

class TypeView extends StatelessWidget {
  Color color;
  String type;
  String name;

  TypeView({this.type, this.name, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: Center(
          child: Text(
        "$name is of the $type type",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      )),
    );
  }
}
