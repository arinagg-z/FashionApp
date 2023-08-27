import '../utils/export.dart';

class bottomdisplay extends StatelessWidget {
  final String image;
  final String name;

  const bottomdisplay({super.key, required this.image, required this.name});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
        ),
        Container(
          width: size.width * 0.454,
          height: size.height * 0.17,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black,
            Colors.black.withOpacity(0.5),
            Colors.transparent,
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "@+${name}",
              style: GoogleFonts.tenorSans(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
