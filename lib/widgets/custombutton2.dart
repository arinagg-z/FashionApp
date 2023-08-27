import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class CategorySelectButton extends StatelessWidget {
  bool change = true;
  final String text;
  final Widget icon;
  bool left = true;

  CategorySelectButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.change,
      required this.left});

  @override
  Widget build(BuildContext context) {
    Size size = Utils().getscreenSize();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height / 18,
        width: size.width / 3,
        decoration: BoxDecoration(
            color: change ? mycolor.titleactivecolor : Colors.white,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.grey.shade300, width: 1)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              left ? icon : Text(""),
              Text(text,
                  style: GoogleFonts.tenorSans(
                    color: change ? Colors.white : mycolor.titleactivecolor,
                    fontSize: 14,
                  )),
              !left ? icon : Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
