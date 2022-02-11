import 'package:flutter/material.dart';
import 'package:insurance_app/widgets/dumb_widgets/texts.dart';

class CardHolder extends StatelessWidget {
  const CardHolder({
    this.iconName,
    this.inText,
    @required this.assetName,
    @required this.text,
    @required this.height,
    @required this.width,
    this.iconColor,
    this.radius,
    Key key,
  }) : super(key: key);
  final double radius;
  final double height;
  final double width;
  final String text;
  final String assetName;
  final IconData iconName;
  final String inText;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
          shadowColor: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  paddingMethod(text: text),
                  const Spacer(),
                  arrowButton(),
                ],
              ),
              SizedBox(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(iconName, color: iconColor),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: height,
                      child: Text(
                        inText,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Image(
                      image: AssetImage(
                        assetName,
                      ),
                      fit: BoxFit.fill,
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
