import 'package:flutter/material.dart';

import '../extensions/colors.dart';
import 'apptext.dart';

class BottomSheett extends StatelessWidget {
  const BottomSheett({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 90,
      color: Colors.white,
      child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Apptext(text: "Bottom sheet"),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(
                                  Appcolors().secondary),
                            ),
                            child: Apptext(text: "close"),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
          child:const Icon(
            Icons.keyboard_arrow_up_rounded,
            size: 38,
            weight: 2,
          )),
    );
  }
}
