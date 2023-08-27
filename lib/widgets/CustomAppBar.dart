import '../utils/export.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Color color;
  bool iconcolor;
  CustomAppBar({required this.color, this.iconcolor = false})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super();

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.color,
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.clear_all_rounded,
            color: widget.iconcolor ? Colors.white : Colors.black,
          )),
      title: Center(
        child: Image.asset(
          images.appbarimage,
          scale: 1.4,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: widget.iconcolor ? Colors.white : Colors.black,
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => CartScreen())));
              },
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: widget.iconcolor ? Colors.white : Colors.black,
              )),
        ),
      ],
    );
  }
}
