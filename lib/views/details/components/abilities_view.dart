import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AbilitiesView extends StatelessWidget {
  List<String> abilities;

  AbilitiesView({this.abilities});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 100),
        itemCount: abilities.length,
        itemBuilder: (_, index) {
          return ListTile(
            leading: Icon(
              Icons.stacked_line_chart,
              color: index % 2 == 0 ? Colors.white : Colors.amber,
            ),
            title: Text(
              abilities[index],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
        separatorBuilder: (_, index) {
          return Divider(
            color: Colors.white,
          );
        },
      ),
    );
  }
}
