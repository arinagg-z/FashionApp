import 'package:fashionapp/utils/export.dart';

class bookmarkwidget extends StatelessWidget {
  const bookmarkwidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool bookmark = true;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          bookmark = !bookmark;
        },
        child: true
            ? Icon(
                Icons.bookmark_border,
                color: Colors.white60,
              )
            : Icon(
                Icons.bookmark,
                color: Colors.white60,
              ),
      ),
    );
  }
}
