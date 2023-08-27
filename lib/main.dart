import 'package:fashionapp/utils/export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fashion App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: mystyle.primaryfont.toString(),
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen());
  }
}
