import 'package:fashionapp/screens/productscreens/Home_Screen.dart';
import 'package:fashionapp/screens/CartScreens/Place_Order_Screen.dart';
import 'package:fashionapp/widgets/Checkout_Display_Card.dart';
import 'package:fashionapp/widgets/productdisplaycard.dart';

import '../../utils/export.dart';

class CashOutScreen extends StatelessWidget {
  const CashOutScreen({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: TitleText(
                    title: "CHECKOUT", fontsize: 28, letterspacing: 5),
              ),
              CustomDivider(),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "sdkjfssdlnsdjgkkndssbdflnnblkmfxnklbfdldbsdldfs\nsjdflksslvlkdfnx;\nsfkklslsv;sv\nskjdfsl0",
                      maxLines: 4,
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              ListTile(
                title: Text("Master Card ending with *******345"),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                      "assests/images/Screenshot 2023-06-28 230457.png"),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              CheckoutDisplayCard(),
            ],
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TOTAL",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$120",
                      style: TextStyle(
                          fontSize: 20,
                          color: mycolor.secondarycolor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              CustomButton(
                  h: 0.05,
                  w: 1,
                  onpress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HomeScreen())));
                  },
                  icon: Icon(
                    Icons.card_travel_sharp,
                    color: Colors.white,
                  ),
                  text: "CHECKOUT",
                  change: true,
                  space: false,
                  fav: false,
                  left: true),
            ],
          )
        ],
      ),
    );
  }
}
