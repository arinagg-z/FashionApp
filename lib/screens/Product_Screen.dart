import 'package:fashionapp/models/productmodel.dart';
import 'package:fashionapp/screens/productscreens/Catalog_Screen.dart';
import 'package:fashionapp/screens/October_Collection_Screen.dart';
import 'package:fashionapp/widgets/itemscrollable.dart';
import 'package:fashionapp/widgets/productdisplaycard.dart';

import '../utils/export.dart';

class ProductScreen extends StatelessWidget {
  final productmodel model;
  const ProductScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(color: mycolor.inputbackgroundcolor),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              ItemScroll(
                model: model,
              ),
              CustomButton(
                  h: 0.05,
                  w: 1,
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  text: "ADD",
                  change: true,
                  space: false,
                  fav: true,
                  left: true),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ksizebox(
                      h: 0.05,
                    ),
                    TitleText(
                        title: "Materials", fontsize: 19, letterspacing: 2),
                    ksizebox(
                      h: 0.01,
                    ),
                    Text(
                      "The latest fashion coat is crafted from a blend of premium materials that exude both luxury and comfort. A harmonious combination of fine wool and soft cashmere ensures exceptional warmth during chilly days, while its silk-like lining provides a silky smooth touch against the skin. This coat's impeccable tailoring showcases a flattering silhouette, making it an epitome of style and elegance. The attention to detail and superior craftsmanship make it a versatile and timeless wardrobe essential, perfect for elevating any winter ensemble. Embrace the allure of sophistication with this exquisite fashion coat, designed to embrace you in unparalleled coziness and exquisite fashion.",
                      maxLines: 5,
                      style: GoogleFonts.tenorSans(
                          fontSize: 15, color: Colors.grey.shade300),
                    ),
                    ksizebox(
                      h: 0.05,
                    ),
                    TitleText(title: "Care", fontsize: 19, letterspacing: 2),
                    ksizebox(
                      h: 0.01,
                    ),
                    Text(
                      "To keep your latest fashion coat looking stylish and in pristine condition, follow these essential steps for proper care. Firstly, check the care label for specific instructions on washing and care. Usually, it's best to spot clean or hand wash delicate fabrics. Secondly, store your coat in a cool, dry place away from direct sunlight to prevent fading. Thirdly, invest in a high-quality coat hanger to maintain its shape and prevent creasing. Fourthly, avoid contact with sharp objects or abrasive surfaces to prevent snags. Lastly, periodically take your coat to a professional cleaner for thorough cleaning and maintenance. By following these steps, you can ensure your fashionable coat stays impeccable and lasts for seasons to come.",
                      maxLines: 4,
                      style: GoogleFonts.tenorSans(
                          fontSize: 15, color: Colors.grey.shade300),
                    ),
                    ksizebox(
                      h: 0.05,
                    ),
                    TitleText(
                        title: "YOU MAY ALSO LIKE",
                        fontsize: 25,
                        letterspacing: 4),
                    CustomDivider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProductDisplayCard(
                          screen: OctoberCollectionScreen(),
                          model: Utils.OctoberCollectionProductDisplay[0],
                        ),
                        ProductDisplayCard(
                          screen: OctoberCollectionScreen(),
                          model: Utils.OctoberCollectionProductDisplay[1],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProductDisplayCard(
                          screen: OctoberCollectionScreen(),
                          model: Utils.OctoberCollectionProductDisplay[2],
                        ),
                        ProductDisplayCard(
                          screen: OctoberCollectionScreen(),
                          model: Utils.OctoberCollectionProductDisplay[3],
                        ),
                      ],
                    ),
                    ksizebox(
                      h: 0.05,
                    ),
                    Footer(),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
