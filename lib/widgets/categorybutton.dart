import 'package:fashionapp/utils/constants.dart';
import 'package:fashionapp/utils/export.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final Widget child;
  final bool selcted;
  final bool left;

  const CategoryButton(
      {super.key,
      required this.text,
      required this.selcted,
      required this.left,
      required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = Utils().getscreenSize();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        children: [
          Container(
            width: size.width / 30,
            height: size.height / 39,
            decoration: BoxDecoration(
              color:
                  selcted ? mycolor.inputbackgroundcolor : mycolor.labelcolor,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
            ),
          ),
          Container(
            width: size.width / 7,
            height: size.height / 39,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 0,
                  color: selcted
                      ? mycolor.inputbackgroundcolor
                      : mycolor.labelcolor),
              color:
                  selcted ? mycolor.inputbackgroundcolor : mycolor.labelcolor,
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(3),
                child: FittedBox(
                  child: Row(
                    children: [
                      left ? child : Text(""),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        text,
                        style: GoogleFonts.tenorSans(fontSize: 20),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      !left ? child : Text(""),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: size.width / 30,
            height: size.height / 39,
            decoration: BoxDecoration(
              color:
                  selcted ? mycolor.inputbackgroundcolor : mycolor.labelcolor,
              borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
            ),
          ),
        ],
      ),
    );
  }
}
