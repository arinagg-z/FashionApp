import 'package:fashionapp/utils/export.dart';

class NavTray extends StatelessWidget {
  const NavTray({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.1,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryButton(
              text: "Fashion",
              selcted: false,
              left: false,
              child: Text("")),
          CategoryButton(
              text: "Promo",
              selcted: false,
              left: false,
              child: Text("")),
          CategoryButton(
              text: "Policy",
              selcted: false,
              left: false,
              child: Text("")),
          CategoryButton(
              text: "LookBook",
              selcted: false,
              left: false,
              child: Text("")),
          CategoryButton(
              text: "Sale",
              selcted: false,
              left: false,
              child: Text("")),
          CategoryButton(
              text: "Accessories",
              selcted: false,
              left: false,
              child: Text("")),
        ],
      ),
    );
  }
}
