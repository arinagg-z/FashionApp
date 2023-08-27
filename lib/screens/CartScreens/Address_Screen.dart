import 'package:fashionapp/utils/export.dart';

class AddresScreen extends StatelessWidget {
  AddresScreen({super.key});

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
                    padding: const EdgeInsets.only(top: 30),
                    child: TitleText(
                        title: "ADD SHIPPING ADDRESS",
                        fontsize: 23,
                        letterspacing: 2),
                  ),
                  CustomDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        child: TextField(
                          controller: _fcontroller,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "First Name"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                          height: 100,
                          width: 150,
                          child: TextField(
                            controller: _lcontroller,
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: "Last Name"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: TextField(
                      controller: _acontroller,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(), hintText: "Address"),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: TextField(
                      controller: _ccontroller,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(), hintText: "City"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        child: TextField(
                          controller: _scontroller,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "State"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Container(
                          height: 100,
                          width: 150,
                          child: TextField(
                            controller: _zcontroller,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "Zip Code",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: TextField(
                      controller: _pcontroller,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: "Phone Number",
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
                text: "Add Now",
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
