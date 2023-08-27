import '../utils/export.dart';
import 'custombutton3.dart';

class CatalogHeaderPanel extends StatelessWidget {
  const CatalogHeaderPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "4500 APPAREL",
          style: GoogleFonts.tenorSans(fontSize: 16),
        ),
        Container(
          // margin: EdgeInsets.symmetric(horizontal: 20),
          width: size.width * 0.45,
          height: size.height * 0.06,
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                RoundedLightCustomButton(
                    icon: Icon(Icons.arrow_drop_down),
                    text: "NEW",
                    h: 0.06,
                    w: 0.2,
                    change: false,
                    left: false),
                RoundedLightCustomButton(
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.line_weight,
                        size: 13,
                      ),
                    ),
                    text: "",
                    h: 0.05,
                    w: 0.09,
                    change: false,
                    left: false),
                RoundedLightCustomButton(
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.business,
                        size: 13,
                      ),
                    ),
                    text: "",
                    h: 0.05,
                    w: 0.09,
                    change: false,
                    left: false),
              ],
            ),
          ),
        )
      ],
    );
  }
}
