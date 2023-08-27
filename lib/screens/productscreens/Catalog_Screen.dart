import 'package:fashionapp/widgets/toppanel.dart';
import 'package:fashionapp/widgets/Catalog_Display_Card.dart';
import 'package:fashionapp/widgets/custombutton3.dart';
import 'package:fashionapp/widgets/favicon.dart';

import '../../utils/export.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(color: mycolor.inputbackgroundcolor),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CatalogHeaderPanel(),
            ),
            Container(
              width: size.width,
              height: size.height,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Utils.ClothingProductDisplay.length,
                  itemBuilder: (context, index) {
                    return CatalogDisplayCard(
                      model: Utils.ClothingProductDisplay[index],
                    );
                  }),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
