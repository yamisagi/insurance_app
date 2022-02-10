// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_app/views/home/home_page.dart';
import 'package:insurance_app/widgets/dumb_widgets/appbar.dart';
import 'package:insurance_app/widgets/dumb_widgets/dumb_avatar_method.dart';
import 'package:insurance_app/widgets/dumb_widgets/card_holder.dart';
import 'package:insurance_app/widgets/dumb_widgets/gradient_button.dart';
import 'package:insurance_app/widgets/dumb_widgets/texts.dart';
import 'package:stacked/stacked.dart';
import 'insurance_view_model.dart';

class InsuranceView extends StatefulWidget {
  const InsuranceView({Key key}) : super(key: key);

  @override
  State<InsuranceView> createState() => _InsuranceViewState();
}

class _InsuranceViewState extends State<InsuranceView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<InsuranceViewModel>.reactive(
      builder: (BuildContext context, InsuranceViewModel viewModel, Widget _) {
        return Scaffold(
            appBar: AppBarWidget(
              icon: Icons.info,
              route: HomePage(),
              color: Colors.white,
            ),
            body: SafeArea(
              child: Column(
                children: [
                  avatarMethod(),
                  Text("Eren",
                      style: GoogleFonts.pacifico(
                          letterSpacing: 3,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  SizedBox(height: 5),
                  CustomText(
                    text: "Kayseri,Türkiye",
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 10),
                  CustomText(
                      text: "email@email.com",
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                  SizedBox(height: 30),
                  CardHolder(
                    assetName: "assets/circ.png",
                    text: "Hesabım",
                    radius: 20.0,
                    height: 200,
                    width: 300,
                  ),
                  CardHolder(
                    assetName: "assets/bar.png",
                    text: "Ödemeler",
                    radius: 20.0,
                    height: 135,
                    width: 300,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GradientButton(),
                ],
              ),
            ));
      },
      viewModelBuilder: () => InsuranceViewModel(),
    );
  }
}
