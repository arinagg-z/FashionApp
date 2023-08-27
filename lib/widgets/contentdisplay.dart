import '../utils/export.dart';

class contentdisplay extends StatelessWidget {
  const contentdisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.65,
      color: mycolor.labelcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assests/images/pagecontent/appname.png"),
          ),
          ksizebox(
            h: 0.01,
          ),
          Text(
            "Making  a luxurios lifstyle accesible\nfor a generous group of women is our\ndailydrive ",
            style: GoogleFonts.tenorSans(fontSize: 14),
          ),
          CustomDivider(),
          Image.asset(
              "assests/images/pagecontent/frontscreendisplaycontent3.png"),
        ],
      ),
    );
  }
}
