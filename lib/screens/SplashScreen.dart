import 'package:fashionapp/screens/productscreens/Home_Screen.dart';
import 'package:fashionapp/utils/export.dart';
import 'package:fashionapp/widgets/CustomAppBar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomeScreen()))); // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        color: mycolor.appbarcolor,
        iconcolor: true,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Image.asset(
          images.coverscreenimage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
