import 'package:fashionapp/models/blogpostmodel.dart';
import 'package:fashionapp/utils/export.dart';
import 'package:fashionapp/widgets/bookmarkwidget.dart';
import 'package:fashionapp/widgets/custombutton3.dart';

class BlogDisplayCard extends StatelessWidget {
  final BlogModel model;

  const BlogDisplayCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ArticleScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.3,
                  child: Image.asset(
                    model.imageurl,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black,
                    Colors.black.withOpacity(0.5),
                    Colors.transparent
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      model.title,
                      style: GoogleFonts.tenorSans(
                          fontSize: 12, letterSpacing: 4, color: Colors.white),
                    ),
                  ),
                ),
                Positioned(top: 0, right: 0, child: bookmarkwidget()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RoundedLightCustomButton(
                          change: false,
                          text: "#Fashion",
                          icon: Text(""),
                          left: true,
                          h: 0.04,
                          w: 0.2),
                      RoundedLightCustomButton(
                          change: false,
                          text: "#Tips",
                          icon: Text(""),
                          left: true,
                          h: 0.04,
                          w: 0.2),
                    ],
                  ),
                  Text(
                    "4 Days Ago",
                    style: GoogleFonts.tenorSans(
                        fontSize: 13, color: Colors.grey.shade300),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
