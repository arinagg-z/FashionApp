import 'package:fashionapp/models/productmodel.dart';
import 'package:fashionapp/widgets/toppanel.dart';
import 'package:fashionapp/widgets/BottomPageSwitcher.dart';
import 'package:fashionapp/widgets/Model_Display_Card.dart';
import 'package:fashionapp/widgets/custombutton.dart';
import 'package:fashionapp/widgets/custombutton2.dart';
import 'package:fashionapp/widgets/favicon.dart';
import 'package:fashionapp/widgets/productdisplaycard.dart';

import '../utils/export.dart';
import '../widgets/custombutton3.dart';

class ModelFashionScreen extends StatelessWidget {
  const ModelFashionScreen({super.key});

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
              CatalogHeaderPanel(),
              Row(
                children: [
                  CategorySelectButton(
                      icon: Icon(
                        Icons.close,
                        size: 14,
                      ),
                      text: "WOMEN",
                      change: false,
                      left: false),
                  CategorySelectButton(
                      icon: Icon(
                        Icons.close,
                        size: 14,
                      ),
                      text: "All apparel",
                      change: false,
                      left: false),
                ],
              ),
              Container(
                width: double.infinity,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: Utils.fashionscreenmodels.length,
                    itemBuilder: (context, index) {
                      return ModelDisplayCard(
                          model: Utils.fashionscreenmodels[index]);
                    }),
              ),
              BottomPageSwitcher(),
              Footer(),
            ],
          ),
        ),
      )),
    );
  }
}
