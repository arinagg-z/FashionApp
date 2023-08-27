import 'package:fashionapp/models/productmodel.dart';
import 'package:fashionapp/utils/export.dart';

class OctoberCollectionCard extends StatelessWidget {
  final bool bottom;
  double h;
  final productmodel model;
  final Widget screen;
  OctoberCollectionCard({
    super.key,
    this.h = 0.7,
    required this.bottom,
    required this.model,
    required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Container(
        height: size.height * h,
        width: size.width,
        child: FittedBox(
          child: Column(
            children: [
              Image.asset(model.imageurl),
              bottom
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          model.price,
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Container(
                          width: 140,
                          color: Colors.white,
                          height: 5,
                        ),
                        Text(
                          model.description,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
