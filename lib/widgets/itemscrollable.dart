import 'package:fashionapp/models/productmodel.dart';
import 'package:fashionapp/widgets/scrollstar.dart';

import '../utils/export.dart';
import 'custombutton3.dart';

class ItemScroll extends StatefulWidget {
  final productmodel model;
  const ItemScroll({
    super.key,
    required this.model,
  });

  @override
  State<ItemScroll> createState() => _ItemScrollState();
}

class _ItemScrollState extends State<ItemScroll> {
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
        height: size.height * 0.8,
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
                height: size.height * 0.6,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: scroll,
                    itemCount: itemimage.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Image.asset(
                              widget.model.imageurl,
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
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  scrollstar(current: offset < 130),
                  scrollstar(current: 143 < offset && offset < 355),
                  scrollstar(current: 360 < offset),
                  scrollstar(current: 360 < offset),
                  scrollstar(current: 360 < offset),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TitleText(
                      title: widget.model.title,
                      fontsize: 18,
                      letterspacing: 6),
                  ksizebox(
                    h: 0.01,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "${widget.model.description}\n",
                        style: GoogleFonts.tenorSans(
                            fontSize: 15, color: Colors.grey[400])),
                    TextSpan(
                        text: "\$${widget.model.price}",
                        style: GoogleFonts.tenorSans(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: mycolor.secondarycolor)),
                  ])),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Color",
                        style: GoogleFonts.tenorSans(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tapped = 0;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                              border: tapped == 0
                                  ? Border.all(
                                      width: 2, color: Colors.grey.shade300)
                                  : null),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tapped = 1;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                              border: tapped == 1
                                  ? Border.all(
                                      width: 2, color: Colors.grey.shade300)
                                  : null),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tapped = 2;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orange,
                              border: tapped == 2
                                  ? Border.all(
                                      width: 2, color: Colors.grey.shade300)
                                  : null),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Size",
                        style: GoogleFonts.tenorSans(
                          fontSize: 12,
                          color: Colors.black87,
                        ),
                      ),
                      RoundedLightCustomButton(
                          change: false,
                          text: "S",
                          icon: Text(""),
                          left: false,
                          h: 0.03,
                          w: 0.05),
                      RoundedLightCustomButton(
                          change: false,
                          text: "M",
                          icon: Text(""),
                          left: false,
                          h: 0.03,
                          w: 0.05),
                      RoundedLightCustomButton(
                          change: false,
                          text: "L",
                          icon: Text(""),
                          left: false,
                          h: 0.03,
                          w: 0.05),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
