import '../../utils/export.dart';

class justforyou extends StatelessWidget {
  const justforyou({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ksizebox(
          h: 0.18,
        ),
        TitleText(title: "JUST FOR YOU", fontsize: 23, letterspacing: 3),
        ksizebox(
          h: 0.015,
        ),
        CustomDivider(),
        scrollable(),
        Container(
          width: size.width,
          height: size.height * 0.2,
          child: Column(
            children: [
              Image.asset(
                "assests/images/pagecontent/frontscreendisplaycontent2.png",
                fit: BoxFit.cover,
              ),
            ],
          ),
        )
      ],
    );
  }
}
