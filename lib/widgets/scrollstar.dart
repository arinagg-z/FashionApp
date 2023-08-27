import '../utils/export.dart';

class scrollstar extends StatelessWidget {
  bool current;

  scrollstar({
    super.key,
    required this.current,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Transform.rotate(
        angle: -pi / 4,
        child: Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
              color: current ? mycolor.dividercolor : Colors.white,
              shape: BoxShape.rectangle,
              border: Border.all(color: mycolor.dividercolor, width: 1)),
        ),
      ),
    );
  }
}
