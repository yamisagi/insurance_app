import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_app/views/insurance/insurance_view.dart';
import 'package:insurance_app/widgets/dumb_widgets/appbar.dart';
import 'package:insurance_app/widgets/dumb_widgets/settings_utils.dart';


void main() => runApp(const SettingsPage());

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBarWidget(
            title: Center(
              child: Text(
                "Ayarlar",
                textScaleFactor: 1.2,
                textWidthBasis: TextWidthBasis.parent,
                style: GoogleFonts.oswald(color: Colors.black),
              ),
            ),
            route: const InsuranceView(),
            color: Colors.white,
            icon: Icons.arrow_back_ios,
          ),
          body: const SafeArea(
            child: SettingsView(),
          )),
    );
  }

 
}

