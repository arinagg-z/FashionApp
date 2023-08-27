import 'package:fashionapp/widgets/scrollstar.dart';

import '../utils/export.dart';
import 'custombutton3.dart';

class accesoriesscrollable extends StatefulWidget {
  const accesoriesscrollable({
    super.key,
  });

  @override
  State<accesoriesscrollable> createState() => _accesoriesscrollableState();
}

class _accesoriesscrollableState extends State<accesoriesscrollable> {
  ScrollController scroll = new ScrollController();
  int current = 0;
  int tapped = 0;
  double offset = 0;

  @override
  void initState() {
    scroll.addListener(() {
      setState(() {
        offset = scroll.position.pixels;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        height: size.height * 0.83,
        child: Column(
          children: [
            GestureDetector(
              onHorizontalDragEnd: (details) {
                setState(() {
                  offset = scroll.position.pixels;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 3),
                width: size.width,
                height: size.height * 0.6,
                color: Colors.white,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: scroll,
                    itemCount: accessoryimagemain.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Image.asset(
                              accessoryimagemain[index],
                              width: size.width * 0.9,
                              height: size.height * 0.5,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 3,
              ),
              width: size.width,
              height: size.height * 0.065,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: accessoryimage.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: size.height * 0.065,
                      width: size.width * 0.4,
                      child: Image.asset(
                        accessoryimage[index],
                        fit: BoxFit.contain,
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TitleText(title: "MOHAN", fontsize: 18, letterspacing: 6),
                  ksizebox(
                    h: 0.01,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Reversible angora cardiagna\n",
                        style: GoogleFonts.tenorSans(
                            fontSize: 15, color: Colors.grey[400])),
                    TextSpan(
                        text: "\$120",
                        style: GoogleFonts.tenorSans(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: mycolor.secondarycolor)),
                  ])),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ring Size",
                    style: GoogleFonts.tenorSans(
                      fontSize: 12,
                      color: Colors.black87,
                    ),
                  ),
                  RoundedLightCustomButton(
                      change: false,
                      text: "6",
                      icon: Text(""),
                      left: false,
                      h: 0.03,
                      w: 0.05),
                  RoundedLightCustomButton(
                      change: false,
                      text: "7",
                      icon: Text(""),
                      left: false,
                      h: 0.03,
                      w: 0.05),
                  RoundedLightCustomButton(
                      change: false,
                      text: "8",
                      icon: Text(""),
                      left: false,
                      h: 0.03,
                      w: 0.05),
                  RoundedLightCustomButton(
                      change: false,
                      text: "9",
                      icon: Text(""),
                      left: false,
                      h: 0.03,
                      w: 0.05),
                  RoundedLightCustomButton(
                      change: false,
                      text: "10",
                      icon: Text(""),
                      left: false,
                      h: 0.03,
                      w: 0.05),
                ],
              ),
            ),
          ],
        ));
  }
}
