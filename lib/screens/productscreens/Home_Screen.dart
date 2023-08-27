import 'package:fashionapp/screens/CartScreens/Cart_Screen.dart';
import 'package:fashionapp/utils/export.dart';
import 'package:fashionapp/widgets/CustomAppBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        color: mycolor.inputbackgroundcolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ksizebox(
              h: 0.08,
            ),
            dashboard(),
            collections(),
            justforyou(),
            contentdisplay(),
            ksizebox(
              h: 0.1,
            ),
            followus()
          ],
        ),
      ),
    );
  }
}
