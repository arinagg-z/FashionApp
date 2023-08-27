import 'package:fashionapp/screens/Model_Fashion_Screen.dart';
import 'package:fashionapp/widgets/BottomPageSwitcher.dart';
import 'package:fashionapp/widgets/toppanel.dart';
import 'package:fashionapp/widgets/productdisplaycard.dart';

import '../utils/export.dart';

class Result_Screen extends StatelessWidget {
  const Result_Screen({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Dress", style: GoogleFonts.tenorSans(fontSize: 17)),
                    Row(
                      children: [
                        Icon(Icons.remove),
                        Icon(Icons.search),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 2,
                ),
              ),
              CatalogHeaderPanel(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductDisplayCard(
                    screen: ModelFashionScreen(),
                    model: Utils.DressProductDisplay[0],
                  ),
                  ProductDisplayCard(
                    screen: ModelFashionScreen(),
                    model: Utils.DressProductDisplay[1],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductDisplayCard(
                    screen: ModelFashionScreen(),
                    model: Utils.DressProductDisplay[2],
                  ),
                  ProductDisplayCard(
                    screen: ModelFashionScreen(),
                    model: Utils.DressProductDisplay[3],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductDisplayCard(
                    screen: ModelFashionScreen(),
                    model: Utils.DressProductDisplay[4],
                  ),
                  ProductDisplayCard(
                    screen: ModelFashionScreen(),
                    model: Utils.DressProductDisplay[5],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductDisplayCard(
                    screen: ModelFashionScreen(),
                    model: Utils.DressProductDisplay[6],
                  ),
                  ProductDisplayCard(
                    screen: ModelFashionScreen(),
                    model: Utils.DressProductDisplay[7],
                  ),
                ],
              ),
              BottomPageSwitcher(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
