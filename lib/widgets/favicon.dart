import 'package:fashionapp/utils/constants.dart';
import 'package:flutter/material.dart';

class FavIcon extends StatefulWidget {
  const FavIcon({super.key});

  @override
  State<FavIcon> createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  bool tap = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tap = !tap;
        });
      },
      child: Container(
        child: tap
            ? Icon(
                Icons.favorite,
                color: mycolor.secondarycolor,
              )
            : Icon(
                Icons.favorite_border,
                color: mycolor.secondarycolor,
              ),
      ),
    );
  }
}
