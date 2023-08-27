import 'package:fashionapp/screens/CartScreens/Address_Screen.dart';
import 'package:fashionapp/screens/CartScreens/Cash_Out_Screen.dart';
import 'package:fashionapp/screens/CartScreens/Payment_Screen.dart';
import 'package:fashionapp/widgets/custombutton3.dart';
import 'package:fashionapp/widgets/productdisplaycard.dart';

import '../../utils/export.dart';

class PlaceOrderScreen extends StatelessWidget {
  const PlaceOrderScreen({super.key});

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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shipping Address",
                      style: GoogleFonts.tenorSans(color: Colors.grey.shade400),
                    ),
                    ksizebox(),
                    Text(
                      "sdkjfssdlnsdjgkkndssbdflnnblkmfxnklbfdldbsdldfs\nsjdflksslvlkdfnx;\nsfkklslsv;sv\nskjdfsl0",
                      maxLines: 4,
                    ),
                    ksizebox(),
                    RoundedLightCustomButton(
                        change: false,
                        onpress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => AddresScreen())));
                        },
                        text: 'Add Shipping Address',
                        icon: Icon(Icons.add),
                        left: false,
                        h: 0.06,
                        w: 0.8),
                    ksizebox(),
                    Text(
                      "Shipping Method",
                      style: GoogleFonts.tenorSans(color: Colors.grey.shade400),
                    ),
                    ksizebox(),
                    RoundedLightCustomButton(
                        change: false,
                        text: 'Pick Up At Store',
                        icon: Icon(Icons.arrow_drop_down_sharp),
                        left: false,
                        h: 0.06,
                        w: 0.8),
                    Text(
                      "Payement Method",
                      style: GoogleFonts.tenorSans(color: Colors.grey.shade400),
                    ),
                    ksizebox(),
                    RoundedLightCustomButton(
                        onpress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      PaymentMethodScreen())));
                        },
                        change: false,
                        text: 'Select Payment Method',
                        icon: Icon(Icons.arrow_drop_down_sharp),
                        left: false,
                        h: 0.06,
                        w: 0.8),
                  ],
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
                              builder: ((context) => CashOutScreen())));
                    },
                    icon: Icon(
                      Icons.card_travel_sharp,
                      color: Colors.white,
                    ),
                    text: "Place Order",
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
