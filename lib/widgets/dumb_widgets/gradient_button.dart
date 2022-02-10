import 'package:flutter/material.dart';
import 'package:insurance_app/widgets/dumb_widgets/texts.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height:65,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 17, 0, 56),
            Color.fromARGB(255, 89, 0, 191),
            Color.fromARGB(255, 101, 2, 214),
            Color.fromARGB(255, 147, 53, 255),
            Color.fromARGB(255, 170, 106, 243),
          ])),
      child: ElevatedButton(
        onPressed: () {},
        child: const CustomText(text: "Poliçelerimi Görüntüle",fontSize: 20,color: Colors.white,fontWeight: FontWeight.w400),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Colors.transparent),
          enableFeedback: false,
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}