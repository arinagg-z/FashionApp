import 'package:fashionapp/models/productmodel.dart';
import 'package:fashionapp/screens/productscreens/Catalog_Screen.dart';

import '../utils/export.dart';
import 'favicon.dart';

class ProductDisplayCard extends StatelessWidget {
  final productmodel model;
  final Widget screen;
  const ProductDisplayCard({
    super.key, required this.model, required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Container(
        height: size.height * 0.3,
        width: size.width * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  model.imageurl,
                  height: size.height * 0.2,
                  width: size.width * 0.4,
                ),
                Positioned(right: 2, bottom: 15, child: FavIcon()),
              ],
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "${model.title}\n",
                  style: GoogleFonts.tenorSans(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
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
            ]))
          ],
        ),
      ),
    );
  }
}
