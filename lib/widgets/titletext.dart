import '../utils/export.dart';

class TitleText extends StatelessWidget {
  final String title;
  final double fontsize;
  final double letterspacing;
  Color? color = Colors.black;

  TitleText(
      {super.key,
      this.color,
      required this.title,
      required this.fontsize,
      required this.letterspacing});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.tenorSans(
          color: color,
          fontSize: fontsize,
          letterSpacing: letterspacing,
          fontWeight: FontWeight.bold),
    );
  }
}
