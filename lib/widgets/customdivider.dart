import '../utils/export.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width / 4, vertical: size.height / 30),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size.width,
            height: size.height * 0.001,
          ),
          Divider(
            color: mycolor.dividercolor,
            thickness: 2,
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 24,
            ),
            child: Transform.rotate(
              angle: -pi / 5,
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: mycolor.dividercolor),
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
