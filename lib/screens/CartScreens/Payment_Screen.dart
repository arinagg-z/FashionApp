import 'package:fashionapp/screens/CartScreens/Place_Order_Screen.dart';
import 'package:fashionapp/utils/export.dart';

class PaymentMethodScreen extends StatelessWidget {
  PaymentMethodScreen({super.key});

  @override
  TextEditingController _fcontroller = new TextEditingController();
  TextEditingController _lcontroller = new TextEditingController();
  TextEditingController _acontroller = new TextEditingController();
  TextEditingController _ccontroller = new TextEditingController();
  TextEditingController _scontroller = new TextEditingController();
  TextEditingController _zcontroller = new TextEditingController();
  TextEditingController _pcontroller = new TextEditingController();

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
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 50),
                    child: TitleText(
                        title: "Payment Method",
                        fontsize: 23,
                        letterspacing: 2),
                  ),
                  CustomDivider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 20),
                    child: Stack(
                      children: [
                        Container(
                          width: size.width * 0.8,
                          height: size.height * 0.18,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.black,
                                    Colors.black87,
                                    Colors.black54,
                                  ],
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 15,
                          child: Container(
                            width: size.width * 0.7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Iris Watson",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "2365 3654 2365 3698",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Text(
                                  "03/25",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 0,
                          child: Image.asset(
                              "assests/images/Screenshot 2023-06-28 230457.png"),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 4,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: TextField(
                      controller: _acontroller,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: "Name on Card"),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: TextField(
                      controller: _ccontroller,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: "Card Number"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        child: TextField(
                          controller: _scontroller,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "Exp Month"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Container(
                          height: 50,
                          width: 150,
                          child: TextField(
                            controller: _zcontroller,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "Exp Date",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: TextField(
                      controller: _pcontroller,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: "CVV",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
                h: 0.05,
                w: 1,
                onpress: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.card_travel_sharp),
                text: "Add Card",
                change: true,
                space: false,
                fav: false,
                left: true),
          ],
        ),
      ),
    );
  }
}
