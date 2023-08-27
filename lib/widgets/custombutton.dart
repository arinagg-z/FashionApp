import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class custombutton extends StatelessWidget {
  bool change = true;
  final String text;
  final Widget icon;
  bool left = true;

  custombutton(
      {super.key,
      required this.icon,
      required this.text,
      required this.change,
      required this.left});

  @override
  Widget build(BuildContext context) {
    Size size = Utils().getscreenSize();

    return Container(
      height: size.height / 18,
      width: size.width / 15,
      decoration: BoxDecoration(
          color: change ? mycolor.titleactivecolor : Colors.white,
          border: Border.all(
              color: Colors.white,
              width: 1)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            left ? icon : Text(""),
            Text(
              text,
              style: TextStyle(
                color: change ? Colors.white : mycolor.titleactivecolor,
                fontSize: 18,
                fontFamily: GoogleFonts.tenorSans(
                  color: Colors.black,
                  fontSize: 18,
                ).toString(),
              ),
            ),
            !left ? icon : Text(""),
          ],
        ),
      ),
    );
  }
}
