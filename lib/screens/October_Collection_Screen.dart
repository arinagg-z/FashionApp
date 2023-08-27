import 'package:fashionapp/widgets/October_Collection_Card.dart';

import '../utils/export.dart';

class OctoberCollectionScreen extends StatelessWidget {
  const OctoberCollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        color: Colors.black,
        iconcolor: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: OctoberCollectionCard(
                screen: OctoberCollectionProductScreen(),
                model: Utils.OctoberCollectionModels[0],
                bottom: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: OctoberCollectionCard(
                screen: OctoberCollectionProductScreen(),
                model: Utils.OctoberCollectionModels[1],
                bottom: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: OctoberCollectionCard(
                screen: OctoberCollectionProductScreen(),
                model: Utils.OctoberCollectionModels[2],
                bottom: true,
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
