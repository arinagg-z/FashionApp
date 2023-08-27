import 'package:fashionapp/screens/FooterScreens/Blog_Screen.dart';
import 'package:fashionapp/screens/FooterScreens/Contact_Us_Screen.dart';
import 'package:fashionapp/screens/FooterScreens/Our_Story_Screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constants.dart';
import '../utils/export.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Utils().getscreenSize();

    return Container(
      width: size.width,
      height: size.height * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: FittedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assests/icons/icons8-twitter.svg",
                ),
                SizedBox(
                  width: size.height * 0.07,
                ),
                SvgPicture.asset("assests/icons/icons8-instagram.svg"),
                SizedBox(
                  width: size.height * 0.07,
                ),
                SvgPicture.asset("assests/icons/icons8-youtube.svg"),
              ],
            ),
            CustomDivider(),
            ksizebox(
              h: 0.02,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text:
                      "support@openui.design\n\n\t\t\t\t\t\t\t+60 825 876\n\n08:00 - 22:00 - Everyday\n",
                  style:
                      GoogleFonts.tenorSans(fontSize: 19, color: Colors.black)),
            ])),
            CustomDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => OurStoryScreen())));
                  },
                  child: Text(
                    "About",
                    style: GoogleFonts.tenorSans(
                        fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                ),
                ksizebox(
                  w: 0.2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ContactUsScreen())));
                  },
                  child: Text(
                    "Contact",
                    style: GoogleFonts.tenorSans(
                        fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                ),
                ksizebox(
                  w: 0.2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => BlogScreen())));
                  },
                  child: Text(
                    "Blog",
                    style: GoogleFonts.tenorSans(
                        fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 30,
            ),
            Text(
              "Copyright@OpenUi\t\tAll Rights Reserved",
              style: GoogleFonts.tenorSans(fontSize: 19),
            ),
            SizedBox(
              height: size.height / 30,
            ),
          ],
        ),
      ),
    );
  }
}
