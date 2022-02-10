import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_app/views/insurance/insurance_view.dart';
import 'package:insurance_app/widgets/dumb_widgets/appbar.dart';

import 'package:insurance_app/widgets/dumb_widgets/get_listview_elements.dart';


void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBarWidget(
          icon: Icons.arrow_back_ios,
          color: Colors.grey.shade200,
          route: const InsuranceView(),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.grey.shade200,
                Colors.grey.shade300,
                Colors.grey.shade400,
                Colors.grey.shade500,
                Colors.grey.shade600,
                Colors.grey.shade700,
                Colors.grey.shade800,
                Colors.grey.shade900,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.grey.shade100,
                        blurRadius: 10.0,
                        spreadRadius: 1.0,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                      )
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Center(
                    child: Text(
                      "Sigorta Ürünleri",
                      style: GoogleFonts.pacifico(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                    padding: const EdgeInsets.all(10), children: elements),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
