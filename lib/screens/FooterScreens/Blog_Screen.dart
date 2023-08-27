import 'package:fashionapp/screens/productscreens/Feed_Screen.dart';

import '../../utils/export.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        color: mycolor.inputbackgroundcolor,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ksizebox(
              h: 0.06,
            ),
            Text(
              " BLOG",
              style: GoogleFonts.tenorSans(
                  fontSize: 23, letterSpacing: 3, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomDivider(),
            ),
            NavTray(),
            Container(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return BlogDisplayCard(model: Utils.BlogScreenModel[index]);
                  }),
            ),
            NavButton(
              onpress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DailyFeed()));
              },
              icon: Icons.add,
              text: " LOAD MORE",
            ),
            ksizebox(
              h: 0.1,
            ),
            Footer(),
          ],
        ),
      )),
    );
  }
}
