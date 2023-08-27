import 'package:fashionapp/models/productmodel.dart';
import 'package:fashionapp/screens/Product_Display_Screen.dart';
import 'package:fashionapp/screens/productscreens/Feed_Screen.dart';
import 'package:fashionapp/utils/export.dart';

import 'favicon.dart';

class CatalogDisplayCard extends StatelessWidget {
  final productmodel model;
  const CatalogDisplayCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDisplayScreen()));
      },
      child: Container(
        height: size.height * 0.2,
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                model.imageurl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Expanded(
                  flex: 2,
                  child: FittedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleText(
                            title: model.title, fontsize: 18, letterspacing: 3),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "${model.description}\n",
                              style: GoogleFonts.tenorSans(
                                  fontSize: 15, color: Colors.grey[400])),
                          TextSpan(
                              text: "\$${model.price}",
                              style: GoogleFonts.tenorSans(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: mycolor.secondarycolor)),
                        ])),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              color: mycolor.secondarycolor,
                              size: 10,
                            ),
                            Text("4.8 Ratings\n",
                                style: GoogleFonts.tenorSans(
                                    fontSize: 10, color: Colors.grey[400])),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                            FavIcon(),
                          ],
                        )
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
