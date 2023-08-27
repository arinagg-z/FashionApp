import 'package:fashionapp/screens/Accessories_Screen.dart';
import 'package:fashionapp/screens/Result_Screen.dart';
import 'package:fashionapp/widgets/productdisplaycard.dart';

import '../utils/export.dart';
import '../widgets/October_Collection_Card.dart';

class OctoberCollectionProductScreen extends StatelessWidget {
  const OctoberCollectionProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        color: Colors.black,
        iconcolor: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: OctoberCollectionCard(
                  screen: OctoberCollectionScreen(),
                  model: Utils.OctoberCollectionModels[1],
                  bottom: false,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductDisplayCard(
                    screen: Result_Screen(),
                    model: Utils.OctoberCollectionProductDisplay[0],
                  ),
                  ProductDisplayCard(
                    screen: Result_Screen(),
                    model: Utils.OctoberCollectionProductDisplay[1],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductDisplayCard(
                    screen: AccessoriesScreen(),
                    model: Utils.OctoberCollectionProductDisplay[2],
                  ),
                  ProductDisplayCard(
                    screen: AccessoriesScreen(),
                    model: Utils.OctoberCollectionProductDisplay[3],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductDisplayCard(
                    screen: AccessoriesScreen(),
                    model: Utils.OctoberCollectionProductDisplay[4],
                  ),
                  ProductDisplayCard(
                    screen: AccessoriesScreen(),
                    model: Utils.OctoberCollectionProductDisplay[5],
                  ),
                ],
              ),
              TitleText(
                  color: Colors.white,
                  title: "YOU MAY ALSO LIKE",
                  fontsize: 25,
                  letterspacing: 4),
              CustomDivider(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                height: size.height * 0.5,
                width: double.infinity,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: Utils.OctoberCollectionModels.length,
                    itemBuilder: (context, index) {
                      return OctoberCollectionCard(
                        model: Utils.OctoberCollectionModels[index],
                        screen: OctoberCollectionScreen(),
                        bottom: false,
                        h: 0.45,
                      );
                    }),
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
