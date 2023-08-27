import 'package:fashionapp/screens/October_Collection_Screen.dart';
import 'package:fashionapp/utils/export.dart';
import 'package:fashionapp/widgets/videoplaye.dart';

class collections extends StatelessWidget {
  const collections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ksizebox(
          h: 0.13,
        ),
        TitleText(title: "COLLECTIONS", fontsize: 21, letterspacing: 4),
        ksizebox(
          h: 0.1,
        ),
        Image.asset(
          "assests/images/pagecontent/frontscreenbanner1.png",
          height: size.height / 4,
          width: size.width,
          fit: BoxFit.cover,
        ),
        ksizebox(
          h: 0.07,
        ),
        Image.asset(
          "assests/images/pagecontent/frontscreenbanner2.png",
          height: size.height / 4,
          width: size.width * 0.6,
          fit: BoxFit.cover,
        ),
        ksizebox(
          h: 0.16,
        ),
        Container(
          height: size.height * 0.24,
          width: size.width,
          color: Colors.black,
          child: videoplayer(),
        )
      ],
    );
  }
}
