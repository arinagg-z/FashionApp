import 'package:fashionapp/screens/CartScreens/Place_Order_Screen.dart';
import 'package:fashionapp/widgets/Checkout_Display_Card.dart';
import 'package:fashionapp/widgets/favicon.dart';
import 'package:fashionapp/widgets/productdisplaycard.dart';

import '../../utils/export.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TitleText(title: "CHECKOUT", fontsize: 28, letterspacing: 5),
                CustomDivider(),
                CheckoutDisplayCard(),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  title: Text("ADD PROMO CODE"),
                  leading: Icon(Icons.airplane_ticket_outlined),
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  title: Text("DELIVERY"),
                  leading: Icon(Icons.add_box_sharp),
                  trailing: Text("Free"),
                ),
                Divider(
                  thickness: 1,
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("EST TOTAL"),
                      Text("\$120",
                          style: GoogleFonts.tenorSans(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: mycolor.secondarycolor)),
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
                              builder: ((context) => PlaceOrderScreen())));
                    },
                    icon: Icon(Icons.card_travel_sharp, color: Colors.white),
                    text: "CHECKOUT",
                    change: true,
                    space: false,
                    fav: false,
                    left: true),
              ],
            )
          ],
        ),
      ),
    );
  }
}
