import 'package:fashionapp/models/productmodel.dart';
import 'package:fashionapp/screens/Product_Display_Screen.dart';
import 'package:fashionapp/screens/Product_Screen.dart';
import 'package:fashionapp/utils/export.dart';

class ModelDisplayCard extends StatelessWidget {
  final productmodel model;
  ModelDisplayCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductScreen(
                      model: model,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Image.asset(
                      model.imageurl,
                      width: size.width * 0.9,
                      height: size.height * 0.5,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TitleText(
                            title: model.title, fontsize: 18, letterspacing: 6),
                        ksizebox(
                          h: 0.01,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "${model.description}\t\t\t\t",
                              style: GoogleFonts.tenorSans(
                                  fontSize: 15, color: Colors.grey[400])),
                        ])),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "\$${model.price}",
                              style: GoogleFonts.tenorSans(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: mycolor.secondarycolor)),
                        ])),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
