import 'package:flutter/material.dart';

class UsedButtons extends StatelessWidget {
  const UsedButtons({
    this.icon,
    this.route,
    Key key,
  }) : super(key: key);
  final Widget route;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
       icon,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
    );
  }

}
