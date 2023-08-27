import 'package:fashionapp/screens/Model_Fashion_Screen.dart';
import 'package:fashionapp/utils/export.dart';

class FeedDisplayCard extends StatelessWidget {
  final BlogModel model;
  const FeedDisplayCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ModelFashionScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 30, bottom: 15),
        child: Container(
          width: size.width,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  model.imageurl,
                  height: size.height * 0.3,
                  width: size.width * 0.35,
                  fit: BoxFit.fitHeight,
                ),
              ),
              ksizebox(
                w: 0.03,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    ksizebox(
                      h: 0.01,
                    ),
                    Text(
                      model.description,
                      style: TextStyle(
                          fontSize: 12, color: Colors.black, wordSpacing: 2),
                    ),
                    ksizebox(
                      h: 0.01,
                    ),
                    Text(
                      "${model.date} Days Ago",
                      style: TextStyle(fontSize: 8, color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
