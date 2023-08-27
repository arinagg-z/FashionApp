import 'package:fashionapp/models/productmodel.dart';
import 'package:fashionapp/screens/productscreens/Catalog_Screen.dart';
import 'package:fashionapp/widgets/toppanel.dart';
import 'package:fashionapp/widgets/BottomPageSwitcher.dart';
import 'package:fashionapp/widgets/custombutton.dart';
import 'package:fashionapp/widgets/custombutton2.dart';
import 'package:fashionapp/widgets/favicon.dart';
import 'package:fashionapp/widgets/productdisplaycard.dart';

import '../utils/export.dart';
import '../widgets/custombutton3.dart';

class ProductDisplayScreen extends StatelessWidget {
  const ProductDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mycolor.appbarcolor,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.clear_all_rounded)),
        title: Center(
          child: Image.asset(
            images.appbarimage,
            scale: 1.4,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CatalogHeaderPanel(),
            ),
            Row(
              children: [
                CategorySelectButton(
                    icon: Icon(
                      Icons.remove,
                      size: 14,
                    ),
                    text: "WOMEN",
                    change: false,
                    left: false),
                CategorySelectButton(
                    icon: Icon(
                      Icons.remove,
                      size: 14,
                    ),
                    text: "All apparel",
                    change: false,
                    left: false),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProductDisplayCard(
                  screen: CatalogScreen(),
                  model: Utils.ClothingProductDisplay[0],
                ),
                ProductDisplayCard(
                  screen: CatalogScreen(),
                  model: Utils.ClothingProductDisplay[1],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProductDisplayCard(
                  screen: CatalogScreen(),
                  model: Utils.ClothingProductDisplay[2],
                ),
                ProductDisplayCard(
                  screen: CatalogScreen(),
                  model: Utils.ClothingProductDisplay[3],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProductDisplayCard(
                  screen: CatalogScreen(),
                  model: Utils.ClothingProductDisplay[4],
                ),
                ProductDisplayCard(
                  screen: CatalogScreen(),
                  model: Utils.ClothingProductDisplay[5],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProductDisplayCard(
                  screen: AccessoriesScreen(),
                  model: Utils.ClothingProductDisplay[6],
                ),
                ProductDisplayCard(
                  screen: AccessoriesScreen(),
                  model: Utils.ClothingProductDisplay[7],
                ),
              ],
            ),
            BottomPageSwitcher(),
            Footer(),
          ],
        ),
      )),
    );
  }
}
