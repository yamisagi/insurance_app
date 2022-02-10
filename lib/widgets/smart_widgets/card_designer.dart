import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

FlipCard cardDesigner(
    {@required List<Color> listOfColors,
    String message,
    double height = 150,
    double width = 350,
    @required String text}) {
  return FlipCard(
    front: Container(
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.oswald(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: listOfColors)),
    ),
    back: Container(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: SingleChildScrollView(
                physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                child: Text(
                  message,
                  style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              )),
            ),
          ),
        ],
      ),
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: listOfColors.reversed.toList())),
    ),
  );
}
