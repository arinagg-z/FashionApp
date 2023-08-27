import 'package:fashionapp/widgets/favicon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class CustomButton extends StatelessWidget {
  bool change = true;
  final double h;
  final double w;
  final String text;
  final Widget icon;
  VoidCallback? onpress;
  bool left = true;
  bool space = true;
  bool fav = true;

  CustomButton(
      {super.key,
      this.onpress,
      required this.icon,
      required this.text,
      required this.change,
      required this.space,
      required this.fav,
      required this.left,
      required this.h,
      required this.w});

  @override
  Widget build(BuildContext context) {
    Size size = Utils().getscreenSize();

    return GestureDetector(
      onTap: onpress ?? () {},
      child: Container(
        height: size.height * h,
        width: size.width * w,
        decoration: BoxDecoration(
            color: mycolor.titleactivecolor,
            border: Border.all(color: Colors.white, width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: AspectRatio(
            aspectRatio: 3 / 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                space
                    ? SizedBox(
                        width: 50,
                      )
                    : Text(""),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    left ? icon : Text(""),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    !left ? icon : Text(""),
                  ],
                ),
                fav ? FavIcon() : Text(""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
