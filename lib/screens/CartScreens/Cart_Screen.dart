import 'package:fashionapp/screens/CartScreens/Checkout_Screen.dart';
import 'package:fashionapp/widgets/Checkout_Display_Card.dart';
import 'package:fashionapp/widgets/custombutton.dart';

import '../../utils/export.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(
                    Icons.remove,
                  ),
                ),
                Text(
                  " CART ",
                  style: GoogleFonts.tenorSans(
                      fontSize: 23,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold),
                ),
                CheckoutDisplayCard(),
                CheckoutDisplayCard(),
              ],
            ),
            Column(
              children: [
                Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("SUB TOTAL"),
                      Text("\$120",
                          style: GoogleFonts.tenorSans(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: mycolor.secondarycolor)),
                    ],
                  ),
                ),
                Text("SUB TOTAL"),
                CustomButton(
                    h: 0.07,
                    w: 1,
                    onpress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => CheckoutScreen())));
                    },
                    icon: Icon(
                      Icons.card_travel_sharp,
                      color: Colors.white,
                    ),
                    text: "Buy Now",
                    change: true,
                    space: false,
                    fav: false,
                    left: true),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
