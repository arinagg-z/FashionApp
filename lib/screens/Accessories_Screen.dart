import 'package:fashionapp/screens/productscreens/Catalog_Screen.dart';
import 'package:fashionapp/screens/October_Collection_Product_Screen.dart';
import 'package:fashionapp/screens/October_Collection_Screen.dart';
import 'package:fashionapp/widgets/accesoriesscroable.dart';
import 'package:fashionapp/widgets/itemscrollable.dart';
import 'package:fashionapp/widgets/productdisplaycard.dart';

import '../utils/export.dart';

class AccessoriesScreen extends StatelessWidget {
  const AccessoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(color: mycolor.inputbackgroundcolor),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              accesoriesscrollable(),
              CustomButton(
                  h: 0.06,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ksizebox(
                    h: 0.03,
                  ),
                  TitleText(title: "Gallery", fontsize: 19, letterspacing: 2),
                  ksizebox(
                    h: 0.005,
                  ),
                  Container(
                      child: Image.asset(
                    "assests/images/content/accessmodel1.png",
                    width: double.infinity,
                    height: size.height * 0.3,
                  )),
                  ksizebox(
                    h: 0.005,
                  ),
                  Container(
                      child: Image.asset(
                    "assests/images/content/accessmodel2.png",
                    width: double.infinity,
                    height: size.height * 0.4,
                  )),
                  ksizebox(
                    h: 0.005,
                  ),
                  Container(
                      child: Image.asset(
                    "assests/images/accesories/galleryimage.png",
                    width: double.infinity,
                    height: size.height * 0.4,
                  )),
                  ksizebox(
                    h: 0.005,
                  ),
                  ksizebox(
                    h: 0.02,
                  ),
                  TitleText(title: "Care", fontsize: 19, letterspacing: 2),
                  ksizebox(
                    h: 0.01,
                  ),
                  Text(
                    "loreaskldklan k aklsf;m; alfa lfka   al fklhakhkhfklahk kaf las  alfh lf ;laa;l , loreaskldklan k aklsf;m; alfa lfka   al fklhakhkhfklahk kaf las  alfh lf ;laa;l",
                    maxLines: 2,
                    style: GoogleFonts.tenorSans(
                        fontSize: 15, color: Colors.grey.shade300),
                  ),
                  ksizebox(
                    h: 0.02,
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
                        screen: OctoberCollectionProductScreen(),
                        model: Utils.OctoberCollectionProductDisplay[2],
                      ),
                      ProductDisplayCard(
                        screen: OctoberCollectionProductScreen(),
                        model: Utils.OctoberCollectionProductDisplay[3],
                      ),
                    ],
                  ),
                  Footer(),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
