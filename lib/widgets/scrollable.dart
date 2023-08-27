import 'package:fashionapp/widgets/displaycard.dart';
import 'package:fashionapp/widgets/scrollstar.dart';

import '../utils/export.dart';

class scrollable extends StatefulWidget {
  const scrollable({
    super.key,
  });

  @override
  State<scrollable> createState() => _scrollableState();
}

class _scrollableState extends State<scrollable> {
  ScrollController scroll = new ScrollController();
  int current = 0;
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
        height: size.height * 0.6,
        child: Column(
          children: [
            GestureDetector(
              onHorizontalDragEnd: (details) {
                setState(() {
                  offset = scroll.position.pixels;
                });
              },
              child: Container(
                width: size.width,
                height: size.height * 0.55,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: scroll,
                    itemCount: Utils.frontscreenmodels.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ProductDisplayCard(
                            model: Utils.frontscreenmodels[index],
                            h: size.height * 0.5,
                            w: size.width * 0.5,
                            imageh: size.height * 0.4,
                            imagew: size.width * 0.75,
                          ),
                        ],
                      );
                    }),
              ),
            ),
            ksizebox(
              h: 0.012,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3 - 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  scrollstar(current: offset < 130),
                  scrollstar(current: 143 < offset && offset < 355),
                  scrollstar(current: 360 < offset),
                ],
              ),
            ),
          ],
        ));
  }
}
