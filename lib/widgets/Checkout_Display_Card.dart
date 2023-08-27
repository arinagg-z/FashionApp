import 'package:fashionapp/utils/export.dart';

class CheckoutDisplayCard extends StatelessWidget {
  const CheckoutDisplayCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      width: size.width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              "assests/images/content/items/product3.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Expanded(
                flex: 2,
                child: FittedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleText(
                          title: "Lamerie", fontsize: 15, letterspacing: 3),
                      Text("Reversible angora cardiagna\n",
                          style: GoogleFonts.tenorSans(
                              fontSize: 12, color: Colors.grey[400])),
                      Container(
                        width: size.width * 0.2,
                        height: size.height * 0.06,
                        child: FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove,
                                    size: 30,
                                  )),
                              Text(
                                "0",
                                style: TextStyle(fontSize: 20),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    size: 30,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      ksizebox(),
                      Text("\$120",
                          style: GoogleFonts.tenorSans(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: mycolor.secondarycolor)),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
