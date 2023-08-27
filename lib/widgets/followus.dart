import 'package:fashionapp/widgets/bottomdisplayprofile.dart';

import '../utils/export.dart';

class followus extends StatelessWidget {
  const followus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          " FOLLOW US ",
          style: GoogleFonts.tenorSans(
              fontSize: 26, letterSpacing: 4, fontWeight: FontWeight.bold),
        ),
        ksizebox(
          h: 0.01,
        ),
        Image.asset("assests/images/pagecontent/insta.png"),
        ksizebox(
          h: 0.03,
        ),
        Container(
          width: size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    bottomdisplay(
                        image:
                            "assests/images/pagecontent/bottomdisplayimage1.png",
                        name: "mia"),
                    bottomdisplay(
                        image:
                            "assests/images/pagecontent/bottomdisplayimage2.png",
                        name: "_jiyhn"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    bottomdisplay(
                        image:
                            "assests/images/pagecontent/bottomdisplayimage3.png",
                        name: "suzan"),
                    bottomdisplay(
                        image:
                            "assests/images/pagecontent/bottomdisplayimage4.png",
                        name: "kim"),
                  ],
                ),
              ),
            ],
          ),
        ),
        ksizebox(
          h: 0.04,
        ),
        Footer(),
      ],
    );
  }
}
