import 'package:flutter/material.dart';
import 'package:insurance_app/widgets/dumb_widgets/texts.dart';

class CardHolder extends StatelessWidget {
  const CardHolder({
    @required this.assetName,
    @required this.text,
    @required this.height,
    @required this.width,
    this.radius,
    Key key,
  }) : super(key: key);
  final double radius;
  final double height;
  final double width;
  final String text;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
          child: Column(
            children: [
              Row(
                children: [
                  paddingMethod(text: text),
                  const Spacer(),
                  arrowButton(),
                ],
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage(
                        assetName,
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius.toDouble()))),
      height: height,
      width: width,
    );
  }

  IconButton arrowButton() {
    return IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_forward_ios),
        enableFeedback: false);
  }
}

Padding paddingMethod({String text}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CustomText(
      text: text,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}
