import 'package:flutter/material.dart';

Padding avatarMethod() {
  return Padding(
     padding: const EdgeInsets.all(12.0),
    child: Center(
      child: CircleAvatar(
        radius: 50,
        backgroundColor: const Color.fromARGB(255, 29, 0, 87),
        child: Image.asset("assets/profilep.jpeg"),
      ),
    ),
  );
}
