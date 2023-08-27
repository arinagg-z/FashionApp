import 'package:fashionapp/widgets/favicon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class NavButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onpress;

  const NavButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    Size size = Utils().getscreenSize();

    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: size.height * 0.07,
        width: size.width * 0.6,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300, width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.tenorSans(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              ksizebox(
                w: 0.04,
              ),
              Icon(icon, size: 23, color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
