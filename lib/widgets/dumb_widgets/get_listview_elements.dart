import 'package:flutter/material.dart';
import 'package:insurance_app/widgets/smart_widgets/card_designer.dart';
import 'package:insurance_app/widgets/smart_widgets/string_files_f_card.dart';


List<Widget> get elements  =>[
                    cardDesigner(
                      message: trafik,
                      text: "Trafik Sigortası Nedir?",
                      listOfColors: [const Color.fromARGB(255, 93, 45, 99), const Color.fromARGB(255, 193, 86, 59), const Color.fromARGB(255, 251, 154, 154)],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    cardDesigner(
                      message: saglik,
                      text: "Sağlık Sigortası Nedir?",
                      listOfColors: const [
                        Color.fromARGB(255, 17, 0, 56),
                        Color.fromARGB(255, 89, 0, 191),
                        Color.fromARGB(255, 101, 2, 214),
                        Color.fromARGB(255, 147, 53, 255),
                        Color.fromARGB(255, 170, 106, 243),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    cardDesigner(
                      message: imm,
                        listOfColors: [Colors.amber, Colors.brown],
                        text: "IMM Sigortası Nedir?",),
                    const SizedBox(
                      height: 10,
                    ),
                    cardDesigner(
                      message: isyeri,
                      listOfColors: [
                      Colors.red,
                      const Color.fromARGB(255, 59, 0, 0),
                      const Color.fromARGB(255, 0, 0, 0),
                    ], text: "İşyeri Sigortası Nedir?"),
                    const SizedBox(
                      height: 10,
                    ),
                    cardDesigner(
                      message: seyahat,
                      listOfColors: [
                      Colors.pink,
                      const Color.fromARGB(255, 184, 45, 2),
                      const Color.fromARGB(255, 247, 196, 196)
                    ], text: "Seyahat Sigortası Nedir?")
                  ];