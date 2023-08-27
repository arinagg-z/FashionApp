import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class RoundedLightCustomButton extends StatelessWidget {
  final bool change;
  final String text;
  final Widget icon;
  final bool left;
  final double h;
  final double w;
  VoidCallback? onpress;

   RoundedLightCustomButton(
      {super.key,
      this.onpress,
      required this.change,
      required this.text,
      required this.icon,
      required this.left,
      required this.h,
      required this.w});

  @override
  Widget build(BuildContext context) {
    Size size = Utils().getscreenSize();

    return GestureDetector(
      onTap: onpress??(){},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: size.height * h,
          width: size.width * w,
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
      ),
    );
  }
}
