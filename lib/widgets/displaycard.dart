import 'package:fashionapp/screens/productscreens/Catalog_Screen.dart';

import '../models/productmodel.dart';
import '../utils/export.dart';

class ProductDisplayCard extends StatelessWidget {
  final productmodel model;
  double? h;
  double? w;
  double? imageh;
  double? imagew;

  ProductDisplayCard(
      {this.h,
      this.imageh,
      this.imagew,
      this.w,
      super.key,
      required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CatalogScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: w ?? size.width / 6,
        height: h ?? size.height / 2.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              model.imageurl,
              width: imagew ?? double.infinity,
              height: imageh ?? size.height * (3 / 20),
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Text(
                model.title,
                maxLines: 1,
                style: GoogleFonts.tenorSans(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.8),
              child: Text(
                "\$${model.price}",
                style: GoogleFonts.tenorSans(color: mycolor.secondarycolor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
